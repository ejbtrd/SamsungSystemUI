.class public Lcom/android/systemui/qs/external/TileServiceManager;
.super Ljava/lang/Object;
.source "TileServiceManager.java"


# static fields
.field static final PREFS_FILE:Ljava/lang/String; = "CustomTileModes"


# instance fields
.field private mBindAllowed:Z

.field private mBindRequested:Z

.field private mBound:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSecCustomTile:Z

.field private mIsTileListening:Z

.field private mJustBound:Z

.field final mJustBoundOver:Ljava/lang/Runnable;

.field private mLastUpdate:J

.field private mPendingBind:Z

.field private mPriority:I

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private mShowingDialog:Z

.field private mStarted:Z

.field private final mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

.field private final mStopWaitingUnlock:Ljava/lang/Runnable;

.field private final mUnbind:Ljava/lang/Runnable;

.field private final mUninstallReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field private mWaitingUnlock:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)V
    .locals 9

    .line 90
    new-instance v8, Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 91
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 92
    invoke-interface {p6}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, v8

    move-object v1, p2

    move-object v3, p1

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 90
    invoke-direct {p0, p1, p2, p6, v8}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/external/TileLifecycleManager;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/external/TileLifecycleManager;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    .line 312
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$1;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStopWaitingUnlock:Ljava/lang/Runnable;

    .line 336
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$2;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    .line 350
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$3;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    .line 359
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$4;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUninstallReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 99
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p4, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 101
    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/external/TileServiceManager;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mWaitingUnlock:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileServices;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/external/TileServiceManager;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/external/TileServiceManager;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/external/TileServiceManager;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/external/TileServiceManager;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->unbindService()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/external/TileServiceManager;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/qs/external/TileLifecycleManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/external/TileServiceManager;)Lcom/android/systemui/settings/UserTracker;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method

.method private bindService()V
    .locals 5

    .line 228
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isPackageListening()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TileServiceManager"

    const-string v0, "Service already bound"

    .line 229
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 234
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 235
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    return-void
.end method

.method private unbindService()V
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez v0, :cond_0

    const-string p0, "TileServiceManager"

    const-string v0, "Service not bound"

    .line 241
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    .line 245
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    .line 246
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    return-void
.end method


# virtual methods
.method public calculateBindPriority(J)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->hasPendingClick()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    .line 253
    iput v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->hasPendingToggleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iput v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 256
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mWaitingUnlock:Z

    if-eqz v0, :cond_2

    .line 257
    iput v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    const-string p0, "TileServiceManager"

    const-string p1, "calculateBindPriority : mWaitingUnlock"

    .line 258
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    if-eqz v0, :cond_3

    const p1, 0x7ffffffe

    .line 261
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 262
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    if-eqz v0, :cond_4

    const p1, 0x7ffffffd

    .line 265
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 266
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez v0, :cond_5

    const/high16 p1, -0x80000000

    .line 268
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    .line 271
    :cond_5
    iget-wide v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x7ffffffc

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    const p1, 0x7ffffffc

    .line 275
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_0

    :cond_6
    long-to-int p1, p1

    .line 277
    iput p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    :goto_0
    return-void
.end method

.method public clearPendingBind()V
    .locals 1

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    return-void
.end method

.method public getBindPriority()I
    .locals 0

    .line 283
    iget p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    return p0
.end method

.method public getTileService()Landroid/service/quicksettings/IQSTileService;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    return-object p0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public handleDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 206
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDestroy()V

    return-void
.end method

.method public hasPendingBind()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->hasPendingBind()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isActiveTile()Z
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isActiveTile()Z

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isConnected()Z

    move-result p0

    return p0
.end method

.method isLifecycleStarted()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    return p0
.end method

.method public isSecCustomTile()Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mIsSecCustomTile:Z

    return p0
.end method

.method public isToggleableTile()Z
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isToggleableTile()Z

    move-result p0

    return p0
.end method

.method public setBindAllowed(Z)V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 211
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-nez p1, :cond_1

    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->unbindService()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 214
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez p1, :cond_2

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBindRequested(Z)V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 161
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isPackageListening()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    goto :goto_0

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    .line 180
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez p1, :cond_4

    .line 181
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public setIsSecCustomTile(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mIsSecCustomTile:Z

    return-void
.end method

.method public setLastUpdate(J)V
    .locals 0

    .line 186
    iput-wide p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    .line 188
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mIsTileListening:Z

    if-nez p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    const/4 p1, 0x0

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    return-void
.end method

.method public setShowingDialog(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    return-void
.end method

.method public setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V

    return-void
.end method

.method public setTileListening(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mIsTileListening:Z

    return-void
.end method

.method public setWaitingUnlockState(Z)V
    .locals 2

    .line 298
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mWaitingUnlock:Z

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWaitingUnlockState : waitingUnlock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TileServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStopWaitingUnlock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStopWaitingUnlock:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    .line 306
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez p1, :cond_1

    .line 307
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method startLifecycleManagerAndAddTile()V
    .locals 4

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    .line 126
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServices;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 128
    invoke-static {v2, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isTileAdded(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-static {v2, v1, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    :cond_0
    return-void
.end method

.method public unbindImmediate()V
    .locals 1

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
