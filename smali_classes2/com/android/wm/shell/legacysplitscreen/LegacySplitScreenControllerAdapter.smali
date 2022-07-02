.class public Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;
.super Ljava/lang/Object;
.source "LegacySplitScreenControllerAdapter.java"

# interfaces
.implements Lcom/android/wm/shell/ISplitScreenController;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 70
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private convertDockSideToPosition(I)I
    .locals 1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :cond_2
    :goto_0
    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private overrideOptions(Landroid/os/Bundle;III)Landroid/os/Bundle;
    .locals 0

    .line 209
    invoke-static {p1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 210
    invoke-virtual {p0, p2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    const/4 p1, 0x1

    .line 211
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    .line 220
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private resolveStartStage(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-nez p3, :cond_0

    .line 170
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 v0, 0xc

    .line 197
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->overrideOptions(Landroid/os/Bundle;III)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    .line 202
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown stage="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v0, 0x4

    .line 188
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->overrideOptions(Landroid/os/Bundle;III)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 192
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->overrideOptions(Landroid/os/Bundle;III)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-eq p2, v0, :cond_6

    .line 176
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->getDockSide()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->convertDockSideToPosition(I)I

    move-result p1

    if-ne p2, p1, :cond_5

    const/4 p1, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->resolveStartStage(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    .line 179
    :cond_5
    invoke-direct {p0, v1, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->resolveStartStage(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    .line 183
    :cond_6
    invoke-direct {p0, p3, v1, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->overrideOptions(Landroid/os/Bundle;III)Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getDockSide()I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getDockSide()I

    move-result p0

    return p0
.end method

.method public getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getSplitLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 82
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getSplitLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 84
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 85
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public isMultiSplitScreenVisible()Z
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isCellDividerVisible()Z

    move-result p0

    return p0
.end method

.method public isSplitScreenVisible()Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public startActivity(Landroid/content/Intent;IILandroid/os/Bundle;I)V
    .locals 13

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 155
    invoke-direct {p0, p2, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->resolveStartStage(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 158
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v12

    move/from16 v12, p5

    .line 158
    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LegacySplitScreenControllerAdapter"

    const-string v2, "Failed to launch activity"

    .line 163
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 8

    .line 133
    invoke-direct {p0, p3, p4, p5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->resolveStartStage(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LegacySplitScreenControllerAdapter"

    const-string p2, "Failed to launch activity"

    .line 138
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6

    .line 118
    invoke-direct {p0, p3, p4, p5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->resolveStartStage(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 121
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->mContext:Landroid/content/Context;

    const-class p3, Landroid/content/pm/LauncherApps;

    .line 122
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/LauncherApps;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LegacySplitScreenControllerAdapter"

    const-string p2, "Failed to launch shortcut"

    .line 126
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startTask(IIILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "Failed to launch task"

    const-string v1, "LegacySplitScreenControllerAdapter"

    .line 104
    invoke-direct {p0, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenControllerAdapter;->resolveStartStage(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 107
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 109
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
