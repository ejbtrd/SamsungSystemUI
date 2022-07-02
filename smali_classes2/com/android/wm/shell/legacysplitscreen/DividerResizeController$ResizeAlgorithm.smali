.class final Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;
.super Ljava/lang/Object;
.source "DividerResizeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResizeAlgorithm"
.end annotation


# instance fields
.field private mDismissEndThreshold:I

.field private mDismissStartThreshold:I

.field private mDisplaySize:I

.field private mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mFirstFadeOutPosition:I

.field private mFirstSplitTargetPosition:I

.field private mLastFadeOutPosition:I

.field private mLastSplitTargetPosition:I

.field private mMiddleTargetPosition:I

.field private mSplitDismissSide:I

.field private mTouchPosition:I

.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 539
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)V
    .locals 0

    .line 534
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;I)V
    .locals 0

    .line 534
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->update(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)I
    .locals 0

    .line 534
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->getMoveTargetPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)I
    .locals 0

    .line 534
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)I
    .locals 0

    .line 534
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->getSnapTargetPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)Z
    .locals 0

    .line 534
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInDismissZone()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;)V
    .locals 0

    .line 534
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 645
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-void
.end method

.method private computeSplitDismissSide()I
    .locals 1

    .line 583
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInStartDismissZone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInEndDismissZone()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getMoveTargetPosition()I
    .locals 1

    .line 616
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->getSnapTargetPosition()I

    move-result p0

    return p0

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInStartDismissZone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    return p0

    .line 620
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInEndDismissZone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    return p0

    .line 623
    :cond_2
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    return p0
.end method

.method private getSnapTargetPosition()I
    .locals 3

    .line 628
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInResizeZone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    return p0

    .line 630
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInStartDismissZone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)I

    move-result v0

    neg-int v0, v0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 632
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInEndDismissZone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDisplaySize:I

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 634
    :cond_2
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    if-ge v0, v1, :cond_3

    return v1

    .line 636
    :cond_3
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    if-le v0, v1, :cond_4

    return v1

    .line 639
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0
.end method

.method private init()V
    .locals 5

    .line 555
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$900(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 556
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$1000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDisplaySize:I

    .line 558
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    .line 559
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mMiddleTargetPosition:I

    .line 560
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    .line 561
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    .line 562
    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDisplaySize:I

    sub-int v4, v3, v0

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v4, 0x3f200000    # 0.625f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v2, v1

    .line 564
    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mFirstFadeOutPosition:I

    sub-int v0, v3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    sub-int/2addr v3, v0

    .line 566
    iput v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mLastFadeOutPosition:I

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResizeAlgorithm_init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DividerResizeController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isInDismissZone()Z
    .locals 1

    .line 650
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInStartDismissZone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->isInEndDismissZone()Z

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

.method private isInEndDismissZone()Z
    .locals 1

    .line 658
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInResizeZone()Z
    .locals 2

    .line 662
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    if-lt v0, v1, :cond_0

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInStartDismissZone()Z
    .locals 1

    .line 654
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private update(I)V
    .locals 1

    .line 572
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    if-eq v0, p1, :cond_0

    .line 573
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    .line 575
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->computeSplitDismissSide()I

    move-result p1

    .line 576
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    if-eq v0, p1, :cond_0

    .line 577
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    :cond_0
    return-void
.end method


# virtual methods
.method getDismissEndThreshold()I
    .locals 0

    .line 612
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    return p0
.end method

.method getDismissStartThreshold()I
    .locals 0

    .line 592
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    return p0
.end method

.method getFirstFadeOutPosition()I
    .locals 0

    .line 596
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mFirstFadeOutPosition:I

    return p0
.end method

.method getFirstSplitTargetPosition()I
    .locals 0

    .line 600
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    return p0
.end method

.method getLastFadeOutPosition()I
    .locals 0

    .line 608
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mLastFadeOutPosition:I

    return p0
.end method

.method getLastSplitTargetPosition()I
    .locals 0

    .line 604
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResizeAlgorithm{ds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mFirstFadeOutPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mMiddleTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mLastFadeOutPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", de="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
