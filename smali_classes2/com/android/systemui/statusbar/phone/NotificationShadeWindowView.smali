.class public Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
.super Landroid/widget/FrameLayout;
.source "NotificationShadeWindowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;,
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$ActionModeCallback2Wrapper;,
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;
    }
.end annotation


# instance fields
.field private mBouncerShowing:Z

.field private mFakeWindow:Landroid/view/Window;

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mHeightChangedListener:Ljava/util/function/IntConsumer;

.field private mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

.field private mLeftInset:I

.field private mRightInset:I

.field private mVisibilityChangedListener:Ljava/util/function/IntConsumer;


# direct methods
.method public static synthetic $r8$lambda$Oqh8XwKy2dGTnqy6LvtY4M4HQTY(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->lambda$onWindowVisibilityChanged$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    .line 80
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    .line 491
    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$2;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFakeWindow:Landroid/view/Window;

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Landroid/view/ActionMode;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method private applyMargins()V
    .locals 7

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 145
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    .line 146
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    .line 147
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mBouncerShowing:Z

    if-eqz v3, :cond_0

    move v1, v4

    move v2, v1

    :cond_0
    :goto_0
    if-ge v4, v0, :cond_3

    .line 152
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;

    if-eqz v5, :cond_2

    .line 154
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;

    .line 155
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;->ignoreRightInset:Z

    if-nez v6, :cond_2

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-ne v6, v2, :cond_1

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v6, v1, :cond_2

    .line 157
    :cond_1
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 158
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 159
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 332
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 335
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1

    .line 336
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 337
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 338
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 340
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->cleanupFloatingActionModeViews()V

    .line 307
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFakeWindow:Landroid/view/Window;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 308
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    .line 310
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 311
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private synthetic lambda$onWindowVisibilityChanged$0()V
    .locals 2

    .line 375
    const-class v0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->isConfigurationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->resetConfigurationChanged()V

    .line 377
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->getCurrentConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "NotificationShadeWindowView"

    const-string v0, "dispatchConfigurationChanged to root view"

    .line 378
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 324
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 325
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 326
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 346
    new-instance p3, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$ActionModeCallback2Wrapper;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/view/ActionMode$Callback;)V

    .line 347
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 349
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 195
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->handleDispatchTouchEvent(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->dispatchTouchEventComplete()V

    .line 219
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 180
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 175
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    .line 105
    sget v0, Lcom/android/systemui/R$id;->notification_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 110
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 112
    iget v1, v0, Landroid/graphics/Insets;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 117
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_4

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_4

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    if-nez v1, :cond_4

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 125
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 129
    :cond_5
    :goto_2
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    .line 130
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    .line 131
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 133
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    .line 134
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    .line 136
    :cond_6
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mLeftInset:I

    .line 137
    iget v0, v0, Landroid/graphics/Insets;->right:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mRightInset:I

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->applyMargins()V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 185
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 186
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationShadeWindowView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 734
    const-class p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->resetConfigurationChanged()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 264
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 224
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    .line 225
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isSimDisabledPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    .line 226
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->isTouchableArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 235
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->didIntercept(Landroid/view/MotionEvent;)V

    :cond_2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 388
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mHeightChangedListener:Ljava/util/function/IntConsumer;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 391
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p1, p2

    const/4 p2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p1, p2

    const-string p2, "KeyguardVisibleMonitor"

    const-string/jumbo p4, "onLayout %d %d %d %d"

    invoke-static {p2, p4, p1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mHeightChangedListener:Ljava/util/function/IntConsumer;

    sub-int/2addr p5, p3

    invoke-interface {p0, p5}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 243
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    .line 244
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isSimDisabledPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    .line 245
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->isTouchableArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 256
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;->didNotHandleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 359
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 360
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFocusForInDisplayFingerprint(Z)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 367
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 373
    const-class p1, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->getCurrentConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 374
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mBouncerShowing:Z

    if-eq v0, p1, :cond_0

    .line 168
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mBouncerShowing:Z

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->applyMargins()V

    :cond_0
    return-void
.end method

.method public setHeightChangedListener(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mHeightChangedListener:Ljava/util/function/IntConsumer;

    return-void
.end method

.method protected setInteractionEventHandler(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;

    return-void
.end method

.method public setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 1

    .line 739
    sget v0, Lcom/android/systemui/R$id;->notification_panel_blur_screenshot:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setBlurView(Landroid/view/View;)V

    return-void
.end method

.method public setVisibilityChangedListener(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    .line 298
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
