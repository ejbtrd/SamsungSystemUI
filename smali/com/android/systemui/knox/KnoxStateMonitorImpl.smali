.class public final Lcom/android/systemui/knox/KnoxStateMonitorImpl;
.super Ljava/lang/Object;
.source "KnoxStateMonitorImpl.java"

# interfaces
.implements Lcom/android/systemui/knox/KnoxStateMonitor;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/knox/KnoxStateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

.field private mContext:Landroid/content/Context;

.field private mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

.field private mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

.field private mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

.field private mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;


# direct methods
.method public static synthetic $r8$lambda$9nLR1jlcQLUrQ82xNYIsDkZwI9s(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->setUpKnoxClass()V

    .line 124
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->initKnoxClass()V

    goto :goto_0

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    const-string p0, "KnoxStateMonitorImpl"

    invoke-direct {p1, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 132
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)Lcom/android/systemui/knox/UcmMonitor;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateLockTypeOverride()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateQuickPanelButtons()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateQuickPanelEdit()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateQuickPanelItems()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateQuickPanelUnavailableButtons()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateStatusBarText()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateStatusBarIcons()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateStatusBarBatteryColour()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateStatusBarHidden()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateNavigationBarHidden()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateKnoxKeyguardState(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateContainerKioskmode()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleDisableDeviceWhenReachMaxFailed()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateQuickPanelButtonUsers()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleEnableMDMWallpaper()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleMDMWallpaperChanged()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateAdminLock()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleSetHardKeyIntentState(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleDisableProfileWhenReachMaxFailed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/knox/KnoxStateMonitorImpl;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleDoKeyguard(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleDPMPasswordChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleEnableUCMLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handlePersonaStateChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/knox/KnoxStateMonitorImpl;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handlePersonaLaunch(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleRCPPolicyChange()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->handleUpdateLockscreenHiddenItems()V

    return-void
.end method

.method private handleDPMPasswordChanged()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleDPMPasswordChanged"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDPMPasswordChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDisableDeviceWhenReachMaxFailed()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleDisableDeviceWhenReachMaxFailed"

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 518
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDisableDeviceWhenReachMaxFailed()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDisableProfileWhenReachMaxFailed()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleDisableProfileWhenReachMaxFailed"

    .line 527
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 528
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDisableProfileWhenReachMaxFailed()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDoKeyguard(I)V
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDoKeyguard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onDoKeyguard(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnableMDMWallpaper()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleEnableMDMWallpaper"

    .line 537
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 538
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 539
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onEnableMDMWallpaper()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnableUCMLock()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleEnableUCMLock"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onEnableUCMLock()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleMDMWallpaperChanged()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleMDMWallpaperChanged"

    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 548
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onMDMWallpaperChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePersonaLaunch(I)V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePersonaLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 367
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onPersonaLaunch(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePersonaStateChange()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handlePersonaStateChange"

    .line 356
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onPersonaStateChange()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleRCPPolicyChange()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleRCPPolicyChange"

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onRCPPolicyChange()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleSetHardKeyIntentState(Z)V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleSetHardKeyIntentState"

    .line 567
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 568
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onSetHardKeyIntentState(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateAdminLock()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateAdminLock"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 558
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateAdminLock()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateContainerKioskmode()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateContainerKioskmode"

    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 508
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateContainerKioskmode()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateKnoxKeyguardState(Z)V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateKnoxKeyguardState"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateKnoxKeyguardState(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateLockTypeOverride()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateLockTypeOverride"

    .line 396
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 397
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateLockTypeOverride()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateLockscreenHiddenItems()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateLockscreenHiddenItems"

    .line 386
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 387
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateLockscreenHiddenItems()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateNavigationBarHidden()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateNavigationBarHidden"

    .line 497
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 501
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateNavigationBarHidden()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtonUsers()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateQuickPanelButtonUsers"

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 417
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelButtonUsers()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtons()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateQuickPanelButtons"

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 407
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelButtons()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelEdit()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateQuickPanelEdit"

    .line 426
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 427
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelEdit()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelItems()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateQuickPanelItems"

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 437
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelItems()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelUnavailableButtons()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateQuickPanelUnavailableButtons"

    .line 446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateQuickPanelUnavailableButtons()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarBatteryColour()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateStatusBarBatteryColour"

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 477
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarBatteryColour()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarHidden()V
    .locals 5

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateStatusBarHidden() - mCallbacks.size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 487
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 488
    iget-object v2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarHidden()V

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "         -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarIcons()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateStatusBarIcons"

    .line 466
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 467
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarIcons()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarText()V
    .locals 2

    const-string v0, "KnoxStateMonitorImpl"

    const-string v1, "handleUpdateStatusBarText"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 457
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;->onUpdateStatusBarText()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initKnoxClass()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/knox/CustomSdkMonitor;->init()V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/knox/ContainerMonitor;->init()V

    .line 167
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/knox/DualDarMonitor;->init()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/knox/EdmMonitor;->init()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/knox/SdpMonitor;->init()V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/knox/UcmMonitor;->init()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->initKnoxClass()V

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->setUpIntentReceiver()V

    return-void
.end method

.method private setUpIntentReceiver()V
    .locals 2

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.keyguard.show"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ucs.ucsservice.stateblocked"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setUpKnoxClass()V
    .locals 1

    .line 154
    new-instance v0, Lcom/android/systemui/knox/CustomSdkMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/CustomSdkMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 155
    new-instance v0, Lcom/android/systemui/knox/ContainerMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/ContainerMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    .line 156
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/systemui/knox/DualDarMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/DualDarMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    .line 159
    :cond_0
    new-instance v0, Lcom/android/systemui/knox/EdmMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/knox/EdmMonitor;-><init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 160
    new-instance v0, Lcom/android/systemui/knox/SdpMonitor;

    invoke-direct {v0}, Lcom/android/systemui/knox/SdpMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    .line 161
    new-instance v0, Lcom/android/systemui/knox/UcmMonitor;

    invoke-direct {v0}, Lcom/android/systemui/knox/UcmMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    return-void
.end method


# virtual methods
.method public checkSdpCondition(I)Z
    .locals 0

    .line 1203
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/SdpMonitor;->isSdpSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearFailedUnlockAttempts(I)V
    .locals 0

    .line 1196
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-nez p0, :cond_0

    return-void

    .line 1199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->clearFailedUnlockAttempts(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/knox/CustomSdkMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/knox/ContainerMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 614
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz v0, :cond_2

    .line 615
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/knox/DualDarMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_3

    .line 618
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/knox/EdmMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    if-eqz v0, :cond_4

    .line 621
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/knox/UcmMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mSdpMonitor:Lcom/android/systemui/knox/SdpMonitor;

    if-eqz v0, :cond_5

    .line 624
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/knox/SdpMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_5
    const-string p1, "mCallback size="

    .line 629
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const/4 p1, 0x0

    .line 630
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_7

    .line 631
    iget-object p3, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz p3, :cond_6

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/knox/ContainerMonitor;->filterOutForKnoxContainer(ILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBatteryLevelColourItem()[I
    .locals 9

    .line 817
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 826
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 827
    array-length v2, p0

    if-lez v2, :cond_3

    .line 828
    array-length v2, p0

    new-array v2, v2, [I

    .line 829
    array-length v3, p0

    new-array v3, v3, [I

    .line 831
    array-length v4, p0

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, p0, v5

    .line 832
    invoke-virtual {v7}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v8

    aput v8, v2, v6

    .line 833
    invoke-virtual {v7}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 836
    :cond_2
    array-length v4, p0

    goto :goto_1

    :cond_3
    move-object p0, v0

    move-object v2, p0

    move-object v3, v2

    move v4, v1

    :goto_1
    if-eqz p0, :cond_5

    mul-int/lit8 p0, v4, 0x2

    .line 842
    new-array p0, p0, [I

    :goto_2
    if-ge v1, v4, :cond_4

    mul-int/lit8 v0, v1, 0x2

    .line 844
    aget v5, v2, v1

    aput v5, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 845
    aget v5, v3, v1

    aput v5, p0, v0

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " -"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "=knox_levels[i]="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", knox_colors[i]="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "KnoxStateMonitorImpl"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object p0

    :cond_5
    return-object v0
.end method

.method public getContainerIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 698
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/ContainerMonitor;->getContainerIds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getInnerAuthUserId(I)I
    .locals 0

    .line 1154
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-nez p0, :cond_0

    return p1

    .line 1157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->getInnerAuthUserId(I)I

    move-result p0

    return p0
.end method

.method public getKnoxSanitizedText(I)Ljava/lang/String;
    .locals 0

    .line 713
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 717
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->getKnoxSanitizedText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockDelay()I
    .locals 0

    .line 996
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->getLockDelay()I

    move-result p0

    return p0
.end method

.method public getLockoutAttemptDeadline(I)J
    .locals 0

    .line 1187
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 1190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->getLockoutAttemptDeadline(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMainUserId(I)I
    .locals 0

    .line 1163
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-nez p0, :cond_0

    return p1

    .line 1166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->getMainUserId(I)I

    move-result p0

    return p0
.end method

.method public getPkgNameForMaximumFailedPasswordsForDisable()Ljava/lang/String;
    .locals 0

    .line 969
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->getPkgNameForMaximumFailedPasswordsForDisable()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProfileIconForKnox(I)I
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->getProfileIcon(I)I

    move-result p0

    return p0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 756
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getQuickPanelUnavailableButtons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 764
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->getQuickPanelUnavailableButtons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->getStatusBarText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatusBarTextSize()I
    .locals 0

    .line 795
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 799
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->getStatusBarTextSize()I

    move-result p0

    return p0
.end method

.method public getStatusBarTextStyle()I
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->getStatusBarTextStyle()I

    move-result p0

    return p0
.end method

.method public getStatusBarTextWidth()I
    .locals 0

    .line 806
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->getStatusBarTextWidth()I

    move-result p0

    return p0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 0

    .line 930
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->getUnlockSimPin()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAdminLockEnabled()Z
    .locals 0

    .line 1269
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isAdminLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 0

    .line 1004
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isAirplaneModeTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBatteryNotificationEnabled()Z
    .locals 0

    .line 859
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isBatteryNotificationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBlockedEdmSettingsChange()Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .locals 0

    .line 1036
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isBlueLightFilterTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isBluetoothTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBrightnessBlocked()Z
    .locals 0

    .line 1052
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isBrightnessBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isBrightnessControllerEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCarrierTextEnabled()Z
    .locals 0

    .line 863
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isCarrierTextEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCellularDataAllowed()Z
    .locals 0

    .line 945
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isCellularDataAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 0

    .line 1122
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isChargerConnectionSoundEnabledState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContainerKioskMode()Z
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/ContainerMonitor;->isContainerKioskMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 0

    .line 961
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisableDeviceByMultifactor()Z
    .locals 2

    .line 1250
    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMultifactorAuthEnforced()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "KnoxStateMonitorImpl"

    const-string v1, "isDisableDeviceByMultifactor( = false"

    .line 1251
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public isDndTileBlocked()Z
    .locals 0

    .line 1044
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isDndTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDualDarDeviceOwner(I)Z
    .locals 0

    .line 1136
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->isDualDarDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDualDarInnerLayerUnlocked(I)Z
    .locals 0

    .line 1142
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->isDualDarInnerLayerUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFaceRecognitionDisabledByMdm()Z
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/knox/EdmMonitor;->isCameraDisabledByMdm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isFaceRecognitionAllowedEvenCameraBlocked()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFlashlightTileBlocked()Z
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isFlashlightTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6

    .line 666
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/knox/ContainerMonitor;->isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLegacyContainer(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 690
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 691
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 692
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMyKnox()Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 693
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

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

.method public isLicenseExpired()Z
    .locals 0

    .line 1273
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isLicenseExpired()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocationTileBlocked()Z
    .locals 0

    .line 1028
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isLocationTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 1

    .line 891
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 892
    invoke-virtual {v0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    .line 893
    invoke-virtual {p0}, Lcom/android/systemui/knox/ContainerMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockScreenDisabledbyKNOXForBoot()Z
    .locals 4

    .line 897
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 904
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 906
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getLockScreenOverrideMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    return v2

    .line 913
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    return v2
.end method

.method public isLockscreenAllDisabled()Z
    .locals 0

    .line 887
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isLockscreenAllDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 0

    .line 871
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isLockscreenClockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 0

    .line 879
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isLockscreenDateEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 0

    .line 867
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isLockscreenHelpTextEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 0

    .line 1114
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isMDMWallpaperEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isManagedProfileForKnox(I)Z
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->isManagedProfile(I)Z

    move-result p0

    return p0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 0

    .line 1016
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isMobileDataTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultifactorAuthEnforced()Z
    .locals 0

    .line 1243
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isMultifactorAuthEnforced()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1244
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLock2StepVerificationEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNavigationBarHidden()Z
    .locals 0

    .line 941
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isNavigationBarHidden()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPanelExpandEnabled()Z
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isPanelExpandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/knox/EdmMonitor;->isPanelExpandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 855
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isStatusBarHidden()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 0

    .line 1259
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isPasswordVisibilityEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPersona(I)Z
    .locals 1

    .line 657
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->isPersona(I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isPwdChangeRequested()Z
    .locals 0

    .line 1130
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->getPwdChangeRequest()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 0

    .line 744
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isQuickSettingEditEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRoamingAllowed()Z
    .locals 0

    .line 1095
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isRoamingAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRotationLockTileBlocked()Z
    .locals 0

    .line 1032
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isRotationLockTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecondaryLockRequired(I)Z
    .locals 0

    .line 1148
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->isSecondaryLockRequired(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetToSwipeLock()Z
    .locals 0

    .line 922
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isSetToSwipeLock()Z

    move-result p0

    return p0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSoundModeTileBlocked()Z
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isSoundModeTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isStatusBarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isStatusBarHidden()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isStatusBarIconsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSubIdLockedByMDM()Z
    .locals 0

    .line 1235
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isSubIdLockedByAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSubIdLockedByMDM(I)Z
    .locals 0

    .line 1239
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/EdmMonitor;->isSubIdLockedByAdmin(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isUnlockSimOnBootState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserMobileDataRestricted()Z
    .locals 0

    .line 1020
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isUserMobileDataRestricted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserWifiHotspotRestricted()Z
    .locals 0

    .line 1080
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isUserWifiHotspotRestricted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUsersEnabled()Z
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isUsersEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVirtualUserId(I)Z
    .locals 0

    .line 1172
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->isVirtualUserId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVolumeDialogEnabled()Z
    .locals 0

    .line 1126
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/CustomSdkMonitor;->isVolumePanelEnabledState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 0

    .line 1076
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isWifiHotspotTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWifiTileBlocked()Z
    .locals 0

    .line 1084
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->isWifiTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public knoxContainerInSuperLockMode(I)Z
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContainerMonitor:Lcom/android/systemui/knox/ContainerMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/ContainerMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockSdp()V
    .locals 3

    .line 1207
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    .line 1208
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    const-string v1, "KnoxStateMonitorImpl"

    if-eqz v0, :cond_0

    const-string v0, "lockSdp :: Device Owner has been locked"

    .line 1209
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->onDeviceOwnerLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1213
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockSdp :: Maybe keyguard shown as user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "KnoxStateMonitorImpl"

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback() callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 594
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string p1, "KnoxStateMonitorImpl"

    const-string/jumbo v0, "removeCallback() mCallbacks has same callback"

    .line 596
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 601
    invoke-virtual {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "KnoxStateMonitorImpl"

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallback() callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 580
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string v1, "KnoxStateMonitorImpl"

    const-string/jumbo v2, "removeCallback() mCallbacks has same callback"

    .line 581
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 585
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAdminLock(ZZ)V
    .locals 0

    .line 1263
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    .line 1264
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/knox/EdmMonitor;->setAdminLock(ZZ)V

    :cond_0
    return-void
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 0

    .line 1178
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 1181
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/knox/DualDarMonitor;->setLockoutAttemptDeadline(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public unlockSdp(Z)V
    .locals 2

    .line 1221
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    .line 1222
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    const-string v1, "KnoxStateMonitorImpl"

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "unlockSdp :: Device Owner has been authenticated with biometrics"

    .line 1223
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->onBiometricsAuthenticated(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1227
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1230
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unlockSdp :: Maybe keyguard hidden as user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 0

    .line 976
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    :cond_0
    return-void
.end method

.method public updateFailedUnlockAttemptForProfileDisabled()V
    .locals 0

    .line 982
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p0, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForProfileDisabled()V

    :cond_0
    return-void
.end method
