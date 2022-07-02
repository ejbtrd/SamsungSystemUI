.class public Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;
.super Landroid/widget/FrameLayout;
.source "AccessibilityFloatingMenuView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$OnDragEndListener;
    }
.end annotation


# instance fields
.field private final ACTION_ACCESSIBILITY_FLOATING_SHOW:Ljava/lang/String;

.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mAccessibilityFloatingReceiver:Landroid/content/BroadcastReceiver;

.field private final mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

.field public mAlignment:I

.field final mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDownX:I

.field private mDownY:I

.field final mDragAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mFadeOutValue:F

.field private mHandleFirstPositionY:I

.field private mHasNavigationBarGesture:Z

.field private mHideHandleHeight:I

.field mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mHideHandleWidth:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mImeVisibility:Z

.field private mInset:I

.field private mIsDownInEnlargedTouchArea:Z

.field private mIsDragging:Z

.field private mIsFadeEffectEnabled:Z

.field private mIsHideHandle:Z

.field private mIsRepeatVibrations:Z

.field private mIsShowing:Z

.field private mIsSwipeForHandle:Z

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private final mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMargin:I

.field private mNavigationBarHeight:I

.field private mOnDragEndListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$OnDragEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPadding:I

.field private final mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

.field private mRadius:F

.field private mRadiusType:I

.field private mRelativeToPointerDownX:I

.field private mRelativeToPointerDownY:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field mShapeType:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSizeType:I

.field private mSquareScaledTouchSlop:F

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mTemporaryShapeType:I

