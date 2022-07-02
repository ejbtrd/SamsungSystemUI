.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FreeformContainerFolderView.java"

# interfaces
.implements Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;,
        Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;,
        Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

.field private mAnimatingSpringX:Z

.field private mAnimatingSpringY:Z

.field private mBlockDataUpdate:Z

.field private final mContext:Landroid/content/Context;

.field private mDraggingIconReturnLocation:[I

.field private mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

.field private mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

.field private mDraggingIconView:Landroid/widget/ImageView;

.field private mEasyModeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

.field private mHeight:I

.field private mIsCollapseAnimating:Z

.field private mIsExpandAnimating:Z

.field private mIsExpanded:Z

.field private mItemAddedWhileAnimating:Z

.field private final mItemDecoration:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

.field private mItemSize:I

.field private mLastPositionX:F

.field private mLastPositionY:F

.field private mLastScrollState:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mMaxFolderViewWidth:I

.field private mMaxVisibleIconCount:I

.field private final mOpenFolderRunnable:Ljava/lang/Runnable;

.field private final mOutline:Landroid/graphics/Outline;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private final mStrokePath:Landroid/graphics/Path;

.field private mTargetIconView:Landroid/widget/ImageView;

.field private mTargetItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

.field private mThresholdToMove:I

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$4QXYpWoBCFDS4AkrDQwZuYn2eYE(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->lambda$animateExpand$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7X_LyduwQOTsnAH8GqGYSS8pcIo(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->lambda$animateCollapse$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PSozjKAZmLWlqW5VEO-Hb1EEzpw(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->lambda$init$0(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 195
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    const/4 p2, 0x0

    .line 90
    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 98
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mOutline:Landroid/graphics/Outline;

    .line 99
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mStrokePath:Landroid/graphics/Path;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mStrokePaint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsExpanded:Z

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsExpandAnimating:Z

    .line 108
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mBlockDataUpdate:Z

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    .line 113
    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastScrollState:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 114
    iput-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    .line 117
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringX:Z

    .line 118
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringY:Z

    .line 120
    new-instance v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    iput-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mOpenFolderRunnable:Ljava/lang/Runnable;

    .line 196
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    .line 197
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 200
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 201
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v3

    invoke-direct {v2, p1, v1, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 202
    new-instance p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    .line 203
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

    .line 205
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 206
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 207
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 208
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 210
    new-instance p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$2;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastScrollState:I

    return p0
.end method

.method static synthetic access$1102(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastScrollState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->finishDraggingAppIcon()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringX:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1702(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringY:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)F
    .locals 0

    .line 71
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastPositionX:F

    return p0
.end method

.method static synthetic access$1802(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;F)F
    .locals 0

    .line 71
    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastPositionX:F

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)F
    .locals 0

    .line 71
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastPositionY:F

    return p0
.end method

.method static synthetic access$1902(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;F)F
    .locals 0

    .line 71
    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastPositionY:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemSize:I

    return p0
.end method

.method static synthetic access$2000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mMaxVisibleIconCount:I

    return p0
.end method

.method static synthetic access$2100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/graphics/Rect;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Landroid/graphics/Rect;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->getDraggingAppIconBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mThresholdToMove:I

    return p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->startDraggingAppIcon()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/view/LayoutInflater;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mBlockDataUpdate:Z

    return p0
.end method

.method static synthetic access$402(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mBlockDataUpdate:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    return p0
.end method

.method static synthetic access$502(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsExpandAnimating:Z

    return p0
.end method

.method static synthetic access$802(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsExpandAnimating:Z

    return p1
.end method

.method private animateCollapse()V
    .locals 2

    .line 539
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[FolderView] animateToCloseFolderView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    .line 541
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createFolderCollapseAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p0

    .line 551
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private animateExpand()V
    .locals 4

    const/4 v0, 0x1

    .line 519
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsExpandAnimating:Z

    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 522
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 525
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;

    if-nez v2, :cond_0

    goto :goto_1

    .line 529
    :cond_0
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_1
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createFolderExpandAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 535
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mOpenFolderRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private animateToReturnDraggingAppIconView()V
    .locals 14

    .line 559
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 561
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    int-to-float v4, v4

    const/4 v5, 0x1

    .line 562
    aget v2, v2, v5

    int-to-float v2, v2

    sub-float v6, v0, v4

    .line 565
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    iput-boolean v6, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringX:Z

    sub-float v6, v1, v2

    .line 566
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    move v3, v5

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringY:Z

    .line 568
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result v3

    if-nez v3, :cond_3

    .line 569
    sget-boolean v3, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FolderView] animateToReturnDraggingAppIconView: spring failed, from=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], to=["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "], call finishDraggingAppIcon()"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->finishDraggingAppIcon()V

    return-void

    .line 578
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v3}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    .line 579
    new-instance v5, Lcom/facebook/rebound/SpringConfig;

    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide/high16 v8, 0x4032000000000000L    # 18.0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 580
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    const-wide v10, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-virtual {v3, v10, v11}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 581
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    invoke-virtual {v3, v10, v11}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 582
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    new-instance v5, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$3;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 603
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v12, v0

    invoke-virtual {v3, v12, v13}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 604
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v3, v4

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 606
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    .line 607
    new-instance v3, Lcom/facebook/rebound/SpringConfig;

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v0, v3}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 608
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v10, v11}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 610
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v10, v11}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 612
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    new-instance v3, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$4;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    invoke-virtual {v0, v3}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 633
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 634
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    float-to-double v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method private calculateMaxFolderViewWidth()V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 236
    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemSize:I

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

    iget v3, v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mMaxVisibleIconCount:I

    mul-int/2addr v1, v3

    iget-object v4, v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iget v2, v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemOverlapWidth:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mMaxFolderViewWidth:I

    :goto_0
    const/4 v1, 0x2

    if-lt v3, v1, :cond_1

    .line 240
    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mMaxFolderViewWidth:I

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemSize:I

    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

    iget v4, v4, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mMaxFolderViewWidth:I

    if-gt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private calculateMaxVisibleIconCount()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 225
    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mMaxVisibleIconCount:I

    goto :goto_1

    .line 227
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 228
    :goto_0
    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mMaxVisibleIconCount:I

    :goto_1
    return-void
.end method

.method private finishDraggingAppIcon()V
    .locals 3

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    :cond_1
    const/4 v0, 0x0

    .line 434
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringX:Z

    .line 435
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringY:Z

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 438
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 439
    iput-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    .line 440
    iput-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private getDraggingAppIconBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 361
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 362
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 363
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    .line 362
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private isSpringAnimating()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringX:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAnimatingSpringY:Z

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

.method private synthetic lambda$animateCollapse$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 542
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 543
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 545
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 546
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 547
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    const-string v0, "fullscreen_mode_request_folder"

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 548
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    .line 549
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->updateFolderSize()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateExpand$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 533
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/net/Uri;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->calculateMaxVisibleIconCount()V

    return-void
.end method

.method private startDraggingAppIcon()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 418
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLocationOnScreen()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    .line 419
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateFolderSize()V
    .locals 7

    .line 367
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->calculateMaxFolderViewWidth()V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->getItemMargin()Landroid/graphics/Rect;

    move-result-object v1

    .line 376
    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mWidth:I

    .line 377
    iget v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mHeight:I

    .line 379
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

    iget-object v5, v4, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iget v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemSize:I

    mul-int/2addr v5, v0

    add-int/2addr v6, v5

    iget v4, v4, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v6, v4

    iput v6, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mWidth:I

    .line 383
    iget v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mMaxFolderViewWidth:I

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mWidth:I

    .line 385
    iget v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemSize:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mHeight:I

    if-ne v2, v4, :cond_1

    if-eq v3, v5, :cond_2

    .line 388
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 389
    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 390
    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 391
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    sget-boolean v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FolderView] updateFolderSize: itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size=("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mWidth:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FreeformContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private updateStrokePath()V
    .locals 4

    .line 291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mOutline:Landroid/graphics/Outline;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    .line 293
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mStrokePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v2}, Landroid/graphics/Outline;->getRadius()F

    move-result v2

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {p0}, Landroid/graphics/Outline;->getRadius()F

    move-result p0

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method collapse(Z)V
    .locals 3

    .line 314
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsExpanded:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsExpanded:Z

    .line 316
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mBlockDataUpdate:Z

    .line 317
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    .line 319
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->finishDraggingAppIcon()V

    .line 322
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mOpenFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 327
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;

    if-nez v2, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->animateCollapse()V

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 338
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 339
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    const-string p1, "fullscreen_mode_request_folder"

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 282
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->updateStrokePath()V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mStrokePath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method expand(Z)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    const-string v1, "fullscreen_mode_request_folder"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsExpanded:Z

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->animateExpand()V

    :cond_0
    return-void
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 345
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 346
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 347
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mWidth:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 348
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mHeight:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method getFolderHeight()I
    .locals 0

    .line 356
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mHeight:I

    return p0
.end method

.method getFolderWidth()I
    .locals 0

    .line 352
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mWidth:I

    return p0
.end method

.method init(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;)V
    .locals 3

    .line 248
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    .line 249
    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->registerCallback(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;)V

    .line 250
    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    .line 252
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$id;->freeform_container_folder_dragging_icon_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 254
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->freeform_container_outer_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemSize:I

    .line 256
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->access$1300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;)V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->freeform_container_folder_position_padding_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mPaddingLeft:I

    .line 259
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->freeform_container_folder_position_padding_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mPaddingRight:I

    .line 261
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->freeform_container_move_interval:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mThresholdToMove:I

    .line 264
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->freeform_container_folder_stroke_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->freeform_container_folder_stroke_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 267
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 270
    new-instance p2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mEasyModeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "easy_mode_switch"

    .line 272
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 271
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->calculateMaxVisibleIconCount()V

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->calculateMaxFolderViewWidth()V

    const/16 p1, 0x8

    .line 277
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method isCollapseAnimating()Z
    .locals 0

    .line 555
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 485
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onItemAdded(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 0

    .line 448
    iget-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mBlockDataUpdate:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 449
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    .line 450
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "FreeformContainer"

    const-string p1, "[FolderView] onItemAdded: item is added while opening folder"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 453
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method public onItemRemoved(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 1

    .line 459
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 460
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 461
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZ)V

    .line 463
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    if-nez p1, :cond_1

    .line 464
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->updateFolderSize()V

    .line 466
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->finishDraggingAppIcon()V

    return-void
.end method

.method public onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 0

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 491
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastPositionX:F

    sub-float v4, v0, v4

    add-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 498
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result v2

    iget v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastPositionY:F

    sub-float v4, v1, v4

    add-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 499
    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastPositionX:F

    .line 500
    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mLastPositionY:F

    .line 501
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->getDraggingAppIconBounds(Landroid/graphics/Rect;)V

    .line 502
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->notifyIconPositionChanged(Landroid/graphics/Rect;)V

    return v3

    .line 506
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->getDraggingAppIconBounds(Landroid/graphics/Rect;)V

    .line 507
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTargetItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->hideDismissButtonAndDismissIcon(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 509
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isEnterDismissButton()Z

    move-result p1

    if-nez p1, :cond_2

    .line 510
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->animateToReturnDraggingAppIconView()V

    :cond_2
    return v3

    .line 515
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewDestroyed()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mEasyModeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method setFolderPosition(Landroid/graphics/PointF;)V
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v1

    iget v3, p1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v3

    float-to-int v1, v1

    iget v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mWidth:I

    add-int/2addr v1, v5

    float-to-int v3, v3

    iget v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mHeight:I

    add-int/2addr v3, v5

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 403
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    .line 404
    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mPaddingLeft:I

    neg-int v2, v2

    iget v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mPaddingRight:I

    neg-int v3, v3

    .line 403
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 405
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setX(F)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setY(F)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 408
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 409
    sget-boolean p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FolderView] setFolderPosition: x="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",y="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", view="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
