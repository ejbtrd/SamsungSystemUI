.class Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"


# static fields
.field private static final CONTROLLED_ACTIVITY_TYPES:[I

.field private static final CONTROLLED_WINDOWING_MODES:[I

.field private static final CONTROLLED_WINDOWING_MODES_FOR_CELL:[I

.field private static final HOME_AND_RECENTS:[I


# instance fields
.field private final mDockedRect:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDockedRect"
        }
    .end annotation
.end field

.field private final mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Landroid/window/TaskOrganizer;

.field private final mTmpRect1:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDockedRect"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$LUI1-ymej4pPl_I_peKCYFQa-Eg(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->lambda$buildEnterSplit$0(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_CcrZoM8TaRGjIbcv_artBAQg5A(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->lambda$buildDismissSplit$1(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 81
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->HOME_AND_RECENTS:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 82
    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_ACTIVITY_TYPES:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 88
    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_WINDOWING_MODES:[I

    new-array v0, v0, [I

    .line 95
    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_WINDOWING_MODES_FOR_CELL:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x4
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xc
        0x0
    .end array-data
.end method

.method constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/window/TaskOrganizer;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    .line 113
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 114
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    return-void
.end method

.method static buildDismissSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 450
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildDismissSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;ZZ)V

    return-void
.end method

.method static buildDismissSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;ZZ)V
    .locals 7

    .line 459
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTaskOrganizer()Landroid/window/TaskOrganizer;

    move-result-object p2

    .line 460
    iget-object v0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    .line 461
    invoke-virtual {p2, v0, v1}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v0

    .line 462
    iget-object v2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 463
    invoke-virtual {p2, v2, v1}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v2

    .line 473
    sget-object v3, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->HOME_AND_RECENTS:[I

    const/4 v4, 0x0

    .line 474
    invoke-virtual {p2, v4, v3}, Landroid/window/TaskOrganizer;->getRootTasks(I[I)Ljava/util/List;

    move-result-object p2

    .line 476
    new-instance v3, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    invoke-interface {p2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 479
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    if-nez p4, :cond_2

    .line 490
    iget-object p4, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->topLaunchHome:Z

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move p4, v4

    goto :goto_1

    :cond_2
    :goto_0
    move p4, v3

    :goto_1
    invoke-virtual {p0, p4}, Landroid/window/WindowContainerTransaction;->setDismissByHome(Z)V

    .line 494
    invoke-virtual {p0, v3}, Landroid/window/WindowContainerTransaction;->setDismissSplit(Z)V

    .line 498
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getSyncId()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Landroid/window/WindowContainerTransaction;->setSyncTransactionId(J)V

    .line 499
    invoke-virtual {p0, v3}, Landroid/window/WindowContainerTransaction;->setReason(I)V

    if-eqz p3, :cond_4

    .line 514
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    :goto_2
    if-ltz p3, :cond_3

    .line 515
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p4, v1, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 521
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    :goto_3
    if-ltz p3, :cond_9

    .line 522
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 523
    iget-object v0, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0, v1, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 524
    invoke-static {p4}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 560
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    :goto_4
    if-ltz p3, :cond_6

    .line 561
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p4}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_5

    .line 564
    :cond_5
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p4, v1, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    .line 569
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    :goto_6
    if-ltz p3, :cond_8

    .line 570
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 571
    invoke-static {p4}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 572
    iget-object v5, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v5, v1, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 574
    iget-object v5, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v5, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 575
    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p4, v4}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_7
    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    .line 578
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    :goto_7
    if-ltz p3, :cond_9

    .line 579
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p4, v1, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p3, p3, -0x1

    goto :goto_7

    .line 591
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    :goto_8
    if-ltz p3, :cond_a

    .line 592
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p4, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 593
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p4, v4}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p3, p3, -0x1

    goto :goto_8

    .line 596
    :cond_a
    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1, v3}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method static determineWindowContainerToken(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;I)Landroid/window/WindowContainerToken;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 626
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 628
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 394
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

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

.method private static synthetic lambda$buildDismissSplit$1(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    .line 476
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 477
    invoke-virtual {p1, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

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

.method private static synthetic lambda$buildEnterSplit$0(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isAnimatingByRecent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isPairTask:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method applyDismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyDismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;ZZ)V

    return-void
.end method

.method applyDismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;ZZ)V
    .locals 3

    .line 410
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 413
    iget-object v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    .line 416
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildDismissSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;ZZ)V

    .line 423
    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 424
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerResizeController()Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    move-result-object p1

    .line 425
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->isResizing()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 427
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->handleDismissPrimary(Landroid/window/WindowContainerTransaction;)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->handleDismissSecondary(Landroid/window/WindowContainerTransaction;)V

    .line 433
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method applyEnterSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z
    .locals 4

    .line 260
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 261
    iget-object v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    sget-object v2, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_WINDOWING_MODES:[I

    sget-object v3, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_ACTIVITY_TYPES:[I

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    .line 263
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildEnterSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z

    move-result p1

    .line 267
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return p1
.end method

.method applyHomeTasksMinimized(Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z
    .locals 6

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->getHomeAndRecentsTasks(Ljava/util/List;Landroid/window/WindowContainerToken;)Z

    move-result p0

    .line 216
    new-instance p2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ltz v2, :cond_4

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v5, 0x2

    .line 220
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 221
    iget-object v4, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v4

    if-eq v2, v5, :cond_0

    if-nez v2, :cond_1

    if-eqz v4, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    if-ne v1, v4, :cond_2

    .line 225
    iget-object v2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v2

    :goto_0
    iput v2, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v4, :cond_3

    .line 227
    iget-object v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    :goto_1
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 232
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_5

    .line 238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, v2, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 239
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, v2, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 251
    :cond_5
    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return p0
.end method

.method applyResizeSplits(ILcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)V
    .locals 1

    const/4 v0, -0x1

    .line 149
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyResizeSplits(ILcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;I)V

    return-void
.end method

.method applyResizeSplits(ILcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;I)V
    .locals 0

    .line 155
    new-instance p3, Landroid/window/WindowContainerTransaction;

    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 160
    invoke-virtual {p2, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 164
    iget-object p1, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 165
    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 168
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerResizeController()Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->isResizing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerResizeController()Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->handleResizeSplit(Landroid/window/WindowContainerTransaction;)V

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p0, p3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method buildEnterSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 285
    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 286
    invoke-virtual {v3, v4, v5}, Landroid/window/TaskOrganizer;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v3

    .line 287
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    return v4

    .line 292
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getSyncId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/window/WindowContainerTransaction;->setSyncTransactionId(J)V

    const/4 v6, 0x1

    .line 295
    invoke-virtual {v1, v6}, Landroid/window/WindowContainerTransaction;->setEnterSplit(Z)V

    .line 299
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy$$ExternalSyntheticLambda1;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 301
    invoke-interface {v7}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 304
    invoke-virtual {v7}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    :cond_1
    move-object v7, v5

    .line 314
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    move v12, v4

    move-object v9, v5

    move-object v13, v9

    move v10, v6

    move v11, v10

    :goto_1
    if-ltz v8, :cond_10

    .line 315
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 317
    iget-boolean v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez v15, :cond_2

    iget v15, v14, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v4, 0x2

    if-eq v15, v4, :cond_2

    goto/16 :goto_9

    .line 321
    :cond_2
    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    .line 322
    sget-object v15, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_WINDOWING_MODES:[I

    invoke-static {v15, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v15

    const/4 v5, 0x4

    if-eqz v15, :cond_8

    sget-object v15, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 323
    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v6

    invoke-static {v15, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_8

    if-ne v4, v5, :cond_3

    goto :goto_4

    .line 346
    :cond_3
    invoke-static {v14}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v9, v14

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v7, :cond_6

    .line 350
    invoke-static {v14}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 351
    iget-object v4, v14, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v5, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 352
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v13, :cond_7

    .line 353
    iget-object v4, v13, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v5, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v4, v5, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_3

    :cond_5
    move-object v13, v14

    goto :goto_3

    :cond_6
    const/4 v6, 0x1

    .line 360
    iget-object v4, v14, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v5, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v4, v5, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_7
    :goto_3
    if-eqz v9, :cond_f

    .line 364
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->setHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_9

    .line 328
    :cond_8
    :goto_4
    iget-object v4, v14, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    .line 330
    :goto_5
    iget-object v4, v14, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    if-ne v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-eqz v9, :cond_b

    if-eqz v4, :cond_b

    const/4 v12, 0x1

    :cond_b
    if-eqz v6, :cond_d

    .line 336
    iget v4, v14, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eqz v4, :cond_c

    const/4 v6, 0x0

    goto :goto_7

    :cond_c
    const/4 v6, 0x1

    :goto_7
    move v10, v6

    goto :goto_9

    :cond_d
    if-eqz v4, :cond_f

    .line 338
    iget v4, v14, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eqz v4, :cond_e

    const/4 v6, 0x0

    goto :goto_8

    :cond_e
    const/4 v6, 0x1

    :goto_8
    move v11, v6

    :cond_f
    :goto_9
    add-int/lit8 v8, v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_10
    if-eqz v9, :cond_11

    if-nez v10, :cond_12

    if-nez v11, :cond_12

    :cond_11
    const/4 v12, 0x1

    .line 375
    :cond_12
    iget-object v3, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 376
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyHomeTasksMinimized(Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    if-eqz v9, :cond_13

    .line 378
    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    :cond_13
    if-nez v12, :cond_14

    .line 387
    iget-object v2, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_14
    return v0
.end method

.method dismissOrMaximizeDocked(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V
    .locals 1

    .line 119
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    const/4 p1, 0x1

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->startDismissSplit(ZZ)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyDismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V

    :goto_0
    return-void
.end method

.method finishRemoteConfigChanges()V
    .locals 2

    .line 641
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->finishRemoteConfigChanges(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to continueDisplayChanage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManagerProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method getHomeAndRecentsTasks(Ljava/util/List;Landroid/window/WindowContainerToken;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Landroid/window/WindowContainerToken;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    sget-object p2, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->HOME_AND_RECENTS:[I

    invoke-virtual {p0, v0, p2}, Landroid/window/TaskOrganizer;->getRootTasks(I[I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    sget-object v1, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->HOME_AND_RECENTS:[I

    invoke-virtual {p0, p2, v1}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object p0

    .line 188
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    move v1, v0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 189
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 190
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 192
    iget-boolean v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queueIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    return p0
.end method

.method runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public setResizing(Z)V
    .locals 1

    .line 128
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->setSplitScreenResizing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error calling setDockedStackResizing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManagerProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 139
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 139
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "WindowManagerProxy"

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set touchable region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method swapTasksInSplitScreenMode(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Z)V
    .locals 12

    .line 650
    iget-object v0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getSplitLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    .line 654
    iget-object v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v1

    const-string v2, "WindowManagerProxy"

    if-nez v1, :cond_1

    const-string/jumbo p0, "swapTasksInSplitScreenMode: Cannot found dividerView!"

    .line 656
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 659
    :cond_1
    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 660
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 661
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTaskOrganizer()Landroid/window/TaskOrganizer;

    move-result-object v4

    .line 662
    iget-object v5, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v5

    .line 664
    iget-object v7, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v7, v6}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v4

    .line 666
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v8}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->isHomeOrRecentTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_2

    .line 671
    :cond_2
    sget-boolean v8, Lcom/android/wm/shell/CoreShellRune;->MW_SAFE_DEBUG_LOG:Z

    if-eqz v8, :cond_3

    .line 672
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "swapTasksInSplitScreenMode: Callers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_3
    iget-object v8, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v8}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getFocusedTaskWindowingMode()I

    move-result v8

    .line 678
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v10, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11, v11}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;ZZ)Landroid/window/WindowContainerTransaction;

    .line 679
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v10, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v3, v9, v10, v11, v11}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;ZZ)Landroid/window/WindowContainerTransaction;

    if-eqz p2, :cond_4

    .line 681
    invoke-virtual {v3, v11}, Landroid/window/WindowContainerTransaction;->setSwitchingSplitScreen(Z)V

    .line 682
    iget-object p2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v3, p2, v11}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 683
    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v3, p1, v11}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 687
    :cond_4
    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getInvertedCurrentPosition()I

    move-result p1

    .line 689
    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p2

    const/4 v9, 0x0

    invoke-virtual {p2, p1, v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    .line 690
    iget p2, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v0, p2, v3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 691
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p0, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 692
    iget p0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v1, p0, p0, p1, v6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x3

    const/4 p1, -0x1

    if-ne v8, p0, :cond_5

    .line 696
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_5
    const/4 p0, 0x4

    if-ne v8, p0, :cond_6

    .line 698
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_6
    move p0, p1

    :goto_0
    if-eq p0, p1, :cond_7

    .line 702
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "swapTasksInSplitScreenMode: request focus, tid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 705
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 709
    :goto_1
    iget-object p1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateFocusedTaskWindowingMode(I)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    const-string/jumbo p0, "swapTasksInSplitScreenMode: getChildTasks is empty"

    .line 667
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
