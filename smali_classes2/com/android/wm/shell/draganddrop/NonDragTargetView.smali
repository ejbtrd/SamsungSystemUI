.class public Lcom/android/wm/shell/draganddrop/NonDragTargetView;
.super Landroid/widget/FrameLayout;
.source "NonDragTargetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;
    }
.end annotation


# static fields
.field private static final SINE_OUT_60:Landroid/view/animation/Interpolator;


# instance fields
.field private mCellDividerRatio:F

.field private final mContainingBounds:Landroid/graphics/Rect;

.field private final mContainingInsets:Landroid/graphics/Rect;

.field private mCornerRadius:I

.field private final mDisplayBounds:Landroid/graphics/Rect;

.field private mDividerRatio:F

.field private mDividerSize:I

.field private final mDragTargetBounds:Landroid/graphics/Rect;

.field private mDragTargetWindowingMode:I

.field private mDropSide:I

.field private mDropTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

.field private mIsFreeformDragTarget:Z

.field private mIsInitialExpanded:Z

.field private mIsNaturalSwitchingStandard:Z

.field private final mNonTargets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mPushRegion:I

.field private final mPushRegions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mPushed:Z

.field private final mPushedNonTargets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleDeltaSize:I

.field private mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

.field private final mStableRect:Landroid/graphics/Rect;

.field private mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

