.class public Lcom/android/wm/shell/legacysplitscreen/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAdjustedForIme:Z

.field private mBackground:Landroid/view/View;

.field private mCallback:Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;

.field final mCellRootTaskBounds:Landroid/graphics/Rect;

.field final mCellStartBounds:Landroid/graphics/Rect;

.field final mCellTaskBounds:Landroid/graphics/Rect;

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mDividerInsets:I

.field private mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

.field mDividerPositionX:I

.field mDividerPositionY:I

.field private mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

.field private mDividerSize:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field mFirstLayout:Z

.field private mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mHomeStackResizable:Z

.field private mImeController:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

.field mIsCellDivider:Z

.field private mIsInMinimizeInteraction:Z

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field private mLongPressEntraceAnimDuration:I

.field private mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

.field private mMoving:Z

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field final mPrimaryRootTaskBounds:Landroid/graphics/Rect;

.field final mPrimaryStartBounds:Landroid/graphics/Rect;

.field final mPrimaryTaskBounds:Landroid/graphics/Rect;

.field private mRemoved:Z

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field final mSecondaryRooTaskBounds:Landroid/graphics/Rect;

.field final mSecondaryStartBounds:Landroid/graphics/Rect;

.field final mSecondaryTaskBounds:Landroid/graphics/Rect;

.field private mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

.field mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field private mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

.field private mSurfaceHidden:Z

