.class public Lcom/android/wm/shell/draganddrop/FreeformStarter;
.super Ljava/lang/Object;
.source "FreeformStarter.java"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/FreeformStarter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private overrideFreeformWindowingMode(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 0

    if-nez p1, :cond_0

    .line 111
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 113
    :cond_0
    invoke-static {p1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    const/4 p1, 0x5

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 p1, 0x1

    .line 115
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    return-object p0
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;IILandroid/os/Bundle;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    .line 95
    invoke-direct {p0, v1}, Lcom/android/wm/shell/draganddrop/FreeformStarter;->overrideFreeformWindowingMode(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 98
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/FreeformStarter;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/FreeformStarter;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 101
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    move-object/from16 v6, p1

    move/from16 v14, p5

    .line 98
    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 8

    .line 74
    invoke-direct {p0, p5}, Lcom/android/wm/shell/draganddrop/FreeformStarter;->overrideFreeformWindowingMode(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p3

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/FreeformStarter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FreeformStarter"

    const-string p2, "Failed to launch activity"

    .line 78
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6

    .line 60
    invoke-direct {p0, p5}, Lcom/android/wm/shell/draganddrop/FreeformStarter;->overrideFreeformWindowingMode(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p3

    .line 62
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/FreeformStarter;->mContext:Landroid/content/Context;

    const-class p4, Landroid/content/pm/LauncherApps;

    .line 63
    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/LauncherApps;

    const/4 v3, 0x0

    .line 65
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    .line 64
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FreeformStarter"

    const-string p2, "Failed to launch shortcut"

    .line 67
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startTask(IIILandroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-direct {p0, p4}, Lcom/android/wm/shell/draganddrop/FreeformStarter;->overrideFreeformWindowingMode(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 51
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FreeformStarter"

    const-string p2, "Failed to launch task"

    .line 53
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
