.class public final Lcom/android/wm/shell/pip/PipBoundsState;
.super Ljava/lang/Object;
.source "PipBoundsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;,
        Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PipBoundsState"


# instance fields
.field private mAspectRatio:F

.field private final mBounds:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private final mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private final mExpandedMovementBounds:Landroid/graphics/Rect;

.field private mHasUserResizedPip:Z

.field private mImeHeight:I

.field private mIsImeShowing:Z

.field private mIsShelfShowing:Z

.field private mLastPipComponentName:Landroid/content/ComponentName;

.field private final mMaxSize:Landroid/graphics/Point;

.field private mMinEdgeSize:I

.field private final mMinSize:Landroid/graphics/Point;

.field private final mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

.field private final mMovementBounds:Landroid/graphics/Rect;

.field private final mNormalBounds:Landroid/graphics/Rect;

.field private final mNormalMovementBounds:Landroid/graphics/Rect;

.field private mOnMinimalSizeChangeCallback:Ljava/lang/Runnable;

.field private mOnPipExclusionBoundsChangeCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShelfVisibilityChangeCallback:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideMinSize:Landroid/util/Size;

.field private mPipEdgeMargin:I

.field private mPipReentryState:Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

.field private mShelfHeight:I

.field private final mStashInsetBounds:Landroid/graphics/Rect;

.field private mStashOffset:I

.field private mStashedState:I

.field private final mSwipeToHomeBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mBounds:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    .line 77
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMinSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 84
    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayId:I

    .line 85
    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 90
    new-instance v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashInsetBounds:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mSwipeToHomeBounds:Landroid/graphics/Rect;

    .line 112
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->reloadResources()V

    return-void
.end method

.method private reloadResources()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->pip_stash_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 125
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->pip_stash_handle_margin_to_edge_handle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mPipEdgeMargin:I

    return-void
.end method


# virtual methods
.method clearReentryState()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/wm/shell/pip/PipBoundsState;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mNormalBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mExpandedBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMovementBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mNormalMovementBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mExpandedMovementBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastPipComponentName="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mLastPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayLayout="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStashedState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStashOffset="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMinEdgeSize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMinEdgeSize:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOverrideMinSize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOverrideMinSize:Landroid/util/Size;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsImeShowing="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImeHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsShelfShowing="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsShelfShowing:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mShelfHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mShelfHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    if-nez p2, :cond_0

    .line 579
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPipReentryState=null"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 583
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getAspectRatio()F
    .locals 0

    .line 271
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getDisplayBounds()Landroid/graphics/Rect;
    .locals 3

    .line 314
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getDisplayId()I
    .locals 0

    .line 303
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayId:I

    return p0
.end method

.method public getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    return-object p0
.end method

.method public getExpandedBounds()Landroid/graphics/Rect;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getExpandedMovementBounds()Landroid/graphics/Rect;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedMovementBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getImeHeight()I
    .locals 0

    .line 383
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    return p0
.end method

.method public getLastPipComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mLastPipComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getMaxSize()Landroid/graphics/Point;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public getMinEdgeSize()I
    .locals 0

    .line 340
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMinEdgeSize:I

    return p0
.end method

.method public getMotionBoundsState()Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    return-object p0
.end method

.method public getMovementBounds()Landroid/graphics/Rect;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getNormalBounds()Landroid/graphics/Rect;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getNormalMovementBounds()Landroid/graphics/Rect;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getOverrideMinEdgeSize()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOverrideMinSize:Landroid/util/Size;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 361
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOverrideMinSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getOverrideMinSize()Landroid/util/Size;
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOverrideMinSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPipEdgeMargin()I
    .locals 0

    .line 260
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mPipEdgeMargin:I

    return p0
.end method

.method public getReentryState()Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    return-object p0
.end method

.method public getShelfHeight()I
    .locals 0

    .line 423
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mShelfHeight:I

    return p0
.end method