.field private mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpValues:[F

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

.field private mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$Fwjf8XiCHMsB6x1eMU4DuGovgFc(Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->lambda$getFlingAnimator$3(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cpICG8c4kcpAQac2Gj5wy_JPNKc(Lcom/android/wm/shell/legacysplitscreen/DividerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->lambda$setHidden$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBVfYNQtYlH--11b9_m4o6DrPtI(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 97
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DEBUG:Z

    .line 121
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 123
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v3, 0x3f5eb852    # 0.87f

    const v4, 0x3f051eb8    # 0.52f

    const v5, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 125
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 390
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 394
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 399
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 148
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    .line 149
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    .line 150
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 151
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    .line 152
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    .line 153
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    .line 154
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    .line 155
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    const/4 p3, 0x1

    .line 176
    iput-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFirstLayout:Z

    .line 180
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 p3, 0x9

    new-array p3, p3, [F

    .line 181
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpValues:[F

    const/4 p3, 0x0

    .line 188
    iput-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSurfaceHidden:Z

    .line 191
    new-instance p4, Landroid/graphics/Region;

    invoke-direct {p4}, Landroid/graphics/Region;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRegion:Landroid/graphics/Region;

    .line 209
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mPrimaryStartBounds:Landroid/graphics/Rect;

    .line 210
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mPrimaryRootTaskBounds:Landroid/graphics/Rect;

    .line 211
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mPrimaryTaskBounds:Landroid/graphics/Rect;

    .line 213
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSecondaryStartBounds:Landroid/graphics/Rect;

    .line 214
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSecondaryRooTaskBounds:Landroid/graphics/Rect;

    .line 215
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSecondaryTaskBounds:Landroid/graphics/Rect;

    .line 217
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCellStartBounds:Landroid/graphics/Rect;

    .line 218
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCellRootTaskBounds:Landroid/graphics/Rect;

    .line 219
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCellTaskBounds:Landroid/graphics/Rect;

    .line 222
    new-instance p4, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;

    invoke-direct {p4, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 362
    new-instance p4, Lcom/android/wm/shell/legacysplitscreen/DividerView$2;

    invoke-direct {p4, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView$2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    .line 369
    new-instance p4, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    .line 400
    iget-object p4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "display"

    .line 401
    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/display/DisplayManager;

    .line 402
    invoke-virtual {p4, p3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p4

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDefaultDisplay:Landroid/view/Display;

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p4, Lcom/android/wm/shell/R$styleable;->DividerView:[I

    invoke-virtual {p1, p2, p4, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 408
    :try_start_0
    sget p2, Lcom/android/wm/shell/R$styleable;->DividerView_isCellDivider:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsCellDivider:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    throw p0
.end method

.method static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/wm/shell/legacysplitscreen/DividerView;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resetBackground()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Lcom/android/wm/shell/legacysplitscreen/DividerPanel;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Lcom/android/wm/shell/common/split/DividerHandleView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    return-object p0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private adjustSplitSurface(Landroid/view/SurfaceControl$Transaction;IZ)V
    .locals 5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    return-void

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mCellSurface:Landroid/view/SurfaceControl;

    .line 1614
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCellTaskBounds:Landroid/graphics/Rect;

    .line 1615
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCellRootTaskBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 1606
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    .line 1608
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSecondaryTaskBounds:Landroid/graphics/Rect;

    .line 1609
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSecondaryRooTaskBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 1600
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimarySurface:Landroid/view/SurfaceControl;

    .line 1602
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mPrimaryTaskBounds:Landroid/graphics/Rect;

    .line 1603
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mPrimaryRootTaskBounds:Landroid/graphics/Rect;

    :goto_0
    if-eqz v0, :cond_7

    .line 1620
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    .line 1626
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mImeController:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    .line 1627
    invoke-virtual {v3, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->needWindowLiftUpInIme(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 1630
    :cond_4
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    if-nez p3, :cond_5

    .line 1634
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1635
    iget p2, v1, Landroid/graphics/Rect;->left:I

    iget p3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    neg-int p2, p2

    iget p3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v1

    neg-int p3, p3

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1637
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 1638
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mImeController:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->needWindowCropInIme(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1640
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p2, 0x0

    .line 1641
    invoke-virtual {p0, p2, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1642
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 1646
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_6
    :goto_2
    return-void

    .line 1621
    :cond_7
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "adjustSplitSurface: failed, invalid surface, sc="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", windowingMode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    .line 1622
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DividerView"

    .line 1621
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1420
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 1421
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1422
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int p0, v1, p0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p1, v0

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1413
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 1414
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1415
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    add-int/2addr v0, p1

    invoke-virtual {p2, v1, p1, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V
    .locals 4

    .line 1927
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p3

    .line 1930
    invoke-virtual {p3, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    const/4 v1, 0x0

    .line 1929
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1934
    invoke-virtual {p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v3, 0x0

    if-gt p4, v2, :cond_0

    .line 1935
    invoke-static {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1936
    invoke-virtual {p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .line 1937
    invoke-virtual {p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p3

    goto :goto_0

    .line 1939
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p5

    iget p5, p5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, p5, :cond_1

    .line 1940
    invoke-static {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideBottomRight(I)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 1941
    invoke-virtual {p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    .line 1942
    invoke-virtual {p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p3

    .line 1943
    iget p5, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    move-object p3, v3

    :goto_0
    if-eqz v3, :cond_6

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    .line 1946
    invoke-static {p3, p4, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 1947
    invoke-static {v0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result p4

    int-to-float p5, p5

    .line 1948
    iget v0, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v0, p3

    int-to-float p3, v0

    mul-float/2addr p4, p3

    add-float/2addr p5, p4

    float-to-int p3, p5

    .line 1950
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    .line 1951
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 p4, 0x4

    if-eq p2, p4, :cond_2

    goto :goto_1

    .line 1966
    :cond_2
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int p2, p3, p0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p5

    add-int/2addr p3, p0

    .line 1967
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1958
    :cond_3
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int p2, p3, p0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p4

    add-int/2addr p3, p0

    .line 1959
    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    sub-int p0, p3, p5

    .line 1962
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 1963
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    sub-int p0, p3, p4

    .line 1954
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 1955
    iput p3, p1, Landroid/graphics/Rect;->right:I

    :cond_6
    :goto_1
    return-void
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .locals 4

    .line 1874
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1875
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1877
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 1879
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    sub-int/2addr p0, p2

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 8

    .line 1436
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 1439
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_BOUNDS_POLICY_WITH_EXTRA_STABLE_INSETS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 1440
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->hasExtraStableInset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->extraInsets()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 1445
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 1446
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 1445
    invoke-static/range {v1 .. v7}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    return-void
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .locals 1

    .line 1978
    sget-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    const/high16 v0, 0x40600000    # 3.5f

    div-float/2addr p0, v0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    :cond_0
    return p0
.end method

.method private calculatePosition(II)I
    .locals 1

    .line 1386
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateYPosition(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateXPosition(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private calculateXPosition(I)I
    .locals 1

    .line 1405
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartX:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private calculateYPosition(I)I
    .locals 1

    .line 1409
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartY:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private cancelFlingAnimation()V
    .locals 0

    .line 1047
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 1048
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 6

    .line 1053
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1058
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    goto :goto_1

    .line 1061
    :cond_3
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 1064
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 1073
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->dismissOrMaximizeDocked(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V

    const/4 p1, 0x0

    .line 1074
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 1075
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 1077
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1078
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1081
    sget-boolean p0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz p0, :cond_4

    const-string p0, "1005"

    const-string p1, "Move divider"

    .line 1082
    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 1

    .line 854
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method

.method private static dockSideBottomRight(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

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

.method private static dockSideTopLeft(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private fling(IFZZ)V
    .locals 1

    .line 859
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    .line 860
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 861
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 862
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    :cond_0
    if-eqz p4, :cond_1

    .line 865
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 869
    :cond_1
    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isDismissSnapTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 870
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    goto :goto_0

    .line 883
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget p3, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyResizeSplits(ILcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)V

    const/4 p2, 0x0

    .line 884
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    .line 886
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCallback:Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;

    if-eqz p0, :cond_3

    .line 887
    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;->onDraggingEnd()V

    :cond_3
    return-void
.end method

.method private flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 899
    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 900
    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 901
    invoke-virtual {p0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 902
    invoke-virtual {p0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 903
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 1

    .line 1889
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mEntranceAnimationRunning:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 1892
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1893
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 1894
    sget-object p1, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method private getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 909
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->cancelFlingAnimation()V

    .line 910
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateDockSide()V

    .line 912
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting fling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_1
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 914
    iget v1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    aput v1, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 927
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 975
    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/DividerView$4;

    invoke-direct {p2, p0, p3, p4, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView$4;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;JLjava/util/function/Consumer;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1001
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 1002
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setAnimationHandler(Landroid/animation/AnimationHandler;)V

    return-object p1
.end method

.method private getWindowSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method private inSplitMode()Z
    .locals 0

    .line 595
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initializeSurfaceState()V
    .locals 7

    .line 1157
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1158
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    .line 1160
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1161
    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1162
    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1164
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    .line 1165
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v4, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v3, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1186
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v2, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1191
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    const/4 v1, 0x0

    .line 1192
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 1193
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1194
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1198
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 1201
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v4, v4, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 1202
    invoke-virtual {v4}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1203
    :goto_1
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1206
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 1207
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1206
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1208
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setTouchRegion(Landroid/graphics/Region;)V

    .line 1211
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onDividerSurfaceInitialized(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V

    return-void
.end method

.method private static isDismissSnapTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 2

    .line 2082
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isDismissTargetPrimary(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 2

    .line 1996
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    .line 1998
    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideBottomRight(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 1991
    :cond_0
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 1989
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private synthetic lambda$getFlingAnimator$3(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Ljava/lang/Boolean;)V
    .locals 3

    .line 928
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End Fling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    .line 931
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    if-eqz p2, :cond_1

    .line 932
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    .line 934
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result p2

    .line 935
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->setResizing(Z)V

    .line 936
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateDockSide()V

    const/4 v2, 0x0

    .line 937
    iput-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    .line 938
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mEntranceAnimationRunning:Z

    .line 939
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitAnimationRunning:Z

    if-nez p2, :cond_2

    if-nez v0, :cond_2

    .line 943
    invoke-direct {p0, p1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    .line 949
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p2, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyResizeSplits(ILcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)V

    .line 952
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCallback:Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;

    if-eqz p2, :cond_3

    .line 953
    invoke-interface {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;->onDraggingEnd()V

    .line 957
    :cond_3
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    if-nez p2, :cond_5

    .line 962
    iget p2, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gez p2, :cond_4

    .line 963
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    .line 967
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p2

    .line 968
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v0, v1, :cond_5

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 969
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p2

    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v0, p2, :cond_5

    .line 970
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 973
    :cond_5
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->notifySplitScreenBoundsChanged()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 370
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 380
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpValues:[F

    invoke-interface {v0, p0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->setScreenMatrix([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$setHidden$1(Z)V
    .locals 2

    .line 605
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getWindowSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 611
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 613
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 615
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mImeController:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->setDimsHidden(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 616
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 617
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private liftBackground()V
    .locals 0

    return-void
.end method

.method private logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 4

    .line 827
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const/16 v1, 0x186

    if-ne p1, v0, :cond_0

    .line 828
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 829
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result p0

    .line 828
    invoke-static {p1, v1, p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 833
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 834
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideBottomRight(I)Z

    move-result p0

    .line 833
    invoke-static {p1, v1, p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const/16 v1, 0x185

    if-ne p1, v0, :cond_2

    .line 838
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v0, :cond_4

    .line 841
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 842
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 841
    :goto_0
    invoke-static {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1

    .line 845
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 846
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 847
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result p0

    if-eqz p0, :cond_5

    move v2, v3

    .line 846
    :cond_5
    invoke-static {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_6
    :goto_1
    return-void
.end method

.method static needPositionReversed(II)Z
    .locals 1

    .line 2095
    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2096
    :cond_0
    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideBottomRight(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private notifySplitScreenBoundsChanged()V
    .locals 5

    .line 1007
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1012
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1018
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 1026
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1027
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1032
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1035
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1029
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1043
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->notifyBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private releaseBackground()V
    .locals 0

    return-void
.end method

.method private repositionSnapTargetBeforeMinimized()V
    .locals 2

    .line 1375
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    iget v0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerState;->mRatioPositionBeforeMinimized:F

    .line 1376
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    goto :goto_0

    .line 1377
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1381
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 1382
    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method

.method private resetBackground()V
    .locals 2

    .line 1362
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1363
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1364
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1365
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1366
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10

    .line 1461
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v7, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mCell:Landroid/graphics/Rect;

    .line 1464
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1463
    invoke-virtual/range {v1 .. v9}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    move-object p3, p2

    :cond_1
    if-nez p5, :cond_2

    move-object p5, p4

    .line 1473
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    .line 1477
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1478
    iget v0, p4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    .line 1479
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    .line 1481
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resizing split surfaces: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimarySurface:Landroid/view/SurfaceControl;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1487
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1488
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v1, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p2

    .line 1489
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    neg-int p2, p2

    .line 1488
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1490
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1491
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    iget p3, p5, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v1, p5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1492
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1493
    iget p2, p5, Landroid/graphics/Rect;->left:I

    iget p3, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    neg-int p2, p2

    iget p3, p5, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    neg-int p3, p3

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1495
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1496
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getWindowSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1499
    sget-boolean p3, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p3, p3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p3}, Lcom/android/wm/shell/common/DisplayLayout;->hasExtraStableInset()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1500
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1501
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p3, p3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p3}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p4, p5

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 1504
    :cond_5
    iget p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 1508
    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1509
    iget p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, p2, p4, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 1511
    :cond_7
    iget p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1515
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1516
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1517
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method private resizeStackSurfaces(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1451
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2

    .line 1904
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1905
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1907
    :cond_0
    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1908
    invoke-static {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideBottomRight(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1909
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method private saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 2

    .line 1355
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 1356
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float p1, p1

    .line 1357
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p0

    goto :goto_0

    .line 1358
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p1, p0

    iput p1, v0, Lcom/android/wm/shell/legacysplitscreen/DividerState;->mRatioPositionBeforeMinimized:F

    return-void
.end method

.method private stopDragging()V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerHandleView;->setTouching(ZZ)V

    .line 685
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setSlippery(Z)V

    .line 686
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->releaseBackground()V

    return-void
.end method

.method private stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerHandleView;->setTouching(ZZ)V

    .line 678
    invoke-direct/range {p0 .. p9}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    .line 679
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setSlippery(Z)V

    .line 680
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->releaseBackground()V

    return-void
.end method

.method private stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 10

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v9, p5

    .line 667
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V
    .locals 10

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v7, p6

    move-object v9, p5

    .line 672
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private updateDividerPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1695
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 1696
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1712
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    .line 1713
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    goto :goto_0

    .line 1708
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    .line 1709
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    goto :goto_0

    .line 1704
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    .line 1705
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    goto :goto_0

    .line 1700
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    .line 1701
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    .line 1717
    :goto_0
    sget-boolean v1, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDividerPosition(): mIsCellDivider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsCellDivider:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", dockSide="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", dockedRect="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", otherRect="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DividerView"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private updateDockSide()V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    .line 697
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;->setDockSide(I)V

    return-void
.end method

.method private updateSplitBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mPrimaryRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1653
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mPrimaryTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1654
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mPrimaryStartBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1666
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSecondaryRooTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1667
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSecondaryTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1668
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {p2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result p2

    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSecondaryStartBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method calculateDividerSmartTipPosition(Landroid/graphics/Point;)V
    .locals 6

    .line 2105
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    move-result v0

    .line 2108
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 2109
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/2addr p0, v3

    move v5, v0

    move v0, p0

    move p0, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 2113
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 2115
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getStableBounds(Landroid/graphics/Rect;)V

    .line 2116
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 2117
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v3

    goto :goto_0

    :cond_2
    move p0, v2

    move v0, p0

    .line 2124
    :goto_0
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method enterSplitMode(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1248
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setHidden(Z)V

    .line 1250
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 1251
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    .line 1252
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_0

    .line 1253
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    :cond_0
    return-void
.end method

.method exitSplitMode()V
    .locals 3

    .line 1269
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getWindowSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1273
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 1274
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1275
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mImeController:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->setDimsHidden(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1276
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1277
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 1280
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 1281
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyResizeSplits(ILcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)V

    return-void
.end method

.method finishAnimations()V
    .locals 0

    .line 1315
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 1316
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 711
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    :goto_0
    return p0
.end method

.method getDividerSize()I
    .locals 0

    .line 2053
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    return p0
.end method

.method getDockSide()I
    .locals 0

    .line 2089
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    return p0
.end method

.method public getInvertedCurrentPosition()I
    .locals 2

    .line 716
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    move-result v0

    .line 717
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 719
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt v1, v0, :cond_1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1

    .line 721
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInvertedCurrentPosition: out of resize zone, current="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DividerView"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 591
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    .line 706
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    goto :goto_0

    .line 707
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method injectAdditionalDependency(Lcom/android/wm/shell/legacysplitscreen/MultiSplitController;Lcom/android/wm/shell/legacysplitscreen/DividerPanel;Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V
    .locals 0

    .line 580
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    .line 583
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    return-void
.end method

.method injectDependencies(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;Lcom/android/wm/shell/legacysplitscreen/DividerState;Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Lcom/android/wm/shell/legacysplitscreen/DividerImeController;Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 522
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    .line 523
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    .line 524
    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCallback:Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;

    .line 525
    iput-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 526
    iput-object p6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 527
    iput-object p7, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mImeController:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    .line 528
    iput-object p8, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    .line 531
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 564
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    iget p1, p1, Lcom/android/wm/shell/legacysplitscreen/DividerState;->mRatioPositionBeforeMinimized:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 566
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    goto :goto_0

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->repositionSnapTargetBeforeMinimized()V

    :goto_0
    return-void
.end method

.method isHidden()Z
    .locals 1

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSurfaceHidden:Z

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

.method public isHorizontalDivision()Z
    .locals 1

    .line 1401
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 0

    .line 2156
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mRemoved:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 471
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 474
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_0
    const/4 v0, 0x1

    .line 477
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFirstLayout:Z

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 11

    const/4 v0, 0x3

    .line 2017
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 2018
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 2019
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 2018
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 2020
    iget-object v5, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    .line 2021
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v9

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 2020
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1371
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onDividerRemoved()V
    .locals 1

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mRemoved:Z

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCallback:Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;

    .line 486
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 421
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 422
    sget v0, Lcom/android/wm/shell/R$id;->docked_divider_handle:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerHandleView;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 423
    sget v0, Lcom/android/wm/shell/R$id;->docked_divider_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    .line 424
    sget v0, Lcom/android/wm/shell/R$id;->minimized_dock_shadow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    .line 425
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 430
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 443
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 446
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    .line 447
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->docked_stack_divider_lift_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchElevation:I

    .line 449
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$integer;->long_press_dock_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mLongPressEntraceAnimDuration:I

    .line 451
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchSlop:I

    .line 452
    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;F)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 453
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 457
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10601b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 465
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 493
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 494
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFirstLayout:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->initializeSurfaceState()V

    .line 497
    iput-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFirstLayout:Z

    .line 501
    :cond_0
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_1

    .line 502
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p4, 0x1

    if-ne p2, p4, :cond_2

    .line 504
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_0
    move v1, p3

    move p3, p2

    move p2, v1

    goto :goto_1

    :cond_2
    const/4 p4, 0x3

    if-ne p2, p4, :cond_3

    .line 506
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p2, p4

    goto :goto_0

    :cond_3
    move p2, p3

    .line 508
    :goto_1
    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    .line 509
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 508
    invoke-virtual {p4, p3, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_4

    .line 512
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->notifySplitScreenBoundsChanged()V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 2137
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2138
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz p1, :cond_1

    .line 2140
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2141
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 2142
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2143
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p0, 0x10

    .line 2144
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 2146
    :cond_0
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2147
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 p0, 0x1

    .line 2148
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 734
    invoke-direct {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    .line 737
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 740
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 769
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 770
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 771
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 773
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchSlop:I

    if-gt v2, v3, :cond_2

    .line 774
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchSlop:I

    if-le v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 775
    :cond_3
    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 776
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartX:I

    .line 777
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartY:I

    .line 778
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    .line 780
    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 783
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->onMoveEvent(II)V

    goto :goto_0

    .line 806
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 807
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 808
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 809
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {p2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 810
    invoke-direct {p0, p1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculatePosition(II)I

    .line 813
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-virtual {p2, p1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->finishResizing(II)V

    .line 820
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    :cond_6
    :goto_0
    return v1

    .line 743
    :cond_7
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 744
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 745
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartX:I

    .line 746
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartY:I

    .line 747
    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->startDragging(ZZ)Z

    move-result p1

    if-nez p1, :cond_8

    .line 751
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->stopDragging()V

    .line 753
    :cond_8
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    .line 754
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    .line 757
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 759
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 760
    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerSmartTipShowRequested()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 761
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->requestToDismissDividerSmartTip()V

    .line 764
    :cond_9
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p2, p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->startResizing(Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)V

    return p1
.end method

.method onUndockingTask()V
    .locals 11

    .line 2025
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    .line 2026
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->inSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2027
    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->startDragging(ZZ)Z

    .line 2028
    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    .line 2030
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const/4 v0, 0x1

    .line 2033
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitAnimationRunning:Z

    .line 2034
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    const-wide/16 v4, 0x150

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x0

    .line 2035
    sget-object v10, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method

.method resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1455
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 1

    if-nez p3, :cond_0

    move-object p3, p2

    :cond_0
    if-nez p5, :cond_1

    move-object p5, p4

    .line 1533
    :cond_1
    iget-object p6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    invoke-virtual {p6}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->removeDividerPanel()V

    .line 1535
    invoke-direct {p0, p2, p4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateDividerPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1537
    sget-boolean p6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DEBUG:Z

    if-eqz p6, :cond_2

    .line 1538
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resizing split surfaces: "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "DividerView"

    invoke-static {v0, p6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateSplitBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz p8, :cond_3

    .line 1544
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mPrimaryTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1545
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSecondaryTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    const/4 p2, 0x3

    .line 1551
    invoke-direct {p0, p1, p2, p8}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->adjustSplitSurface(Landroid/view/SurfaceControl$Transaction;IZ)V

    const/4 p2, 0x4

    .line 1554
    invoke-direct {p0, p1, p2, p8}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->adjustSplitSurface(Landroid/view/SurfaceControl$Transaction;IZ)V

    .line 1563
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getWindowSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1571
    sget-boolean p3, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz p3, :cond_5

    .line 1573
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1574
    iget p3, p7, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p4, p5

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 1576
    :cond_4
    iget p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    iget p4, p7, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 1579
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_6

    .line 1580
    iget p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, p2, p4, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 1582
    :cond_6
    iget p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1586
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1587
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1588
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V
    .locals 13

    move-object v6, p0

    move v7, p1

    move v0, p2

    move-object/from16 v8, p3

    .line 1745
    iget-boolean v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mRemoved:Z

    if-eqz v1, :cond_0

    return-void

    .line 1749
    :cond_0
    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1757
    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1760
    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mEntranceAnimationRunning:Z

    if-nez v1, :cond_1

    return-void

    .line 1765
    :cond_1
    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1766
    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_2
    const/4 v1, 0x0

    if-nez p4, :cond_3

    const/4 v2, 0x1

    move v9, v2

    goto :goto_0

    :cond_3
    move v9, v1

    :goto_0
    if-eqz v9, :cond_4

    .line 1770
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    move-object v10, v2

    goto :goto_1

    :cond_4
    move-object/from16 v10, p4

    .line 1771
    :goto_1
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1772
    iget-boolean v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_7

    .line 1773
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1775
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    .line 1776
    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1775
    invoke-direct {p0, v0, v2, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1779
    iget v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    if-ne v0, v3, :cond_5

    .line 1780
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    neg-int v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1789
    :cond_5
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v9, :cond_6

    .line 1791
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 1792
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1793
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_6
    return-void

    .line 1798
    :cond_7
    iget-boolean v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mEntranceAnimationRunning:Z

    const v4, 0x7fffffff

    if-eqz v2, :cond_9

    if-eq v0, v4, :cond_9

    .line 1799
    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v2, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1802
    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    if-ne v2, v3, :cond_8

    .line 1803
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    neg-int v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1812
    :cond_8
    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1814
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 1815
    :cond_9
    iget-boolean v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitAnimationRunning:Z

    if-eqz v2, :cond_b

    if-eq v0, v4, :cond_b

    .line 1816
    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v2, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1817
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1818
    iget v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    .line 1819
    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    .line 1818
    invoke-direct {p0, v0, v2, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1820
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1821
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    .line 1824
    iget v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    if-ne v0, v3, :cond_a

    .line 1825
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int/2addr v2, v7

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1832
    :cond_a
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_b
    if-eq v0, v4, :cond_d

    .line 1834
    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1836
    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    .line 1837
    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    .line 1838
    invoke-direct {p0, p2, v2, v8}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v5

    .line 1840
    invoke-direct {p0, p2, v11, v8}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v12

    .line 1841
    iget v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v0, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1842
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, v12, v11, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 1843
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v2, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 1844
    invoke-virtual {v3}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    .line 1843
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1845
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1846
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1847
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1848
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1849
    iget v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1850
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1851
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 1853
    :cond_c
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1854
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1856
    :goto_2
    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    move-object v0, p0

    move-object/from16 v3, p3

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1858
    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move v2, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    .line 1860
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 1862
    :cond_d
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1864
    :goto_3
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 1865
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v1

    .line 1866
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isDismissTargetPrimary(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v0

    invoke-virtual {p0, v10, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    if-eqz v9, :cond_e

    .line 1868
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1869
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_e
    return-void
.end method

.method setAdjustedForIme(ZJ)V
    .locals 3

    .line 1321
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1324
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateDockSide()V

    .line 1325
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/legacysplitscreen/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1326
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1327
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1328
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1329
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-nez p1, :cond_2

    .line 1339
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1341
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1342
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1343
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 1344
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1345
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mAdjustedForIme:Z

    .line 1348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setAdjustedForIme: adjustedForIme="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    .line 1349
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DividerView"

    .line 1348
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAnimationHandler(Landroid/animation/AnimationHandler;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

    return-void
.end method

.method setHidden(Z)V
    .locals 1

    .line 600
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSurfaceHidden:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 603
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSurfaceHidden:Z

    .line 604
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setMinimizedDockStack(ZJZ)V
    .locals 8

    .line 1286
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMinDock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    iput-boolean p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    .line 1288
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateDockSide()V

    .line 1289
    iget-boolean p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-eq p4, p1, :cond_3

    const/4 p4, 0x1

    .line 1290
    iput-boolean p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    .line 1291
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-eqz p1, :cond_1

    .line 1293
    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget p4, p4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 1294
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    move-result p4

    :goto_0
    move v1, p4

    if-eqz p1, :cond_2

    .line 1297
    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    .line 1296
    invoke-virtual {p4, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p4

    .line 1297
    invoke-virtual {p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p4

    goto :goto_1

    .line 1298
    :cond_2
    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    :goto_1
    move-object v2, p4

    sget-object v5, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, p2

    .line 1292
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    const/4 p4, 0x0

    .line 1300
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setAdjustedForIme(ZJ)V

    :cond_3
    if-nez p1, :cond_4

    .line 1303
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1305
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1306
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1307
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1308
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1218
    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    .line 1219
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateDockSide()V

    if-nez p1, :cond_0

    .line 1221
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resetBackground()V

    .line 1223
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1224
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-eq p2, p1, :cond_5

    .line 1225
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    .line 1226
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 1229
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->repositionSnapTargetBeforeMinimized()V

    .line 1231
    :cond_2
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    if-ne p2, p1, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_5

    .line 1232
    :cond_3
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->cancelFlingAnimation()V

    if-eqz p1, :cond_4

    .line 1235
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x1

    .line 1236
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    .line 1237
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    .line 1238
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    .line 1237
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    .line 1240
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x0

    .line 1241
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    :cond_5
    :goto_1
    return-void
.end method

.method setPointerIcon()V
    .locals 2

    .line 2074
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2075
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3f7

    goto :goto_0

    :cond_0
    const/16 p0, 0x3f6

    .line 2074
    :goto_0
    invoke-static {v1, p0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V
    .locals 0

    .line 1733
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimaryDim:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondaryDim:Landroid/view/SurfaceControl;

    :goto_0
    const p2, 0x3a83126f    # 0.001f

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_1

    .line 1736
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 1738
    :cond_1
    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1739
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    return-void
.end method

.method public startDragging(ZZ)Z
    .locals 2

    .line 627
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->cancelFlingAnimation()V

    if-eqz p2, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/common/split/DividerHandleView;->setTouching(ZZ)V

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    if-eqz p2, :cond_1

    .line 647
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setSlippery(Z)V

    .line 648
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->liftBackground()V

    .line 650
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCallback:Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;

    if-eqz p1, :cond_2

    .line 651
    invoke-interface {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;->onDraggingStart()V

    .line 653
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->inSplitMode()Z

    move-result p0

    return p0
.end method

.method public stopDragging(IFZZ)V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerHandleView;->setTouching(ZZ)V

    .line 660
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->fling(IFZZ)V

    .line 661
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setSlippery(Z)V

    .line 662
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->releaseBackground()V

    return-void
.end method
