.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;
.super Ljava/lang/Object;
.source "FreeformContainerSystemProxy.java"


# static fields
.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$570cJXHKY18XWGccASFBuVPU0Bs(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->lambda$setHasTopUi$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BRnL2u_PT1I5eslrO8yaCdcppX0(Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->lambda$removeTask$1(Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Smxi98XjHAm3QN_rmE01AaSHEwc(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->lambda$moveTaskToFront$2(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r1V3qB2LRadmaIgzdkit-H5g8MY(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->lambda$sendContentIntent$0(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static synthetic lambda$moveTaskToFront$2(Landroid/content/Context;I)V
    .locals 6

    .line 82
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 83
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    .line 82
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityTaskManager;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FreeformContainerSystemProxy] Failed to moveTaskToFront: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FreeformContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static synthetic lambda$removeTask$1(Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;)V
    .locals 2

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;->getTaskId()I

    move-result v0

    .line 67
    sget-boolean v1, Lcom/android/wm/shell/CoreShellRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getUserId()I

    move-result p0

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getLongLiveTaskIdsForUser(I)Ljava/util/List;

    .line 71
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/16 v1, 0x10

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->semRemoveTask(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FreeformContainerSystemProxy] Failed to removeTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$sendContentIntent$0(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p0

    .line 53
    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FreeformContainerSystemProxy] Failed to sendContentIntent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FreeformContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$setHasTopUi$3(Z)V
    .locals 2

    .line 95
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FreeformContainerSystemProxy] Failed to setHasTopUi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static moveTaskToFront(Landroid/content/Context;I)V
    .locals 2

    .line 80
    sget-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static removeTask(Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;)V
    .locals 2

    .line 64
    sget-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static sendContentIntent(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V
    .locals 2

    .line 51
    sget-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static setHasTopUi(Z)V
    .locals 2

    .line 93
    sget-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
