.class public Lcom/android/systemui/navigationbar/TaskStackAdapter;
.super Ljava/lang/Object;
.source "TaskStackAdapter.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;


# instance fields
.field mCallback:Lcom/android/systemui/shared/system/TaskStackChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDragAndDropListener(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/content/ComponentName;ILjava/util/function/Consumer;)V
    .locals 0

    return-void
.end method

.method public addTaskStackListener(Ljava/lang/Runnable;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskStackAdapter;->mCallback:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/TaskStackAdapter;->mCallback:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 27
    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/TaskStackAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/TaskStackAdapter$1;-><init>(Lcom/android/systemui/navigationbar/TaskStackAdapter;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/TaskStackAdapter;->mCallback:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 33
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskStackAdapter;->mCallback:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public getRecentComponents(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRecentTasks(II)Ljava/util/List;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 53
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 56
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getRecentTasks(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRecentTasks(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeTaskStackListener()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/navigationbar/TaskStackAdapter;->mCallback:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskStackAdapter;->mCallback:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    :cond_0
    return-void
.end method
