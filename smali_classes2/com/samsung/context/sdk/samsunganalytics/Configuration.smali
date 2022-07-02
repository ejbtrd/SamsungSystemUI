.class public Lcom/samsung/context/sdk/samsunganalytics/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private auidType:I

.field private dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

.field private deviceId:Ljava/lang/String;

.field private enableAutoDeviceId:Z

.field private enableFastReady:Z

.field private enableUseInAppLogging:Z

.field private isAlwaysRunningApp:Z

.field private trackingId:Ljava/lang/String;

.field private userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    .line 27
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    .line 28
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableFastReady:Z

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return-void
.end method


# virtual methods
.method public enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    return-object p0
.end method

.method public getAuidType()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return p0
.end method

.method public getDbOpenHelper()Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAgreement()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    return-object p0
.end method

.method public isAlwaysRunningApp()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    return p0
.end method

.method public isEnableAutoDeviceId()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    return p0
.end method

.method public isEnableUseInAppLogging()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    return p0
.end method

.method public setAlwaysRunningApp(Z)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    return-object p0
.end method

.method public setAuidType(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserAgreement(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    return-object p0
.end method
