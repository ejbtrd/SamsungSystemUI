.class Lcom/android/systemui/knox/UcmMonitor;
.super Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;
.source "UcmMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final UCM_SERVICE_NAME:Ljava/lang/String;

.field private mUCMVendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;-><init>()V

    const-string v0, "com.samsung.ucs.ucsservice"

    .line 25
    iput-object v0, p0, Lcom/android/systemui/knox/UcmMonitor;->UCM_SERVICE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/knox/UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-void
.end method

.method private registerCallback()V
    .locals 2

    const-string v0, "com.samsung.ucs.ucsservice"

    .line 40
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    const-string v1, "SdpMonitor"

    if-nez v0, :cond_0

    const-string p0, "UcmMonitor failed to get UCM System service"

    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "UcmMonitor failed to be registered"

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getUCMVendor()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/knox/UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/knox/UcmMonitor;->registerCallback()V

    return-void
.end method

.method public setUCMKeyguardVendor(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/knox/UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-void
.end method
