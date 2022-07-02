.class public Lcom/android/systemui/classifier/FalsingManagerProxy;
.super Ljava/lang/Object;
.source "FalsingManagerProxy.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mBrightLineFalsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/BrightLineFalsingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field private final mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field final mPluginListener:Lcom/android/systemui/plugins/PluginListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/PluginListener<",
            "Lcom/android/systemui/plugins/FalsingPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;


# direct methods
.method public static synthetic $r8$lambda$hCp_tSCnO9J-F4K1uJkYn_66Z-M(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/dump/DumpManager;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/BrightLineFalsingManager;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance p1, Lcom/android/systemui/classifier/FalsingManagerProxy$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/classifier/FalsingManagerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingManagerProxy;)V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 98
    new-instance p1, Lcom/android/systemui/classifier/SecFalsingManagerDummy;

    invoke-direct {p1}, Lcom/android/systemui/classifier/SecFalsingManagerDummy;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mPluginListener:Lcom/android/systemui/plugins/PluginListener;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mBrightLineFalsingManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 64
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->onDeviceConfigPropertiesChanged(Ljava/lang/String;)V

    return-void
.end method

.method private onDeviceConfigPropertiesChanged(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "systemui"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManagerProxy;->setupFalsingManager()V

    return-void
.end method

.method private setupFalsingManager()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->addFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V

    return-void
.end method

.method public addTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->addTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V

    return-void
.end method

.method public cleanupInternal()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/FalsingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public isClassifierEnabled()Z
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result p0

    return p0
.end method

.method public isFalseDoubleTap()Z
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseDoubleTap()Z

    move-result p0

    return p0
.end method

.method public isFalseTap(I)Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p0

    return p0
.end method

.method public isFalseTouch(I)Z
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isReportingEnabled()Z

    move-result p0

    return p0
.end method

.method public isSimpleTap()Z
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isSimpleTap()Z

    move-result p0

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p0

    return p0
.end method

.method public onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onSuccessfulUnlock()V

    return-void
.end method

.method public removeFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->removeFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V

    return-void
.end method

.method public removeTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->removeTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy;->mInternalFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->shouldEnforceBouncer()Z

    move-result p0

    return p0
.end method
