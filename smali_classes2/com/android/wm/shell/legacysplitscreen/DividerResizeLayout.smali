.class public Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;
.super Landroid/widget/FrameLayout;
.source "DividerResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;,
        Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ONE_EASING:Landroid/view/animation/Interpolator;

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;

.field private static final SINE_OUT_60:Landroid/view/animation/Interpolator;

.field private static final WINDOW_ALPHA_ANIM_DURATION:J


# instance fields
.field private mActionDropRunnable:Ljava/lang/Runnable;

.field private mAttachedToWindow:Z

.field private mBackgroundColor:I

.field private mCornerRadius:I

.field private mDefaultHandleMoveThreshold:I

.field private mDividerSize:I

.field private mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

.field private mFinishRunnable:Ljava/lang/Runnable;

.field private final mFinishTimeoutRunnable:Ljava/lang/Runnable;

.field private mFirstLayoutCalled:Z

.field private mFocusedWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mHeavyWorkRunnable:Ljava/lang/Runnable;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

.field private final mResizeTargets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictedBounds:Landroid/graphics/Rect;

.field private mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTransparentRegion:Landroid/graphics/Region;

.field private mWindowAdded:Z

.field private mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$f7ye3M-r5EubJ23_W0uXWdusNCM(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vRcdbxP2llkAkTrsVaLq2-Zy4XY(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$yoIx2dS4jdLPs9t8lgSbtN2dfxU(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->lambda$onActionDrop$2(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 94
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    .line 103
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 104
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    .line 105
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->ONE_EASING:Landroid/view/animation/Interpolator;

    .line 110
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x96

    :goto_0
    sput-wide v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->WINDOW_ALPHA_ANIM_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 119
    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAdded:Z

    .line 120
    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mAttachedToWindow:Z

    .line 121
    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 126
    new-instance p3, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFinishTimeoutRunnable:Ljava/lang/Runnable;

    .line 139
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFocusedWindowingMode:I

    .line 146
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 149
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    .line 150
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 151
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 153
    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    .line 159
    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHeavyWorkRunnable:Ljava/lang/Runnable;

    const-string/jumbo p2, "window"

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 187
    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/content/Context;
    .locals 0

    .line 92
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->setSecure()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/content/Context;
    .locals 0

    .line 92
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200()Landroid/view/animation/Interpolator;
    .locals 1

    .line 92
    sget-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2400()Landroid/view/animation/Interpolator;
    .locals 1

    .line 92
    sget-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->ONE_EASING:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mDividerSize:I

    return p0
.end method

.method static synthetic access$2900(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mStableInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->onAnimationFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mCornerRadius:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)I
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->getPrimaryTaskId()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)I
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->getSecondaryTaskId()I

    move-result p0

    return p0
.end method

.method private addWindow()V
    .locals 2

    .line 252
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAdded:Z

    if-eqz v0, :cond_0

    .line 253
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addWindow: failed, window is already added, Callers="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DividerResizeLayout"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAdded:Z

    .line 257
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createResizeTarget(ILandroid/graphics/Rect;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 426
    sget v0, Lcom/android/wm/shell/R$id;->primary_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 427
    sget v1, Lcom/android/wm/shell/R$id;->primary_blur_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :goto_0
    move-object v5, v0

    move-object v6, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 429
    sget v0, Lcom/android/wm/shell/R$id;->secondary_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 430
    sget v1, Lcom/android/wm/shell/R$id;->secondary_blur_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    .line 432
    sget v0, Lcom/android/wm/shell/R$id;->cell_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 433
    sget v1, Lcom/android/wm/shell/R$id;->cell_blur_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v5

    :goto_1
    const-string v0, "DividerResizeLayout"

    if-eqz v5, :cond_5

    if-nez v6, :cond_3

    goto :goto_2

    .line 445
    :cond_3
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    .line 447
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-boolean p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 450
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createResizeTarget: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    :goto_2
    const-string p0, "createResizeTarget: failed, cannot found views"

    .line 437
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createResizeTargetForBlurEffects()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->createResizeTarget(ILandroid/graphics/Rect;)V

    .line 419
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->createResizeTarget(ILandroid/graphics/Rect;)V

    return-void
.end method

.method private createResizeTargetForGuideView()V
    .locals 2

    .line 380
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->initFocusedWindowingMode()V

    .line 399
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFocusedWindowingMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->createResizeTarget(ILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 402
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->createResizeTarget(ILandroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private generateLayoutParams()V
    .locals 4

    .line 228
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xa2b

    const/16 v2, 0x318

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 235
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x1

    .line 236
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 238
    sget-boolean v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-nez v1, :cond_0

    const/16 v1, 0x60

    .line 239
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 243
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 244
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 245
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 247
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "DividerResizeLayout"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 613
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 614
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 615
    div-int/lit8 v4, v2, 0x4

    div-int/lit8 v5, v3, 0x4

    const/4 v6, 0x1

    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 618
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 620
    :try_start_0
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v4, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 622
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 623
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v7

    const/high16 v8, 0x41c80000    # 25.0f

    .line 624
    invoke-virtual {v7, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 625
    invoke-virtual {v7, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 626
    invoke-virtual {v7, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 627
    invoke-virtual {v5, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 628
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    .line 629
    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    .line 630
    invoke-virtual {v7}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 632
    :try_start_1
    invoke-virtual {v4}, Landroid/renderscript/RSRuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    :goto_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 637
    invoke-static {p1, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 639
    sget-boolean p1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBlurredBitmap: dur="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DividerResizeLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    .line 634
    :goto_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 635
    throw p1
.end method

.method private getPrimaryTaskId()I
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    .line 596
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getSecondaryTaskId()I
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    .line 603
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private initDividerResizeTargets()V
    .locals 2

    .line 362
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->createResizeTargetForGuideView()V

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->createResizeTargetForBlurEffects()V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 369
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->initialize()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initFocusedWindowingMode()V
    .locals 4

    const-string v0, "initFocusedWindowingMode: #"

    const-string v1, "DividerResizeLayout"

    .line 350
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {v2}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFocusedWindowingMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_0
    sget-boolean v2, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 355
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    sget-boolean v2, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFocusedWindowingMode:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :goto_1
    sget-boolean v3, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFocusedWindowingMode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_2
    throw v2
.end method

.method private initTransparentRegion()V
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method private isAnimating()Z
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 571
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    if-eqz v2, :cond_1

    .line 572
    invoke-static {v2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$500(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isReadyToShow()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFirstLayoutCalled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mAttachedToWindow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const-string v0, "Timeout"

    const/4 v1, 0x1

    .line 127
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->postFinishRunnalbeIfPossible(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 7

    const-string v0, "mHeavyWorkRunnable, dur="

    const-string v1, "DividerResizeLayout"

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 162
    :try_start_0
    sget-boolean v4, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-nez v4, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->loadSnapshotsForResizeTarget()V

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->addWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    throw p0
.end method

.method private synthetic lambda$onActionDrop$2(II)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    if-eqz v1, :cond_0

    .line 495
    invoke-static {v1, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$3200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;II)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadSnapshotsForResizeTarget()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    if-eqz v1, :cond_0

    .line 474
    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onAnimationFinished(Ljava/lang/String;)V
    .locals 2

    .line 324
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnimationFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DividerResizeLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    const-string/jumbo v0, "onAnimationFinished"

    .line 327
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->postFinishRunnalbeIfPossible(Ljava/lang/String;Z)V

    return-void
.end method

.method private onReadyToShow()V
    .locals 2

    .line 313
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReadyToShow: mActionDropRunnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mActionDropRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerResizeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mActionDropRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 316
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mActionDropRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x0

    const-string/jumbo v1, "onReadyToShow"

    .line 320
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->postFinishRunnalbeIfPossible(Ljava/lang/String;Z)V

    return-void
.end method

.method private postFinishRunnalbeIfPossible(Ljava/lang/String;Z)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 550
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->shouldDeferRemove(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "postFinishRunnalbeIfPossible: reason="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DividerResizeLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFinishTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 556
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 557
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private removeWindow()V
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAdded:Z

    if-nez v0, :cond_0

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeWindow: failed, window isn\'t added, Callers="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DividerResizeLayout"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 335
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAdded:Z

    .line 336
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method private setSecure()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_0

    or-int/lit16 v1, v1, 0x2000

    .line 341
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 342
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAdded:Z

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private startWindowHideAnimation()V
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 521
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 522
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 529
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 537
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 538
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-wide v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->WINDOW_ALPHA_ANIM_DURATION:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 539
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1

    .line 464
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 465
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return v0
.end method

.method init(Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 193
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 194
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 195
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeAlgorithm:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    .line 196
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 198
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getDividerSize()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mDividerSize:I

    .line 199
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10502bd

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mCornerRadius:I

    .line 201
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/wm/shell/R$dimen;->mw_divider_handle_move_threshold_default:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mDefaultHandleMoveThreshold:I

    .line 204
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 205
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 209
    iget-object p1, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->generateLayoutParams()V

    .line 216
    sget-boolean p1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-nez p1, :cond_1

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10601b3

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mBackgroundColor:I

    .line 219
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->initTransparentRegion()V

    .line 223
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->initDividerResizeTargets()V

    .line 224
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHeavyWorkRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onActionDrop(II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 490
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 491
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;II)V

    .line 499
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->isReadyToShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 500
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 502
    :cond_0
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mActionDropRunnable:Ljava/lang/Runnable;

    const-string p0, "DividerResizeLayout"

    const-string/jumbo p1, "onActionDrop: defer action drop, isn\'t ready to show yet"

    .line 503
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method onActionMove(II)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 480
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 481
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 482
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    if-eqz v1, :cond_0

    .line 484
    invoke-static {v1, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;II)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 262
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 263
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAttachedToWindow: mTransparentRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerResizeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mAttachedToWindow:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mAttachedToWindow:Z

    .line 269
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 273
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 275
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->isReadyToShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->onReadyToShow()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 283
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 284
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 288
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/4 p0, 0x0

    .line 289
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 296
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 298
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFirstLayoutCalled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 300
    sget-boolean p1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "DividerResizeLayout"

    const-string/jumbo p2, "onFirstLayout"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->isReadyToShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->onReadyToShow()V

    :cond_1
    return-void
.end method

.method onResizeFinished()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 509
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    if-eqz v1, :cond_0

    .line 511
    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 514
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->startWindowHideAnimation()V

    return-void
.end method

.method postFinishRunnable(Ljava/lang/Runnable;)V
    .locals 2

    .line 562
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    .line 563
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFinishTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method remove()V
    .locals 2

    const-string v0, "DividerResizeLayout"

    const-string/jumbo v1, "remove"

    .line 580
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHeavyWorkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHeavyWorkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 584
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    .line 585
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 586
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 587
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    const/4 v0, 0x0

    .line 588
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mAttachedToWindow:Z

    .line 589
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 590
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 591
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->removeWindow()V

    return-void
.end method

.method shouldDeferRemove(Z)Z
    .locals 1

    .line 546
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->isReadyToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->isAnimating()Z

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