.field private mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    .line 90
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsInitialExpanded:Z

    const/4 p2, 0x0

    .line 91
    iput p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerRatio:F

    .line 92
    iput p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mCellDividerRatio:F

    .line 101
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 102
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingInsets:Landroid/graphics/Rect;

    .line 103
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 104
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 105
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 106
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 114
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 116
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 117
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 118
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    .line 119
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 120
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushed:Z

    .line 121
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegion:I

    .line 123
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$1800(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mCornerRadius:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Lcom/android/wm/shell/draganddrop/TaskVisibility;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mScaleDeltaSize:I

    return p0
.end method

.method static synthetic access$2100(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsNaturalSwitchingStandard:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    return p0
.end method

.method static synthetic access$3100()Landroid/view/animation/Interpolator;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private fitsToDock(Landroid/graphics/Rect;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 479
    iget p0, p0, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 482
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method

.method private generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 177
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e0

    const/16 v2, 0x318

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const/16 v1, 0x20

    .line 184
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 185
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 186
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 187
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p0, 0x0

    .line 188
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const v1, 0x800033

    .line 189
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 190
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p0, "NS:NonDragTargetView"

    .line 191
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getPrimarySide()I
    .locals 6

    .line 238
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getDockSide()I

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-eqz v1, :cond_4

    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    if-ne p0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v5

    :cond_4
    :goto_0
    return v0
.end method

.method private getPushRegion(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 291
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getReverseWindowingMode(IZ)I
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    if-ne p1, v1, :cond_5

    return v2

    .line 501
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xc

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_2

    move v1, p0

    :cond_2
    return v1

    :cond_3
    if-ne p1, p0, :cond_5

    if-eqz p2, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private getShrinkBounds(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;
    .locals 5

    .line 636
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 637
    invoke-static {p1, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1000(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 640
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->useDefaultRatio()Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 641
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr p1, v2

    div-int/2addr p1, v1

    add-int/2addr p1, v2

    .line 642
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    goto :goto_0

    .line 644
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    add-int/2addr p1, v2

    .line 645
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    :goto_0
    add-int/2addr v2, v3

    .line 648
    iget v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_3

    const/4 v1, 0x4

    if-eq v3, v1, :cond_2

    const/16 p1, 0x8

    if-eq v3, p1, :cond_1

    goto :goto_1

    .line 659
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v2

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 656
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 653
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v2

    iput p0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 650
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    return-object v0
.end method

.method private getTargetUnderPoint(II)Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;
    .locals 4

    .line 447
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 451
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, -0x1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    .line 454
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 455
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$100(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object v2

    .line 456
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 459
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->isVisibleToUser()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$700(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Lcom/android/wm/shell/draganddrop/DropTargetView;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 462
    :cond_2
    iget-boolean v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushed:Z

    if-eqz v2, :cond_3

    .line 463
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 467
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$900(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 468
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleNonTargetsInner(III)V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsFreeformDragTarget:Z

    if-eqz v0, :cond_2

    .line 400
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getPushRegion(II)I

    move-result v0

    .line 401
    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegion:I

    if-eq v1, v0, :cond_1

    .line 402
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegion:I

    if-eqz v0, :cond_2

    .line 404
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->pushNonTargets()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 411
    :cond_2
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    const/4 v1, 0x0

    if-eq v0, p3, :cond_7

    .line 412
    iput p3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    .line 413
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    if-eqz v0, :cond_3

    return-void

    :cond_3
    if-eqz p3, :cond_6

    const/16 v0, 0x10

    if-ne p3, v0, :cond_4

    goto :goto_0

    .line 420
    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsInitialExpanded:Z

    if-eqz v0, :cond_5

    .line 421
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsInitialExpanded:Z

    goto :goto_1

    .line 423
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->swapOrShrinkNonTarget(III)V

    goto :goto_1

    .line 418
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->undoNonTarget()V

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_9

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getTargetUnderPoint(II)Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 428
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eq v0, v2, :cond_a

    .line 429
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->swapOrShrinkNonTarget(III)V

    goto :goto_1

    .line 431
    :cond_9
    iget-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushed:Z

    if-eqz p1, :cond_a

    if-nez p3, :cond_a

    .line 434
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushed:Z

    .line 437
    :cond_a
    :goto_1
    iget-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushed:Z

    if-nez p1, :cond_b

    .line 438
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 439
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 440
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 441
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    return-void
.end method

.method private inDockedWindowingMode(I)Z
    .locals 1

    .line 487
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/16 p0, 0xc

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private initNonDragTargets()V
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    sget v2, Lcom/android/wm/shell/R$id;->non_target_fullscreen:I

    .line 212
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/android/wm/shell/R$id;->non_target_fullscreen_blur:I

    .line 213
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView;ILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 210
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    sget v2, Lcom/android/wm/shell/R$id;->non_target_primary:I

    .line 216
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/android/wm/shell/R$id;->non_target_primary_blur:I

    .line 217
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v5, 0x3

    invoke-direct {v1, p0, v5, v2, v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView;ILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 214
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    sget v2, Lcom/android/wm/shell/R$id;->non_target_secondary:I

    .line 220
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/android/wm/shell/R$id;->non_target_secondary_blur:I

    .line 221
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-direct {v1, p0, v5, v2, v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView;ILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 218
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    sget v2, Lcom/android/wm/shell/R$id;->non_target_cell:I

    .line 224
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/android/wm/shell/R$id;->non_target_cell_blur:I

    .line 225
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v5, 0xc

    invoke-direct {v1, p0, v5, v2, v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView;ILandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 222
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz v1, :cond_0

    .line 230
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$000(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private initResources()V
    .locals 3

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 169
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mScaleDeltaSize:I

    .line 172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mCornerRadius:I

    return-void
.end method

.method private pushNonTargets()V
    .locals 10

    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushed:Z

    .line 302
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 303
    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz v1, :cond_1

    .line 306
    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    .line 310
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 311
    invoke-static {v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$100(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object v4

    .line 312
    invoke-virtual {v4}, Landroid/widget/ImageView;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 313
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 315
    invoke-static {v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 316
    iget v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2

    .line 317
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v8, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v5, v8

    div-int/2addr v5, v6

    .line 318
    :goto_1
    iget v8, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    if-ne v8, v7, :cond_3

    .line 319
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v6

    .line 320
    :goto_2
    iget v9, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegion:I

    if-eq v9, v0, :cond_7

    if-eq v9, v6, :cond_6

    const/4 v6, 0x3

    if-eq v9, v6, :cond_5

    if-eq v9, v7, :cond_4

    goto :goto_3

    .line 334
    :cond_4
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 335
    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v8

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 330
    :cond_5
    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 331
    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 326
    :cond_6
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v5, v8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 327
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 322
    :cond_7
    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 323
    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 338
    :goto_3
    invoke-static {v3, v4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private undoNonTarget()V
    .locals 4

    .line 715
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 716
    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 717
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->inDockedWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 718
    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    const/4 v3, 0x1

    .line 720
    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getReverseWindowingMode(IZ)I

    move-result v2

    .line 719
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz v0, :cond_0

    .line 722
    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 723
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 728
    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    goto :goto_0

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz v0, :cond_2

    .line 730
    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 731
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    :cond_2
    :goto_0
    return-void
.end method

.method private useDefaultRatio()Z
    .locals 5

    .line 621
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsFreeformDragTarget:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->inDockedWindowingMode(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isHorizontalDivision()Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    .line 626
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 628
    :cond_2
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    if-eq p0, v4, :cond_4

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method addOnPreDrawListener(Ljava/lang/Runnable;)V
    .locals 3

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/draganddrop/NonDragTargetView$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$1;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method adjustNonDragTargets()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 346
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$400(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$500(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V

    .line 348
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method calculateSplitRatio()V
    .locals 8

    .line 553
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    const/4 v2, 0x3

    .line 554
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 553
    invoke-static {v0, v1, v3}, Lcom/android/internal/policy/DockedDividerUtils;->calculateSplitRatio(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsFreeformDragTarget:Z

    if-eqz v1, :cond_0

    .line 557
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerRatio:F

    return-void

    .line 560
    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushed:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eqz v1, :cond_6

    .line 561
    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    if-ne v1, v6, :cond_5

    .line 562
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 563
    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->fitsToDock(Landroid/graphics/Rect;)V

    .line 564
    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    iget-object v7, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    .line 565
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 564
    invoke-static {v1, v7, v0}, Lcom/android/internal/policy/DockedDividerUtils;->calculateSplitRatio(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mCellDividerRatio:F

    .line 566
    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegion:I

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v6, :cond_1

    goto :goto_1

    .line 580
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 581
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    .line 576
    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 577
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    .line 572
    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 573
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    .line 568
    :cond_4
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 569
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v5, v0, v1

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v5

    .line 584
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerRatio:F

    goto :goto_2

    .line 586
    :cond_5
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerRatio:F

    .line 587
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mCellDividerRatio:F

    :goto_2
    return-void

    .line 591
    :cond_6
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-nez v1, :cond_7

    return-void

    .line 594
    :cond_7
    iget v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    if-eq v2, v4, :cond_b

    if-eq v2, v3, :cond_a

    if-eq v2, v6, :cond_9

    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    goto :goto_4

    .line 608
    :cond_8
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1100(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 609
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_3

    .line 600
    :cond_9
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1100(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 601
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_3

    .line 604
    :cond_a
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1100(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 605
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_3

    .line 596
    :cond_b
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1100(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 597
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_3
    int-to-float v2, v2

    div-float v5, v1, v2

    .line 612
    :goto_4
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 613
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerRatio:F

    goto :goto_5

    .line 614
    :cond_c
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 615
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mCellDividerRatio:F

    .line 616
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerRatio:F

    :cond_d
    :goto_5
    return-void
.end method

.method expandNonTargets(I)V
    .locals 3

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsInitialExpanded:Z

    .line 514
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->inDockedWindowingMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 516
    invoke-direct {p0, v2, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getReverseWindowingMode(IZ)I

    move-result v0

    .line 515
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz v0, :cond_3

    .line 518
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 519
    invoke-static {v0, v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1000(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 520
    invoke-direct {p0, v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->fitsToDock(Landroid/graphics/Rect;)V

    if-nez p1, :cond_0

    .line 522
    invoke-static {v0, v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 524
    :cond_0
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 526
    :goto_0
    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getReverseWindowingMode(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 532
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 536
    :cond_2
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 538
    :goto_1
    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    :goto_2
    return-void
.end method

.method getCellDividerRatio()F
    .locals 0

    .line 548
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mCellDividerRatio:F

    return p0
.end method

.method getDividerRatio()F
    .locals 0

    .line 544
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerRatio:F

    return p0
.end method

.method getDropTargetWindowingMode()I
    .locals 0

    .line 746
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1400(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getPushRegion()I
    .locals 0

    .line 772
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegion:I

    return p0
.end method

.method getShrunkTargetWindowingMode()I
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1400(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getSwapTargetWindowingMode()I
    .locals 0

    .line 763
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1400(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method handleDropTargets(Landroid/view/DragEvent;)Z
    .locals 2

    .line 370
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 371
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 372
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getTargetUnderPoint(II)Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    move-result-object p1

    .line 373
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    .line 374
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$700(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Lcom/android/wm/shell/draganddrop/DropTargetView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$700(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Lcom/android/wm/shell/draganddrop/DropTargetView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$700(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Lcom/android/wm/shell/draganddrop/DropTargetView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$700(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Lcom/android/wm/shell/draganddrop/DropTargetView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 380
    :cond_1
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method handleNonTargets(Landroid/view/DragEvent;I)Z
    .locals 5

    .line 387
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    .line 388
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 389
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 390
    iget v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegion:I

    .line 392
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v4, p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->handleNonTargetsInner(III)V

    .line 394
    iget p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDropSide:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-ne v2, p1, :cond_1

    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegion:I

    if-eq v3, p0, :cond_0

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

.method hasPushRegion()Z
    .locals 0

    .line 767
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegion:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public init(ILcom/android/wm/shell/draganddrop/TaskVisibility;I)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mWm:Landroid/view/WindowManager;

    .line 136
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    .line 137
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getStableBounds(Landroid/graphics/Rect;)V

    .line 138
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 143
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 145
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 146
    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsFreeformDragTarget:Z

    .line 147
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getDisplayBounds(Landroid/graphics/Rect;)V

    if-ne p3, v0, :cond_1

    move p2, v0

    .line 148
    :cond_1
    iput-boolean p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsNaturalSwitchingStandard:Z

    .line 150
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->initResources()V

    .line 151
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->initNonDragTargets()V

    .line 153
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 154
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mWm:Landroid/view/WindowManager;

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initPushRegion(Landroid/graphics/Rect;)V
    .locals 8

    .line 260
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 261
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42340000    # 45.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 265
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->isNonTargetsHorizontal()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getPrimarySide()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 267
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v0, v3

    .line 268
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 269
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/2addr p1, v5

    sub-int v3, v0, v2

    .line 271
    iget v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    .line 272
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, p1

    invoke-direct {v5, v6, v3, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, p1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-direct {v4, v5, v3, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 277
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getPrimarySide()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 278
    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v0, v1

    .line 279
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 280
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int v1, v0, v2

    .line 282
    iget v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDividerSize:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 283
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x78

    invoke-direct {v3, v1, v4, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    const/4 v3, 0x4

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, p1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v1, v5, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public isNonTargetsHorizontal()Z
    .locals 4

    .line 355
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mIsFreeformDragTarget:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isHorizontalDivision()Z

    move-result p0

    return p0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isHorizontalDivision()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    .line 360
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    if-eq p0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 362
    :cond_2
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    if-ne p0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method isShrunkTargetChanged()Z
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 757
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 758
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {v1, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1000(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 759
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1500(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method remove()V
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 737
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 738
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->isVisibleToUser()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 739
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method startTransition(Z)V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 778
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 779
    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {v1, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method swapOrShrinkNonTarget(III)V
    .locals 1

    .line 666
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->undoNonTarget()V

    .line 667
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getTargetUnderPoint(II)Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    move-result-object p1

    .line 668
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 669
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 670
    iput-boolean p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushed:Z

    :cond_0
    if-eqz p1, :cond_7

    .line 673
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 674
    iget p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-direct {p0, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->inDockedWindowingMode(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 675
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->inDockedWindowingMode(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 676
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getShrinkBounds(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p2

    .line 677
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 678
    invoke-static {p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 680
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isHorizontalDivision()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p3, v0, :cond_3

    const/4 p2, 0x4

    if-eq p3, p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    .line 682
    invoke-virtual {p2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isHorizontalDivision()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x2

    if-eq p3, p2, :cond_3

    const/16 p2, 0x8

    if-ne p3, p2, :cond_4

    .line 684
    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 685
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getShrinkBounds(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p0

    .line 686
    invoke-static {p1, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 688
    :cond_4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 689
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-static {p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 690
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->bringToFront()V

    .line 691
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    iget p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 692
    invoke-direct {p0, p2, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getReverseWindowingMode(IZ)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    if-eqz p1, :cond_7

    .line 694
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    .line 695
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 696
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/16 p2, 0x10

    if-eq p3, p2, :cond_7

    .line 702
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 703
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->bringToFront()V

    .line 704
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-static {p1, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 707
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->getShrinkBounds(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object p2

    .line 708
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    .line 709
    invoke-static {p1, p2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V

    :cond_7
    :goto_0
    return-void
.end method
