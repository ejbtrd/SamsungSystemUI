.class public Lcom/android/wm/shell/draganddrop/DragTargetView;
.super Landroid/widget/FrameLayout;
.source "DragTargetView.java"


# static fields
.field private static final DEBUG:Z

.field private static final RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimatingExit:Z

.field private mBoundsAnimator:Landroid/animation/ValueAnimator;

.field private mCornerRadius:I

.field private mCurrentDragTargetRect:Landroid/graphics/Rect;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mDividerSize:I

.field private final mDownScale:Landroid/graphics/PointF;

.field private mDragTarget:Landroid/widget/FrameLayout;

.field private mDragTargetBounds:Landroid/graphics/Rect;

.field private mDragTargetImage:Landroid/widget/ImageView;

.field private mDragTargetWindowingMode:I

.field private final mEndBounds:Landroid/graphics/Rect;

.field private final mHandlerPosition:Landroid/graphics/Point;

.field private mHasProtectedContent:Z

.field private mIsDragEndCalled:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mNonTargets:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

.field private final mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

.field private final mTmpFloats:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mUpScale:Landroid/graphics/PointF;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$FVnYpyqS7309SKFZI423qq4L2UI(Lcom/android/wm/shell/draganddrop/DragTargetView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->lambda$startSpringAnimation$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$llcep6NLEgIghPqlAwvh1tUoXEY(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/graphics/Point;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/draganddrop/DragTargetView;->lambda$ensureHandlerPositionIfNeeded$3(Landroid/graphics/Point;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pMfnk9DNpA7l2LIO01tIOzisovk(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/draganddrop/DragTargetView;->lambda$animateBoundsMove$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yKD2ScCCaOY2ABTVo7yB8ApKpFs(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/draganddrop/DragTargetView;->lambda$adjustDragTargetViewBoundsIfNeeded$0(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 77
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->DEBUG:Z

    .line 85
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDisplaySize:Landroid/graphics/Point;

    .line 93
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTmpRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHasProtectedContent:Z

    .line 101
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 102
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    .line 112
    new-instance p2, Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    .line 113
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    .line 114
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mAnimatingExit:Z

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 115
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTmpFloats:[F

    .line 116
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    .line 117
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    .line 118
    new-instance p1, Lcom/android/wm/shell/draganddrop/DragTargetView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/draganddrop/DragTargetView$1;-><init>(Lcom/android/wm/shell/draganddrop/DragTargetView;)V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/draganddrop/DragTargetView;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCornerRadius:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/wm/shell/draganddrop/DragTargetView;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mAnimatingExit:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/wm/shell/draganddrop/DragTargetView;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mAnimatingExit:Z

    return p1
.end method

.method private animateBoundsMove(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;JF)V
    .locals 9

    .line 476
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 480
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mAnimatingExit:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mIsDragEndCalled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mAnimatingExit:Z

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->startSpringAnimation(Z)V

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTmpFloats:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 487
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTmpFloats:[F

    const/4 v1, 0x2

    aget v7, v0, v1

    .line 489
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 490
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-array v0, v1, [F

    .line 491
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 492
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 509
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/draganddrop/DragTargetView$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/draganddrop/DragTargetView$2;-><init>(Lcom/android/wm/shell/draganddrop/DragTargetView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 519
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 520
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 521
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dockSideToDropSide(I)I
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    const/4 v0, 0x4

    if-eq p1, p0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method private generateLayoutParams()V
    .locals 7

    .line 193
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e0

    const/16 v4, 0x310

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "NS:DragTargetView"

    .line 197
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 199
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 201
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 202
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 203
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDisplaySize:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 204
    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const p0, 0x800033

    .line 205
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method private initResources()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCornerRadius:I

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 189
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDividerSize:I

    return-void
.end method

.method private initSpringAnimation()V
    .locals 6

    .line 525
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v3, 0x43480000    # 200.0f

    .line 526
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v4, 0x3f7d70a4    # 0.99f

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 527
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 528
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 529
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x435c0000    # 220.0f

    .line 530
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v3, 0x3ef0a3d7    # 0.47f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 531
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 532
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 534
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050203

    .line 536
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 538
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 539
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    sub-int v4, v1, v0

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/PointF;->x:F

    sub-int v0, v2, v0

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 540
    iput v0, v3, Landroid/graphics/PointF;->y:F

    .line 541
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    const v0, 0x3f81eb85    # 1.015f

    invoke-virtual {p0, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-void
.end method

.method private initThumbnail(I)V
    .locals 2

    .line 156
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasProtectedContent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHasProtectedContent:Z

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHasProtectedContent:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$color;->protected_content_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 163
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$drawable;->mw_splitview_ic_previewlock_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 165
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasFreeformHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->createSnapshotWithFreeformHeader()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 176
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$adjustDragTargetViewBoundsIfNeeded$0(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V
    .locals 7

    .line 469
    sget-object v3, Lcom/android/wm/shell/draganddrop/DragTargetView;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragTargetView;->animateBoundsMove(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;JF)V

    return-void
.end method

.method private synthetic lambda$animateBoundsMove$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 493
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    .line 494
    sget-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v0, p6, p1, p2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 496
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 497
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 498
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 499
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    cmpl-float p1, p4, p5

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    sub-float/2addr p5, p4

    mul-float/2addr p5, p6

    add-float/2addr p4, p5

    const/4 p2, 0x0

    .line 504
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 505
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 506
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$ensureHandlerPositionIfNeeded$3(Landroid/graphics/Point;IILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 600
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 601
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 602
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, p4

    float-to-int p2, p2

    .line 603
    iput p2, p1, Landroid/graphics/Point;->x:I

    int-to-float p2, p3

    mul-float/2addr p2, p4

    float-to-int p2, p2

    .line 604
    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 605
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p2

    iget p3, p1, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    int-to-float p3, v0

    sub-float/2addr p2, p3

    .line 606
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p3

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    add-float/2addr p3, p1

    int-to-float p1, v1

    sub-float/2addr p3, p1

    .line 607
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 608
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 609
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$startSpringAnimation$2()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 555
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/16 v0, 0x6c

    .line 556
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    const/16 v0, 0x6a

    .line 557
    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->performSoundEffect(I)V

    .line 558
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 559
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 560
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mNonTargets:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->startTransition(Z)V

    return-void
.end method

.method private performSoundEffect(I)V
    .locals 1

    .line 569
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const-string p0, "DragTargetView"

    const-string/jumbo p1, "performSoundEffect: Couldn\'t get audio manager"

    .line 572
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 575
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method private validateDropSide(I)I
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 270
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetWindowingMode:I

    if-ne v0, v1, :cond_0

    return p1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getDockSide()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->dockSideToDropSide(I)I

    move-result p0

    if-ne p0, p1, :cond_1

    move p1, v2

    :cond_1
    return p1

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->isFreeformDragTarget()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 276
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mNonTargets:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->isNonTargetsHorizontal()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :cond_4
    :goto_0
    return p1

    :cond_5
    const/4 p0, 0x2

    if-eq p1, p0, :cond_7

    const/16 p0, 0x8

    if-ne p1, p0, :cond_6

    goto :goto_1

    :cond_6
    move p1, v2

    :cond_7
    :goto_1
    return p1

    .line 281
    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result v0

    if-nez v0, :cond_9

    .line 282
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->isFreeformDragTarget()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isFullsceenVisible()Z

    nop

    :cond_9
    return p1
.end method


# virtual methods
.method adjustDragTarget(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)V
    .locals 4

    .line 216
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mNonTargets:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    .line 218
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 219
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 220
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHasProtectedContent:Z

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 222
    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHasProtectedContent:Z

    if-nez v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    .line 224
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 227
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 229
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 231
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method adjustDragTargetViewBoundsIfNeeded()V
    .locals 9

    .line 439
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 440
    new-instance v4, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 442
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mIsDragEndCalled:Z

    if-nez v0, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->getMinimumDragTargetViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 444
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 445
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 446
    iget v2, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 447
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 449
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 450
    iget v1, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 456
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 458
    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHasProtectedContent:Z

    if-nez v1, :cond_2

    .line 459
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 460
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, v1, :cond_3

    .line 461
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    move v7, v1

    .line 463
    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mIsDragEndCalled:Z

    if-eqz v1, :cond_4

    const-wide/16 v0, 0x96

    :goto_2
    move-wide v5, v0

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    const-wide/16 v0, 0x15e

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0xaf

    goto :goto_2

    .line 468
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method ensureHandlerPositionIfNeeded(Landroid/graphics/Point;Landroid/graphics/Point;Z)V
    .locals 2

    if-eqz p3, :cond_0

    .line 584
    iget p3, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_0
    sub-int/2addr p3, v0

    goto :goto_1

    .line 586
    :cond_0
    iget p3, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p3, v1, :cond_1

    sub-int p3, v1, p3

    goto :goto_1

    .line 588
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le p3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 594
    :goto_1
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    .line 595
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 598
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 599
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/graphics/Point;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p0, 0x64

    .line 611
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 612
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getCurrentDragTargetRect()Landroid/graphics/Rect;
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 210
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    .line 209
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 212
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method getDropSide()I
    .locals 16

    move-object/from16 v0, p0

    .line 290
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 291
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 292
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getStableBounds(Landroid/graphics/Rect;)V

    .line 293
    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x78

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 294
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isSupportOnlyTwoUpMode()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v2, :cond_4

    .line 295
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-gt v2, v5, :cond_0

    return v6

    .line 298
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_3

    return v4

    .line 302
    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-gt v2, v4, :cond_2

    return v5

    .line 304
    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_3

    return v7

    :cond_3
    return v3

    .line 311
    :cond_4
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->isFreeformDragTarget()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 312
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 313
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-gt v2, v4, :cond_5

    return v5

    .line 315
    :cond_5
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_8

    return v7

    .line 319
    :cond_6
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-gt v2, v5, :cond_7

    return v6

    .line 321
    :cond_7
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_8

    return v4

    :cond_8
    return v3

    .line 328
    :cond_9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 329
    iget-object v8, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 331
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    .line 332
    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    .line 333
    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->getMinimumDragTargetViewBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/2addr v11, v6

    .line 335
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v2, v12

    if-le v13, v11, :cond_a

    goto :goto_0

    :cond_a
    sub-int v11, v2, v12

    .line 340
    :goto_0
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v13, v2, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->left:I

    if-gt v13, v14, :cond_e

    .line 341
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v3, v1, :cond_b

    if-lt v8, v9, :cond_10

    goto :goto_1

    .line 344
    :cond_b
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v12, :cond_d

    if-lt v8, v11, :cond_c

    goto :goto_1

    :cond_c
    move v3, v4

    goto :goto_3

    :cond_d
    :goto_1
    move v3, v5

    goto :goto_3

    .line 351
    :cond_e
    iget v15, v2, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gt v15, v3, :cond_11

    if-gt v13, v14, :cond_f

    if-lt v8, v9, :cond_10

    goto :goto_1

    .line 355
    :cond_f
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v2, v1, :cond_10

    if-lt v10, v9, :cond_10

    goto :goto_2

    :cond_10
    move v3, v6

    goto :goto_3

    .line 362
    :cond_11
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v4, v1, :cond_14

    if-gt v15, v3, :cond_12

    if-lt v10, v9, :cond_10

    goto :goto_2

    .line 366
    :cond_12
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v12, :cond_13

    if-lt v10, v11, :cond_16

    :cond_13
    :goto_2
    move v3, v7

    goto :goto_3

    .line 372
    :cond_14
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v12, :cond_17

    if-gt v13, v14, :cond_15

    if-lt v8, v11, :cond_16

    goto :goto_1

    :cond_15
    if-ne v4, v1, :cond_16

    if-lt v10, v11, :cond_16

    goto :goto_2

    :cond_16
    const/16 v3, 0x8

    goto :goto_3

    :cond_17
    const/4 v3, 0x0

    .line 384
    :goto_3
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez v3, :cond_1d

    iget v1, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetWindowingMode:I

    if-ne v1, v7, :cond_1d

    .line 386
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v1, v7}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 387
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getDockSide()I

    move-result v2

    const/16 v4, 0x10

    if-eq v2, v5, :cond_1b

    if-eq v2, v6, :cond_1a

    const/4 v5, 0x3

    if-eq v2, v5, :cond_19

    if-eq v2, v7, :cond_18

    goto :goto_5

    .line 404
    :cond_18
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1c

    goto :goto_4

    .line 399
    :cond_19
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1c

    goto :goto_4

    .line 394
    :cond_1a
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDividerSize:I

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_1c

    goto :goto_4

    .line 389
    :cond_1b
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mCurrentDragTargetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v0, v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDividerSize:I

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_1c

    :goto_4
    move v3, v4

    :cond_1c
    :goto_5
    return v3

    .line 411
    :cond_1d
    invoke-direct {v0, v3}, Lcom/android/wm/shell/draganddrop/DragTargetView;->validateDropSide(I)I

    move-result v0

    return v0
.end method

.method public getMinimumDragTargetViewBounds()Landroid/graphics/Rect;
    .locals 5

    .line 417
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 418
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getStableBounds(Landroid/graphics/Rect;)V

    .line 419
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 420
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 422
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v3}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isSupportOnlyTwoUpMode()Z

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_1

    if-le v1, v2, :cond_0

    .line 424
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 426
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 427
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 432
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDividerSize:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 433
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    const/4 p0, 0x0

    .line 434
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0
.end method

.method public init(IILcom/android/wm/shell/draganddrop/TaskVisibility;)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: t#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragTargetView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mWm:Landroid/view/WindowManager;

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mIsDragEndCalled:Z

    .line 138
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    .line 139
    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetWindowingMode:I

    .line 140
    sget p2, Lcom/android/wm/shell/R$id;->drag_target:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 141
    sget p2, Lcom/android/wm/shell/R$id;->drag_target_image:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 142
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    iget p3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 143
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 144
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 145
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mWm:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 147
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->initResources()V

    .line 148
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragTargetView;->initThumbnail(I)V

    .line 149
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->initSpringAnimation()V

    .line 151
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->generateLayoutParams()V

    .line 152
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mWm:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method initHandlerPosition()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getStableBounds(Landroid/graphics/Rect;)V

    .line 236
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 237
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 238
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 239
    sget-boolean v0, Lcom/android/wm/shell/draganddrop/DragTargetView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initHandlerPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DragTargetView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method isFreeformDragTarget()Z
    .locals 1

    .line 251
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTargetWindowingMode:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method remove()V
    .locals 1

    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mIsDragEndCalled:Z

    .line 617
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method startSpringAnimation(Z)V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    if-eqz p1, :cond_0

    .line 548
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 549
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 553
    new-instance p1, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/draganddrop/DragTargetView;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 563
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 564
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_0
    return-void
.end method

.method update(Landroid/view/DragEvent;Landroid/graphics/Point;)V
    .locals 1

    .line 245
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 246
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 247
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
