.class public Lcom/android/wm/shell/draganddrop/TaskVisibility;
.super Ljava/lang/Object;
.source "TaskVisibility.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAtm:Landroid/app/ActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field private mMultiSplitFlags:I

.field private final mRootTaskInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportOnlyTwoUpMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mRootTaskInfos:Landroid/util/SparseArray;

    .line 73
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mContext:Landroid/content/Context;

    const-string v0, "activity_task"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityTaskManager;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mAtm:Landroid/app/ActivityTaskManager;

    return-void
.end method

.method private initRootTaskInfos()V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mRootTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 94
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const-string v1, "TaskVisibility"

    if-nez v0, :cond_0

    const-string p0, "initTaskInfos: failed, invalid rootTaskInfos"

    .line 99
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 104
    iget-object v3, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    .line 105
    iget-object v4, v2, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-ne v3, v5, :cond_1

    :cond_3
    if-eq v4, v5, :cond_4

    const/16 v3, 0xc

    if-eq v4, v3, :cond_4

    const/4 v3, 0x3

    if-eq v4, v3, :cond_4

    const/4 v3, 0x4

    if-eq v4, v3, :cond_4

    const/4 v3, 0x5

    if-eq v4, v3, :cond_4

    goto :goto_1

    .line 116
    :cond_4
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mRootTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mRootTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 123
    :cond_5
    sget-boolean v0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRootTaskInfos: mRootTaskInfos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mRootTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method


# virtual methods
.method getDisplayBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method getDockSide()I
    .locals 0

    .line 153
    iget p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mMultiSplitFlags:I

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->multiSplitFlagsToDockSide(I)I

    move-result p0

    return p0
.end method

.method getRootTaskInfo(I)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 158
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mRootTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    return-object p0
.end method

.method getStableBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method getTaskBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 164
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mRootTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    if-eqz p0, :cond_0

    .line 166
    iget-object p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-object v0
.end method

.method init(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 1

    .line 78
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mMultiSplitFlags:I

    .line 79
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    .line 86
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->initRootTaskInfos()V

    return-void
.end method

.method isFullsceenVisible()Z
    .locals 1

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTaskVisible(I)Z

    move-result p0

    return p0
.end method

.method isHorizontalDivision()Z
    .locals 0

    .line 149
    iget p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mMultiSplitFlags:I

    and-int/lit16 p0, p0, 0x500

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isLandscape()Z
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result p0

    return p0
.end method

.method isMaximumSplit()Z
    .locals 0

    .line 206
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result p0

    return p0
.end method

.method isMultiSplit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isPrimaryVisible()Z
    .locals 1

    const/4 v0, 0x3

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTaskVisible(I)Z

    move-result p0

    return p0
.end method

.method isSplit()Z
    .locals 1

    const/4 v0, 0x4

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTaskVisible(I)Z

    move-result p0

    return p0
.end method

.method isSupportOnlyTwoUpMode()Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    return p0
.end method

.method isTaskVisible(I)Z
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 172
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/TaskVisibility;->mRootTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    if-eqz p0, :cond_0

    .line 173
    iget-boolean p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->isVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isTwoUp()Z
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isSplit()Z

    move-result p0

    return p0
.end method
