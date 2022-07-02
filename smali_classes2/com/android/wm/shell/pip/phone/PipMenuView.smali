.class public Lcom/android/wm/shell/pip/phone/PipMenuView;
.super Landroid/widget/FrameLayout;
.source "PipMenuView.java"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActionsGroup:Landroid/widget/LinearLayout;

.field private mAllowMenuTimeout:Z

.field private mAllowTouches:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBetweenActionPaddingLand:I

.field private mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field private mDidLastShowMenuResize:Z

.field protected mDismissButton:Landroid/view/View;

.field private mDismissFadeOutDurationMs:I

.field private mExpandButton:Landroid/view/View;

.field private final mHideMenuRunnable:Ljava/lang/Runnable;

.field mIsExpanding:Z

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mMainHandler:Landroid/os/Handler;

.field private mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mMenuContainer:Landroid/view/View;

.field private mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field private mMenuState:I

.field protected mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

.field protected mResizeHandle:Landroid/view/View;

.field protected mSettingsButton:Landroid/view/View;

.field protected mTopEndContainer:Landroid/view/View;

.field protected mViewRoot:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$5yvEMiMSrTAjVmPfTTO_YZ7Ep60(Lcom/android/wm/shell/pip/phone/PipMenuActionView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$updateActionViews$6(Lcom/android/wm/shell/pip/phone/PipMenuActionView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QT_TRWQ_WmSLcQag4NpFqArZ6Gw(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$updateActionViews$7(Landroid/app/RemoteAction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TVGiqqzKEZGnpVVCecTNWyek8VQ(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIdnozLD4vi0K38Zv_I0w2iOV1U(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZxqhoWYuErw7GDyfTQ7fpYp-LKk(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eAJyGHshdj_yjIr-y0ffYR6kYCM(Lcom/android/wm/shell/pip/phone/PipMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$showMenu$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$oAakdKD2xYwybzBmjwvTwpl5TrA(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->lambda$updateActionViews$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 128
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$1;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 140
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mIsExpanding:Z

    .line 148
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Ljava/lang/Runnable;

    .line 163
    iput-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 165
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 166
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    .line 168
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 169
    sget p2, Lcom/android/wm/shell/R$layout;->pip_menu:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 172
    sget-boolean p2, Lcom/android/wm/shell/CoreShellRune;->MW_PIP_DISABLE_ROUND_CORNER:Z

    if-eqz p2, :cond_0

    .line 173
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$drawable;->pip_menu_background_no_corner:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 176
    :cond_0
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$drawable;->pip_menu_background:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 179
    sget p2, Lcom/android/wm/shell/R$id;->background:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mViewRoot:Landroid/view/View;

    .line 180
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget p2, Lcom/android/wm/shell/R$id;->menu_container:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    const/4 p3, 0x0

    .line 182
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 183
    sget p2, Lcom/android/wm/shell/R$id;->top_end_container:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mTopEndContainer:Landroid/view/View;

    .line 184
    sget p2, Lcom/android/wm/shell/R$id;->settings:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    .line 185
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 186
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    new-instance p4, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget p2, Lcom/android/wm/shell/R$id;->dismiss:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    .line 192
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 193
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    new-instance p4, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget p2, Lcom/android/wm/shell/R$id;->expand:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    .line 197
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 198
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    new-instance p4, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    sget p2, Lcom/android/wm/shell/R$id;->resize_handle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    .line 213
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 214
    sget p2, Lcom/android/wm/shell/R$id;->actions_group:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$dimen;->pip_between_action_padding_land:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBetweenActionPaddingLand:I

    .line 217
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p2}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    .line 218
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mViewRoot:Landroid/view/View;

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mTopEndContainer:Landroid/view/View;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->bindViews(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$integer;->config_pipExitAnimationDuration:I

    .line 221
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissFadeOutDurationMs:I

    .line 223
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->initAccessibility()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/pip/phone/PipMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/pip/phone/PipMenuView;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/pip/phone/PipMenuView;)Lcom/android/wm/shell/pip/phone/PhonePipMenuController;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/wm/shell/pip/phone/PipMenuView;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeFinish(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    return-void
.end method

.method private cancelDelayedHide()V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissPip()V
    .locals 1

    .line 618
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    if-eqz v0, :cond_0

    .line 622
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->onPipDismiss()V

    :cond_0
    return-void
.end method

.method private expandPip()V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZI)V

    .line 612
    iput-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mIsExpanding:Z

    return-void
.end method

.method private initAccessibility()V
    .locals 1

    .line 227
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$2;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->showSettings()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dismissPip()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->expandPip()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMenu$4()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x1e

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 370
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static synthetic lambda$updateActionViews$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateActionViews$6(Lcom/android/wm/shell/pip/phone/PipMenuActionView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 556
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuActionView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateActionViews$7(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 1

    .line 564
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PipMenuView"

    const-string v0, "Failed to send action"

    .line 566
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifyMenuStateChangeFinish(I)V
    .locals 0

    .line 601
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    .line 602
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->onMenuStateChangeFinish(I)V

    return-void
.end method

.method private notifyMenuStateChangeStart(IZLjava/lang/Runnable;)V
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->onMenuStateChangeStart(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private repostDelayedHide(I)V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    .line 644
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 645
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private showSettings()V
    .locals 5

    .line 627
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 628
    invoke-static {v0}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 629
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 630
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 631
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "package"

    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v2, 0x10008000

    .line 632
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 633
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private updateActionViews(ILandroid/graphics/Rect;)V
    .locals 8

    .line 506
    sget v0, Lcom/android/wm/shell/R$id;->expand_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 507
    sget v1, Lcom/android/wm/shell/R$id;->actions_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 508
    sget-object v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 514
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 519
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 520
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    if-eq p1, v5, :cond_9

    if-nez p1, :cond_1

    goto/16 :goto_8

    .line 528
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 529
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_a

    .line 531
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 532
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 533
    sget v1, Lcom/android/wm/shell/R$layout;->pip_menu_action:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/phone/PipMenuActionView;

    .line 535
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move p1, v3

    .line 539
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 540
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 547
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-le p1, p2, :cond_5

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    move p1, v3

    .line 548
    :goto_5
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 549
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/RemoteAction;

    .line 550
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 551
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/phone/PipMenuActionView;

    .line 554
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuActionView;)V

    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 560
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {p2}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 562
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;-><init>(Landroid/app/RemoteAction;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    :cond_6
    invoke-virtual {p2}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 571
    invoke-virtual {p2}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    const p2, 0x3f0a3d71    # 0.54f

    :goto_6
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 575
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_8

    if-lez p1, :cond_8

    .line 576
    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBetweenActionPaddingLand:I

    goto :goto_7

    :cond_8
    move v1, v3

    :goto_7
    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 521
    :cond_9
    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 525
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 526
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 593
    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    .line 285
    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    .line 288
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 261
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 268
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu()V

    const/4 p0, 0x1

    return p0

    .line 275
    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x7d0

    .line 276
    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    .line 279
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method fadeOutMenu()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 394
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 395
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 396
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 399
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method getEstimatedMinMenuSize()Landroid/util/Size;
    .locals 4

    .line 483
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->pip_action_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 486
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, v0

    .line 489
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$dimen;->pip_min_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 486
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 491
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->pip_expand_action_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 492
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$dimen;->pip_action_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 493
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/wm/shell/R$dimen;->pip_expand_container_edge_margin:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v1, p0

    .line 494
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method getFadeOutDuration(I)J
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 658
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissFadeOutDurationMs:I

    int-to-long p0, p0

    return-wide p0

    .line 660
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid animation type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 p0, 0x7d

    return-wide p0

    :cond_2
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method hideMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;)V

    return-void
.end method

.method hideMenu(Ljava/lang/Runnable;)V
    .locals 2

    .line 417
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDidLastShowMenuResize:Z

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZI)V

    return-void
.end method

.method hideMenu(Ljava/lang/Runnable;ZZI)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 428
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    if-eqz v3, :cond_1

    .line 429
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->cancelDelayedHide()V

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    .line 431
    invoke-direct {p0, v3, v2, v4}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeStart(IZLjava/lang/Runnable;)V

    .line 433
    :cond_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 434
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    .line 435
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 434
    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 436
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 437
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v6, [F

    .line 438
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v11

    aput v11, v10, v3

    aput v9, v10, v8

    .line 437
    invoke-static {v5, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 439
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v6, [F

    .line 440
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v11, v3

    aput v9, v11, v8

    .line 439
    invoke-static {v7, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 441
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v6, [F

    .line 442
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v3

    aput v9, v12, v8

    .line 441
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 445
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hideMenu() MenuState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " notifyMenuVisibility="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " resize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 448
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PipMenuView"

    .line 445
    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v6, [F

    .line 453
    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v3

    aput v9, v13, v8

    .line 452
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 454
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v4, v2, v3

    aput-object v5, v2, v8

    aput-object v9, v2, v6

    const/4 v3, 0x3

    aput-object v7, v2, v3

    const/4 v3, 0x4

    aput-object v10, v2, v3

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 460
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    move/from16 v3, p4

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/phone/PipMenuView;->getFadeOutDuration(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 462
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipMenuView$4;

    move-object/from16 v4, p1

    invoke-direct {v3, p0, v1, v4}, Lcom/android/wm/shell/pip/phone/PipMenuView$4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 474
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method hideMenu(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 422
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZI)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu()V

    const/4 p0, 0x1

    return p0

    .line 251
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method pokeMenu()V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->cancelDelayedHide()V

    return-void
.end method

.method setActions(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 499
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 500
    iget p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 501
    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateActionViews(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method showMenu(ILandroid/graphics/Rect;ZZZZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 293
    iput-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    .line 294
    iput-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDidLastShowMenuResize:Z

    .line 295
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    if-eq v4, v1, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v3, :cond_1

    if-eq v4, v7, :cond_0

    if-ne v1, v7, :cond_1

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    xor-int/2addr v4, v6

    .line 300
    iput-boolean v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->cancelDelayedHide()V

    .line 302
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    .line 303
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 305
    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 306
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v7, [F

    .line 307
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v10

    aput v10, v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v6

    .line 306
    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 308
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 309
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v7, [F

    .line 310
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v11, v5

    aput v10, v11, v6

    .line 309
    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 311
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v7, [F

    .line 312
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v5

    aput v10, v12, v6

    .line 311
    invoke-static {v9, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 313
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mResizeHandle:Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v7, [F

    .line 314
    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v5

    const/4 v14, 0x0

    aput v14, v13, v6

    .line 313
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const/4 v13, 0x3

    if-ne v1, v7, :cond_3

    .line 320
    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v7, [F

    .line 321
    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v16

    aput v16, v12, v5

    aput v10, v12, v6

    .line 320
    invoke-static {v14, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 322
    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v14, 0x5

    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v4, v14, v5

    aput-object v8, v14, v6

    aput-object v10, v14, v7

    aput-object v9, v14, v13

    const/4 v4, 0x4

    aput-object v11, v14, v4

    invoke-virtual {v12, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_3
    if-ne v1, v6, :cond_4

    .line 333
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v7, [F

    .line 334
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v15

    aput v15, v14, v5

    aput v10, v14, v6

    .line 333
    invoke-static {v4, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 335
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v12, 0x4

    new-array v12, v12, [Landroid/animation/Animator;

    aput-object v8, v12, v5

    aput-object v4, v12, v6

    aput-object v9, v12, v7

    aput-object v11, v12, v13

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 338
    :cond_4
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v10, v13, [Landroid/animation/Animator;

    aput-object v8, v10, v5

    aput-object v9, v10, v6

    aput-object v11, v10, v7

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 345
    :goto_1
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 346
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x7d

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 347
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/wm/shell/pip/phone/PipMenuView$3;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView$3;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;IZ)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p5, :cond_5

    .line 364
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-direct {v0, v1, v3, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeStart(IZLjava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 373
    invoke-direct {v0, v1, v3, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeStart(IZLjava/lang/Runnable;)V

    .line 374
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 375
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 377
    :goto_2
    invoke-direct/range {p0 .. p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateActionViews(ILandroid/graphics/Rect;)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    const/16 v1, 0x7d0

    .line 382
    invoke-direct {v0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method updateMenuLayout(Landroid/graphics/Rect;)V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->onBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method
