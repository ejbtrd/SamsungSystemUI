.class public Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;
.super Ljava/lang/Object;
.source "ServiceDao.java"


# instance fields
.field public final MAX_KEEP_TIME:J

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->MAX_KEEP_TIME:J

    const-string v0, "DIAGMON_SERVICE"

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public deleteServiceByTime(J)V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 90
    iget-object v4, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    .line 92
    sget-object p1, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string p2, "delete service by time"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 94
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public getServiceInfo()Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "serviceId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    sget-object p0, Lcom/sec/android/diagmonagent/log/ged/util/DeviceUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "service is not exist"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    new-instance v1, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;

    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;-><init>()V

    .line 34
    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceId(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "trackingId"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setTrackingId(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "deviceId"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "serviceVersion"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceVersion(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "serviceAgreeType"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setServiceAgreeType(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "sdkVersion"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setSdkVersion(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "sdkType"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setSdkType(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "documentId"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setDocumentId(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string/jumbo v3, "status"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setStatus(I)V

    .line 43
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "timestamp"

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/diagmonagent/log/ged/db/model/ServiceInfo;->setTimestamp(J)V

    return-object v1
.end method

.method public updateDocumentId(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "documentId"

    .line 80
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateStatus(I)V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/ged/db/dao/ServiceDao;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "status"

    .line 85
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
