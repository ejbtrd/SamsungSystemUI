.class public Lcom/samsung/android/knox/custom/ProKioskManager;
.super Ljava/lang/Object;
.source "ProKioskManager.java"


# static fields
.field private static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private static sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;


# instance fields
.field private mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/custom/ProKioskManager;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 79
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    .line 80
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 82
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/ProKioskManager;->sProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    .line 66
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method


# virtual methods
.method public getExitUI(I)Ljava/lang/String;
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 117
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPowerDialogItems()I
    .locals 2

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 393
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPowerDialogOptionMode()I
    .locals 2

    .line 426
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 430
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getProKioskState()Z
    .locals 2

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ProKioskManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 465
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getProKioskString(I)Ljava/lang/String;
    .locals 1

    .line 497
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 501
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .locals 2

    .line 441
    sget-object v0, Lcom/samsung/android/knox/custom/ProKioskManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProKioskManager.setProKioskState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    .line 443
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x6

    return p0

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 448
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/ProKioskManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ProKioskManager"

    const-string p2, "Failed talking with KnoxCustomManager service"

    .line 450
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