.field private final mUiHandler:Landroid/os/Handler;

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$4g-6BrRp1igrtsygj13wtIg2d1M(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$snapToLocation$5(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9PMrfZKCe1NwpL_Ydg1je4jmS9Q(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B43oUCI3YZtrOMe-UwYzkG0Xpwo(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$show$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LBlSuzMtvTxjYf98YMGNhDwsxfo(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$setSystemGestureExclusion$6(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_D7W9fuJHsES3b4DpXGYn11d5KQ(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$fadeOut$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$hlHMbmdr0GIrfeQ0H6KMI0Tdmno(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$setShapeType$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vq2JT0LUovBbtPTOc3KKDRFrhmw(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->lambda$fadeIn$3()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/Position;)V
    .locals 1

    .line 230
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/Position;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/Position;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 236
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    .line 120
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    .line 122
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    .line 143
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    .line 170
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHasNavigationBarGesture:Z

    .line 171
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsRepeatVibrations:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsSwipeForHandle:Z

    .line 174
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHandleFirstPositionY:I

    .line 175
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    .line 176
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    .line 177
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mNavigationBarHeight:I

    .line 1318
    new-instance v2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    iput-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    const-string v2, "com.android.systemui.accessibility.floatingmenu.SHOW"

    .line 1390
    iput-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->ACTION_ACCESSIBILITY_FLOATING_SHOW:Ljava/lang/String;

    .line 1391
    new-instance v2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    iput-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityFloatingReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    const-class p3, Landroid/view/WindowManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    .line 240
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 241
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-direct {p1, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->createUiHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    .line 243
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    .line 244
    invoke-virtual {p2}, Lcom/android/systemui/accessibility/floatingmenu/Position;->getPercentageX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformToAlignment(F)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    const/4 p2, 0x1

    const/4 p3, 0x2

    if-ne p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 247
    :goto_0
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateDimensions()V

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->createDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-array p1, p3, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    .line 253
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    .line 254
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    new-instance p2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p3, [F

    .line 258
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x96

    .line 259
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 260
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    new-instance p2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->initListView()V

    .line 294
    const-class p1, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)F
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformCurrentPercentageXToEdge()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)F
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateCurrentPercentageY()F

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;III)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)Ljava/util/Optional;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;ZI)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->showFloatingButton(ZI)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)Landroid/view/WindowManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)Lcom/android/systemui/accessibility/floatingmenu/Position;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;F)I
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformToAlignment(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Lcom/android/systemui/accessibility/floatingmenu/Position;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;II)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateInsetWith(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;I)I
    .locals 0

    .line 97
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)Ljava/util/List;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method private calculateActualLayoutHeight()I
    .locals 2

    .line 1060
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method private calculateCurrentPercentageX()F
    .locals 1

    .line 1033
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result p0

    goto :goto_0
.end method

.method private calculateCurrentPercentageY()F
    .locals 1

    .line 1047
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowYForHandle()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result p0

    goto :goto_0
.end method

.method private createDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 800
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const/16 v4, 0x208

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x1

    .line 807
    iput-boolean v0, v6, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    const v1, 0x1030003

    .line 808
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const v1, 0x800033

    .line 809
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 810
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result v0

    :goto_0
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 812
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/Position;->getPercentageY()F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 813
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getInterval()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 814
    invoke-direct {p0, v6}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateAccessibilityTitle(Landroid/view/WindowManager$LayoutParams;)V

    return-object v6
.end method

.method private createHideHandleLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1161
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const/16 v4, 0x208

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x1030003

    .line 1168
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const v0, 0x800033

    .line 1169
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1170
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1171
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowXForHandle()I

    move-result v0

    :goto_0
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1172
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1173
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHandleFirstPositionY:I

    return-object v6
.end method

.method private createRadii(FI)[F
    .locals 9

    const/4 p0, 0x7

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez p2, :cond_0

    new-array p2, v6, [F

    aput p1, p2, v5

    aput p1, p2, v4

    aput v8, p2, v7

    aput v8, p2, v3

    aput v8, p2, v2

    aput v8, p2, v1

    aput p1, p2, v0

    aput p1, p2, p0

    return-object p2

    :cond_0
    if-ne p2, v7, :cond_1

    new-array p2, v6, [F

    aput v8, p2, v5

    aput v8, p2, v4

    aput p1, p2, v7

    aput p1, p2, v3

    aput p1, p2, v2

    aput p1, p2, v1

    aput v8, p2, v0

    aput v8, p2, p0

    return-object p2

    :cond_1
    new-array p2, v6, [F

    aput p1, p2, v5

    aput p1, p2, v4

    aput p1, p2, v7

    aput p1, p2, v3

    aput p1, p2, v2

    aput p1, p2, v1

    aput p1, p2, v0

    aput p1, p2, p0

    return-object p2
.end method

.method private createUiHandler()Landroid/os/Handler;
    .locals 2

    .line 701
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "looper must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method private getIconGradientDrawable()Landroid/graphics/drawable/LayerDrawable;
    .locals 1

    .line 1417
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuLayerDrawable()Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    return-object p0
.end method

.method private getInterval()I
    .locals 4

    .line 920
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mImeVisibility:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 926
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    or-int/2addr v2, v3

    .line 925
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 927
    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v2, v0

    .line 928
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    add-int/2addr v0, p0

    if-le v0, v2, :cond_1

    sub-int v1, v0, v2

    :cond_1
    return v1
.end method

.method private getLargeSizeResIdWith(I)I
    .locals 0

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    .line 1090
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_large_multiple_radius:I

    goto :goto_0

    .line 1091
    :cond_0
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_large_single_radius:I

    :goto_0
    return p0
.end method

.method private getLayoutHeight()I
    .locals 1

    .line 1108
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxLayoutHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateActualLayoutHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getLayoutWidth()I
    .locals 1

    .line 1104
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconWidth:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getMarginStartEndWith(Landroid/content/res/Configuration;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1068
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1069
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getMaxLayoutHeight()I
    .locals 1

    .line 1100
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method private getMaxWindowX()I
    .locals 2

    .line 888
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getMaxWindowXForHandle()I
    .locals 2

    .line 1201
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->offsetForLeftNaviBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mNavigationBarHeight:I

    add-int/2addr v0, p0

    return v0

    .line 1204
    :cond_0
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result v1

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getMaxWindowY()I
    .locals 1

    .line 892
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getMaxWindowYForHandle()I
    .locals 1

    .line 1209
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getMediumSizeResIdWith(I)I
    .locals 0

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    .line 1294
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_medium_multiple_radius:I

    goto :goto_0

    .line 1295
    :cond_0
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_medium_single_radius:I

    :goto_0
    return p0
.end method

.method private getMenuGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 900
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuLayerDrawable()Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private getMenuLayerDrawable()Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;
    .locals 0

    .line 896
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    return-object p0
.end method

.method private getMinWindowX()I
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method private getMinWindowXForHandle()I
    .locals 1

    .line 1193
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->offsetForLeftNaviBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mNavigationBarHeight:I

    return p0

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method private getNavigationBarHeight()I
    .locals 2

    .line 1213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1050209

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getRadiusResId(II)I
    .locals 1

    if-nez p1, :cond_0

    .line 1074
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getSmallSizeResIdWith(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 1077
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMediumSizeResIdWith(I)I

    move-result p0

    goto :goto_0

    .line 1078
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLargeSizeResIdWith(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getSizeType()I
    .locals 2

    .line 1305
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_floating_menu_size"

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getSmallSizeResIdWith(I)I
    .locals 0

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    .line 1084
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_small_multiple_radius:I

    goto :goto_0

    .line 1085
    :cond_0
    sget p0, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_small_single_radius:I

    :goto_0
    return p0
.end method

.method private getWindowHeight()I
    .locals 2

    .line 1116
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutHeight()I

    move-result p0

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getWindowWidth()I
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private hasExceededTouchSlop(IIII)Z
    .locals 0

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 681
    invoke-static {p1}, Landroid/util/MathUtils;->sq(F)F

    move-result p1

    sub-int/2addr p4, p2

    int-to-float p2, p4

    invoke-static {p2}, Landroid/util/MathUtils;->sq(F)F

    move-result p2

    add-float/2addr p1, p2

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSquareScaledTouchSlop:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasNavigationBarGesture()Z
    .locals 2

    .line 1299
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_bar_gesture_while_hidden"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private initListView()V
    .locals 6

    .line 755
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->accessibility_floating_menu_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 756
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 757
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 762
    invoke-direct {p0, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setFloatingIconType(I)V

    .line 763
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 764
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 767
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    new-instance v2, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v3

    invoke-direct {v2, v4}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 770
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 772
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 773
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 774
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 775
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 788
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isEdgeArea()Z
    .locals 5

    .line 1256
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_edge_area:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1257
    iget-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1258
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v0, :cond_0

    .line 1259
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v4

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    add-int/2addr v4, p0

    sub-int/2addr v4, v0

    if-lt v1, v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .line 1261
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v0, :cond_3

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    .line 1262
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p0

    sub-int/2addr v4, p0

    sub-int/2addr v4, v0

    if-lt v1, v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2
.end method

.method private isMovingTowardsScreenEdge(III)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    if-gt p2, p3, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-le p3, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private isSwipeForHide(II)Z
    .locals 4

    .line 1223
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v0

    .line 1224
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10504bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1227
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    .line 1229
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->offsetForLeftNaviBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mNavigationBarHeight:I

    add-int/2addr v0, v1

    .line 1233
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    const/4 v2, 0x0

    if-le v1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v0

    if-ge v1, v0, :cond_2

    return v2

    .line 1237
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isValidSwipeX(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isValidSwipeY(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1238
    iput-boolean v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsSwipeForHandle:Z

    return v3

    :cond_3
    return v2
.end method

.method private isValidSwipeX(I)Z
    .locals 4

    .line 1245
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1246
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    sub-int v3, p1, v3

    if-gt v3, v0, :cond_2

    :cond_0
    if-nez v1, :cond_1

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    sub-int/2addr p0, p1

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private isValidSwipeY(I)Z
    .locals 1

    .line 1251
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1252
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$fadeIn$3()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 619
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$fadeOut$4()V
    .locals 0

    .line 628
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 256
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$setShapeType$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 555
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onTouched(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setSystemGestureExclusion$6(Landroid/graphics/Rect;)V
    .locals 1

    .line 1123
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 1124
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1125
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 1122
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$show$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 471
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onWindowInsetsApplied(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$snapToLocation$5(IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 853
    invoke-direct {p0, p3, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onDragAnimationUpdate(Landroid/animation/ValueAnimator;II)V

    return-void
.end method

.method private offsetForLeftNaviBar()Z
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1422
    iget-boolean p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHasNavigationBarGesture:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onDragAnimationUpdate(Landroid/animation/ValueAnimator;II)V
    .locals 4

    .line 858
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 859
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    float-to-int v2, v2

    .line 860
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float p3, p3

    mul-float/2addr p1, p3

    add-float/2addr v3, p1

    float-to-int p3, v3

    .line 864
    iget-boolean v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v3, :cond_0

    .line 865
    iget-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, p2

    float-to-int p2, v1

    .line 866
    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 867
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 868
    iput p1, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 869
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 871
    :cond_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 872
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 873
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private onTouched(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 636
    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result v3

    .line 637
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    .line 638
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget v7, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    .line 639
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 642
    iput-boolean v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDownInEnlargedTouchArea:Z

    .line 645
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDownInEnlargedTouchArea:Z

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 651
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDownInEnlargedTouchArea:Z

    .line 655
    :cond_3
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 656
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private onWindowInsetsApplied(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 660
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    .line 661
    iget-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mImeVisibility:Z

    if-eq v0, v1, :cond_0

    .line 662
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mImeVisibility:Z

    .line 664
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    :cond_0
    return-object p1
.end method

.method private registerAccessibilityFloatingReceiver()V
    .locals 2

    .line 1407
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.accessibility.floatingmenu.SHOW"

    .line 1408
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityFloatingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setFloatingIconType(I)V
    .locals 1

    .line 1314
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_floating_menu_icon_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setInset(II)V
    .locals 6

    .line 1006
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuLayerDrawable()Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    move-result-object v0

    const/4 p0, 0x0

    .line 1007
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1008
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v4, p2

    .line 1012
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-void
.end method

.method private setRadius(FI)V
    .locals 1

    .line 685
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->createRadii(FI)[F

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method

.method private setSystemGestureExclusion()V
    .locals 4

    .line 1120
    new-instance v0, Landroid/graphics/Rect;

    .line 1121
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1122
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showFloatingButton(ZI)V
    .locals 3

    const/4 v0, 0x0

    .line 1267
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1269
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->initListView()V

    .line 1270
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getSizeType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSizeType(I)V

    if-eqz p1, :cond_0

    .line 1272
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    .line 1274
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result v0

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1276
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1277
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_2
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1278
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1279
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(III)V

    .line 1280
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateAccessibilityTitle(Landroid/view/WindowManager$LayoutParams;)V

    .line 1281
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isEdgeArea()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1282
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result p1

    .line 1283
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result p2

    .line 1284
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_3

    move p1, p2

    .line 1286
    :cond_3
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1287
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    .line 1289
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->accessibility_floating_button_expanded:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private transformCurrentPercentageXToEdge()F
    .locals 4

    .line 1026
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateCurrentPercentageX()F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private transformToAlignment(F)I
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private unregisterAccessibilityFloatingReceiver()V
    .locals 1

    .line 1413
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityFloatingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateAccessibilityTitle(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 997
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_floating_button:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method private updateColor()V
    .locals 3

    .line 955
    sget v0, Lcom/android/systemui/R$color;->accessibility_floating_menu_background:I

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMenuGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 957
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->accessibility_floating_menu_hide_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 959
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getIconGradientDrawable()Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private updateDimensions()V
    .locals 3

    .line 705
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 707
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    .line 708
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    .line 709
    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_margin:I

    .line 710
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    .line 711
    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_stroke_inset:I

    .line 712
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mInset:I

    .line 715
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->sq(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSquareScaledTouchSlop:F

    .line 717
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateItemViewDimensionsWith(I)V

    .line 720
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getNavigationBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mNavigationBarHeight:I

    .line 721
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasNavigationBarGesture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHasNavigationBarGesture:Z

    return-void
.end method

.method private updateInsetWith(II)V
    .locals 3

    and-int/lit8 p1, p1, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 989
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mInset:I

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p2, :cond_2

    move v2, p1

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-ne p2, v0, :cond_3

    move v1, p1

    .line 992
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setInset(II)V

    return-void
.end method

.method private updateItemViewDimensionsWith(I)V
    .locals 2

    .line 726
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_0

    .line 729
    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_small_padding:I

    goto :goto_0

    .line 730
    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_large_padding:I

    .line 731
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    if-nez p1, :cond_1

    .line 735
    sget p1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_small_width_height:I

    goto :goto_1

    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    .line 738
    sget p1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_medium_width_height:I

    goto :goto_1

    .line 739
    :cond_2
    sget p1, Lcom/android/systemui/R$dimen;->accessibility_floating_menu_large_width_height:I

    .line 741
    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconWidth:I

    .line 742
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    return-void
.end method

.method private updateItemViewWith(I)V
    .locals 1

    .line 746
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateItemViewDimensionsWith(I)V

    .line 748
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->setItemPadding(I)V

    .line 749
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconWidth:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->setIconWidthHeight(I)V

    .line 750
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V
    .locals 3

    .line 907
    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/Position;->getPercentageX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformToAlignment(F)I

    move-result v0

    .line 908
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 909
    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/Position;->getPercentageY()F

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 910
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getInterval()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 911
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRadiusWith(III)V
    .locals 1

    .line 980
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getRadiusResId(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadius:F

    .line 981
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setRadius(FI)V

    return-void
.end method

.method private updateScrollModeWith(Z)V
    .locals 0

    .line 949
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method fadeIn()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 613
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method fadeOut()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 624
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method getAvailableBounds()Landroid/graphics/Rect;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1096
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    sub-int/2addr v2, p0

    const/4 p0, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method getAvailableBoundsForHandle()Landroid/graphics/Rect;
    .locals 4

    .line 1383
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1384
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    sub-int/2addr v3, p0

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 1386
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenWidth:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mScreenHeight:I

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    sub-int/2addr v3, p0

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method getWindowLocationOnScreen()Landroid/graphics/Rect;
    .locals 4

    .line 590
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 591
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 592
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v2, v1, v0, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method hasExceededMaxLayoutHeight()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1017
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateActualLayoutHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxLayoutHeight()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hide()V
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 483
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    .line 484
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    .line 489
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->unregisterAccessibilityFloatingReceiver()V

    return-void
.end method

.method isOvalShape()Z
    .locals 0

    .line 498
    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isShowing()Z
    .locals 0

    .line 494
    iget-boolean p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 820
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 821
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 825
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateAccessibilityTitle(Landroid/view/WindowManager$LayoutParams;)V

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateDimensions()V

    .line 832
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateItemViewWith(I)V

    .line 833
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateColor()V

    .line 835
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz p1, :cond_1

    .line 836
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandleLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    goto :goto_0

    .line 838
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    .line 844
    :goto_0
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(III)V

    .line 845
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededMaxLayoutHeight()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateScrollModeWith(Z)V

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    return-void
.end method

.method onEnabledFeaturesChanged()V
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 306
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_e

    const/4 v3, 0x2

    if-eq p2, v2, :cond_4

    if-eq p2, v3, :cond_0

    const/4 v4, 0x3

    if-eq p2, v4, :cond_4

    goto/16 :goto_3

    .line 338
    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    .line 339
    invoke-direct {p0, p2, v3, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededTouchSlop(IIII)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 340
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-nez p2, :cond_2

    .line 341
    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    .line 342
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadius:F

    invoke-direct {p0, p2, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setRadius(FI)V

    .line 343
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setInset(II)V

    .line 347
    :cond_2
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    invoke-direct {p0, p2, p1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isMovingTowardsScreenEdge(III)Z

    move-result p2

    .line 349
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTemporaryShapeType:I

    .line 350
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownX:I

    add-int/2addr p1, p2

    .line 351
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownY:I

    add-int/2addr v0, p2

    .line 354
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz p2, :cond_3

    .line 355
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowXForHandle()I

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v3

    invoke-static {p1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 357
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowYForHandle()I

    move-result p2

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 358
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 360
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v3

    invoke-static {p1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 362
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result p2

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 363
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 378
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsRepeatVibrations:Z

    .line 379
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz p2, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-nez v4, :cond_5

    .line 380
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->showFloatingButton(ZI)V

    goto :goto_1

    .line 382
    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-eqz v4, :cond_c

    .line 383
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-eqz p2, :cond_8

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isEdgeArea()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowXForHandle()I

    move-result p2

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v1

    .line 388
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v6, p2, v1

    div-int/2addr v6, v3

    if-le v5, v6, :cond_6

    move p2, v1

    .line 390
    :cond_6
    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 391
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    goto :goto_0

    .line 393
    :cond_7
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->showFloatingButton(ZI)V

    goto :goto_0

    .line 396
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isEdgeArea()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 397
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result p2

    .line 398
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v1

    .line 399
    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v6, p2, v1

    div-int/2addr v6, v3

    if-le v5, v6, :cond_9

    move p2, v1

    .line 401
    :cond_9
    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 402
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    .line 406
    :cond_a
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isSwipeForHide(II)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 407
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandle(I)V

    .line 411
    :cond_b
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTemporaryShapeType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    return v2

    .line 438
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isOvalShape()Z

    move-result p1

    if-nez p1, :cond_d

    .line 439
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    return v2

    .line 444
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    goto :goto_3

    .line 308
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 310
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    .line 311
    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    .line 314
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "AccessibilityFloatingMenuArea"

    invoke-static {p1, p2, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 315
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz p1, :cond_10

    .line 316
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownX:I

    .line 317
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownY:I

    .line 318
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsRepeatVibrations:Z

    if-nez p1, :cond_11

    .line 319
    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsRepeatVibrations:Z

    .line 320
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/VibratorHelper;->isSupportDCMotorHapticFeedback()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 321
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrateButton()V

    goto :goto_2

    .line 323
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_2

    .line 327
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownX:I

    .line 328
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownY:I

    .line 335
    :cond_11
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_12
    :goto_3
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method onTargetsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)V"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onEnabledFeaturesChanged()V

    .line 508
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(III)V

    .line 509
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededMaxLayoutHeight()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateScrollModeWith(Z)V

    .line 511
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-nez p1, :cond_0

    .line 512
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public setOnDragEndListener(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$OnDragEndListener;)V
    .locals 0

    .line 561
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    return-void
.end method

.method setShapeType(I)V
    .locals 0

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 546
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 555
    :cond_0
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    .line 552
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

.method setSizeType(I)V
    .locals 2

    .line 522
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-nez v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 525
    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    .line 527
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateItemViewWith(I)V

    .line 528
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(III)V

    .line 531
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    .line 532
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededMaxLayoutHeight()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateScrollModeWith(Z)V

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    :cond_0
    return-void
.end method

.method show()V
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 468
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsShowing:Z

    .line 469
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 472
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    .line 474
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->registerAccessibilityFloatingReceiver()V

    return-void
.end method

.method snapToLocation(II)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 852
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 853
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 854
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method startTranslateXAnimation()V
    .locals 10

    .line 565
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    .line 567
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    :goto_0
    move v5, v0

    .line 570
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x258

    .line 575
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v3, 0x2

    .line 576
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 577
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v3, -0x1

    .line 578
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 579
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 580
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method stopTranslateXAnimation()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

.method public updateHideHandle(I)V
    .locals 7

    const/4 v0, 0x1

    .line 1130
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    .line 1131
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->accessibility_floating_hide_handle_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    .line 1132
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    .line 1133
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->createHideHandleLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$drawable;->accessibility_floating_hide_icon:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$drawable;->accessibility_floating_menu_background:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1139
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1140
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    iget v6, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x9

    .line 1143
    invoke-direct {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setFloatingIconType(I)V

    .line 1144
    iget-object v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1145
    iget-object v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1147
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1148
    new-instance v4, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    aput-object p1, v2, v0

    invoke-direct {v4, v2}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1150
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1152
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1153
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1154
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(III)V

    .line 1155
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateAccessibilityTitle(Landroid/view/WindowManager$LayoutParams;)V

    .line 1156
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1157
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->accessibility_floating_button_minimized:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateHideHandleLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V
    .locals 3

    .line 1178
    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/Position;->getPercentageX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformToAlignment(F)I

    move-result v0

    .line 1179
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1180
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowXForHandle()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1181
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsSwipeForHandle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1182
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHandleFirstPositionY:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1183
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformCurrentPercentageXToEdge()F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateCurrentPercentageY()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/accessibility/floatingmenu/Position;->update(FF)V

    .line 1184
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsSwipeForHandle:Z

    goto :goto_1

    .line 1186
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/Position;->getPercentageY()F

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowYForHandle()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getInterval()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1189
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method updateOpacityWith(ZF)V
    .locals 3

    .line 596
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    .line 597
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    .line 599
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 600
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p2, v0

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    const/4 v2, 0x1

    aput v0, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 601
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 602
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-nez p1, :cond_1

    .line 603
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