.method public getStashInsets()Landroid/graphics/Rect;
    .locals 5

    .line 463
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getNavigationBarPosition(Landroid/content/res/Resources;)I

    move-result v1

    .line 465
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/wm/shell/pip/phone/EdgePanelSupport;->getEdgeScreenPosition(Landroid/content/Context;)I

    move-result v2

    .line 466
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-ne v2, v3, :cond_3

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashInsetBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 468
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashInsetBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 472
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashInsetBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getStashOffset()I
    .locals 0

    .line 254
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    return p0
.end method

.method public getStashedState()I
    .locals 0

    .line 244
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    return p0
.end method

.method public getSwipeToHomeBounds()Landroid/graphics/Rect;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mSwipeToHomeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hasUserResizedPip()Z
    .locals 0

    .line 428
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    return p0
.end method

.method public isImeShowing()Z
    .locals 0

    .line 378
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    return p0
.end method

.method public isShelfShowing()Z
    .locals 0

    .line 418
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsShelfShowing:Z

    return p0
.end method

.method public isStashed()Z
    .locals 0

    .line 249
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->reloadResources()V

    return-void
.end method

.method public saveReentryState(Landroid/util/Size;F)V
    .locals 1

    .line 276
    new-instance v0, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;-><init>(Landroid/util/Size;F)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 134
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOnPipExclusionBoundsChangeCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 135
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setBoundsStateForEntry(Landroid/content/ComponentName;FLandroid/util/Size;)V
    .locals 0

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setLastPipComponentName(Landroid/content/ComponentName;)V

    .line 412
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/PipBoundsState;->setAspectRatio(F)V

    .line 413
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/PipBoundsState;->setOverrideMinSize(Landroid/util/Size;)V

    return-void
.end method

.method public setDisplayId(I)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayId:I

    return-void
.end method

.method public setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method public setExpandedBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setExpandedMovementBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setHasUserResizedPip(Z)V
    .locals 0

    .line 433
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    return-void
.end method

.method public setImeVisibility(ZI)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    .line 373
    iput p2, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    return-void
.end method

.method public setLastPipComponentName(Landroid/content/ComponentName;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mLastPipComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 288
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mLastPipComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->clearReentryState()V

    const/4 p1, 0x0

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setHasUserResizedPip(Z)V

    :cond_0
    return-void
.end method

.method public setMaxSize(II)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setMinEdgeSize(I)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMinEdgeSize:I

    return-void
.end method

.method public setMinSize(II)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mMinSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setNormalBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setNormalMovementBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOnMinimalSizeChangeCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOnMinimalSizeChangeCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnShelfVisibilityChangeCallback(Lcom/android/internal/util/function/TriConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOnShelfVisibilityChangeCallback:Lcom/android/internal/util/function/TriConsumer;

    return-void
.end method

.method public setOverrideMinSize(Landroid/util/Size;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOverrideMinSize:Landroid/util/Size;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 346
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOverrideMinSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 347
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOnMinimalSizeChangeCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 348
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setPipExclusionBoundsChangeCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 455
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOnPipExclusionBoundsChangeCallback:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setShelfVisibility(ZI)V
    .locals 1

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->setShelfVisibility(ZIZ)V

    return-void
.end method

.method public setShelfVisibility(ZIZ)V
    .locals 2

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 394
    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsShelfShowing:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mShelfHeight:I

    if-ne p2, v0, :cond_1

    return-void

    .line 398
    :cond_1
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsShelfShowing:Z

    .line 399
    iput p2, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mShelfHeight:I

    .line 400
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mOnShelfVisibilityChangeCallback:Lcom/android/internal/util/function/TriConsumer;

    if-eqz p2, :cond_2

    .line 401
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mShelfHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 402
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 401
    invoke-interface {p2, p1, p0, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setStashed(I)V
    .locals 1

    .line 225
    iget v0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 229
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 231
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    new-instance v0, Landroid/app/PictureInPictureUiState;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p1}, Landroid/app/PictureInPictureUiState;-><init>(Z)V

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->onPictureInPictureStateChanged(Landroid/app/PictureInPictureUiState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 235
    :catch_0
    sget-object p0, Lcom/android/wm/shell/pip/PipBoundsState;->TAG:Ljava/lang/String;

    const-string p1, "Unable to set alert PiP state change."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setSwipeToHomeBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState;->mSwipeToHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
