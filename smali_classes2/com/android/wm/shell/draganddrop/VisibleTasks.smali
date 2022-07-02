.class public Lcom/android/wm/shell/draganddrop/VisibleTasks;
.super Ljava/lang/Object;
.source "VisibleTasks.java"


# instance fields
.field private final mDisplayId:I

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;


# direct methods
.method public static synthetic $r8$lambda$braw-yKNE5e89qmLVkdCL---k4E(ILjava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->lambda$getTasksException$0(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$d9b8I2YWiDIR7Hy76FbXplSTuMU(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->lambda$getTasksException$1(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ILcom/android/wm/shell/ISplitScreenController;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mMap:Ljava/util/Map;

    .line 43
    iput p1, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mDisplayId:I

    .line 44
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    return-void
.end method

.method private static synthetic lambda$getTasksException$0(ILjava/util/Map$Entry;)Z
    .locals 0

    .line 78
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getTasksException$1(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 0

    .line 79
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getFullscreenTasks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getTasksException(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;

    .line 79
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method getVisibleTasks()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public update()V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mSplitScreen:Lcom/android/wm/shell/ISplitScreenController;

    invoke-interface {v0}, Lcom/android/wm/shell/ISplitScreenController;->getDockSide()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getVisibleTasks()Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 52
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v4, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mDisplayId:I

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->convertWindowingModeToTarget(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_2

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
