.class public Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private documentId:Ljava/lang/String;

.field private sdkType:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private serviceAgreeType:Ljava/lang/String;

.field private serviceId:Ljava/lang/String;

.field private serviceVersion:Ljava/lang/String;

.field private status:I

.field private timestamp:J

.field private trackingId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceId:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->trackingId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->deviceId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceVersion:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceAgreeType:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkVersion:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkType:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->documentId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->status:I

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->timestamp:J

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkType()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkType:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceAgreeType()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceAgreeType:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->status:I

    return p0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDocumentId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->documentId:Ljava/lang/String;

    return-void
.end method

.method public setSdkType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkType:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setServiceAgreeType(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceAgreeType:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceId:Ljava/lang/String;

    return-void
.end method

.method public setServiceVersion(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->serviceVersion:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->status:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->timestamp:J

    return-void
.end method

.method public setTrackingId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->trackingId:Ljava/lang/String;

    return-void
.end method
