.class Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;
.super Ljava/lang/Object;
.source "DragAndDropPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragSession"
.end annotation


# instance fields
.field final displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field dragData:Landroid/content/Intent;

.field dragItemSupportsSplitscreen:Z

.field private isDragDataDropResolver:Z

.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private final mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

.field private final mInitialDragData:Landroid/content/ClipData;

.field private final mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

.field runningTaskActType:I
    .annotation build Landroid/app/WindowConfiguration$ActivityType;
    .end annotation
.end field

.field runningTaskId:I

.field runningTaskIsResizeable:Z

.field runningTaskIsSupportMultiWindow:Z

.field runningTaskWinMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ywrHhuVfpxTJtChCsIoxoYoQnMs(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->lambda$getNonFloatingTopVisibleTask$0(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V
    .locals 1

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 882
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskWinMode:I

    const/4 v0, 0x1

    .line 884
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    .line 904
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mContext:Landroid/content/Context;

    .line 905
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 906
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mInitialDragData:Landroid/content/ClipData;

    .line 907
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 909
    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 910
    iput-object p6, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;
    .locals 0

    .line 874
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Z
    .locals 0

    .line 874
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragDataDropResolver:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)Lcom/android/wm/shell/draganddrop/VisibleTasks;
    .locals 0

    .line 874
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)V
    .locals 0

    .line 874
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->updateDragData()V

    return-void
.end method

.method private getNonFloatingTopVisibleTask()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 963
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 965
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)V

    .line 966
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 970
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_1

    .line 971
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$getNonFloatingTopVisibleTask$0(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    .line 966
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz p0, :cond_0

    .line 968
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    invoke-static {p0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 969
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    if-ne p0, v1, :cond_1

    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isAnimatingByRecent:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private updateDragData()V
    .locals 4

    .line 977
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->hasApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 979
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    .line 980
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 981
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.app.extra.OPTIONS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 982
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.ACTIVITY_OPTIONS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    .line 983
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->isExecutableAppDropResolver()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragDataDropResolver:Z

    .line 984
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: dragData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method update()V
    .locals 4

    .line 921
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->getNonFloatingTopVisibleTask()Ljava/util/List;

    move-result-object v0

    .line 924
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 925
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 926
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskWinMode:I

    .line 927
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    iput v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    .line 932
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskId:I

    .line 933
    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskIsResizeable:Z

    .line 936
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskIsSupportMultiWindow:Z

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 944
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez v1, :cond_1

    .line 945
    iput-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    goto :goto_2

    .line 946
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v1, :cond_2

    .line 947
    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->hasResizableResolveInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 949
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 950
    :goto_0
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_6

    .line 953
    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 954
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    .line 956
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    return-void
.end method
