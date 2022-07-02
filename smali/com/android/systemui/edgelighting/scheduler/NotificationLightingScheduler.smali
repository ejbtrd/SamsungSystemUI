.class public Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;
.super Ljava/lang/Object;
.source "NotificationLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;,
        Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "NotificationLightingScheduler"


# instance fields
.field private mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

.field private mEdgeLightingDataKeeper:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;

.field private mListener:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;

.field private mNotificationScheduleHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;-><init>(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mEdgeLightingDataKeeper:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;

    .line 43
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;-><init>(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->expireNotiLighting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private expireNotiLighting(Ljava/lang/String;)V
    .locals 5

    .line 404
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string/jumbo v2, "turnToHeadsUp"

    .line 405
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "expiredNotiLighting: remove="

    if-eqz v2, :cond_1

    .line 406
    iput-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 407
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " turn to heads up"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;->stopNotification(Z)V

    goto :goto_1

    .line 409
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 410
    iput-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 411
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;

    invoke-interface {p0, v4}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;->stopNotification(Z)V

    goto :goto_1

    .line 414
    :cond_2
    sget-object v1, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expiredNotiLighting: invalid expire="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cur="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;

    invoke-interface {p0, v4}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;->stopNotification(Z)V

    :goto_1
    return-void
.end method

.method private isCurrentNotiDoing()Z
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOnGoingNotification(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z
    .locals 0

    .line 365
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSamePackage(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSkipPolicy(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z
    .locals 1

    .line 132
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->isSamePackage(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->isSubDataUpdateNoti()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->isSubDataUpdateNoti()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private replaceToNewNoti(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 3

    .line 232
    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "replaceToNewNoti : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->expireNotiLighting(Ljava/lang/String;)V

    .line 240
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->startLightingWithInfo(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    return-void
.end method

.method private startLightingWithInfo(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 3

    .line 264
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 265
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;->startNotification(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 266
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 267
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private updateCurrentNoti(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mergeInfo(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 247
    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentNoti : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 251
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;->updateText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 257
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLightingNoQueuePolicy(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Z)V
    .locals 1

    .line 223
    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 224
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 225
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->replaceToNewNoti(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    goto :goto_1

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->updateCurrentNoti(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public extendLightingDuration(IZ)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result p2

    if-ge p2, p1, :cond_1

    .line 354
    :cond_0
    sget-object p2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    const-string v0, "extendLightingDuration for verification"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p2, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    .line 356
    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public flushNotiAfterFinish()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public flushNotiNow()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    return-object p0
.end method

.method public isDuplicatedOnGoing(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->isOnGoingNotification(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 377
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->isOnGoingNotification(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 381
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->equalsText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public putLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;ZZ)V
    .locals 5

    if-nez p1, :cond_0

    .line 66
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    const-string p1, "putLighting: invalid param "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mEdgeLightingDataKeeper:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;->getOldLightingInfo(Ljava/lang/String;)Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v1

    .line 73
    :goto_1
    sget-object v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putLighting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isNeedKeepPackage="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", isNeedKeepNoti="

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;

    if-nez p3, :cond_3

    const-string p0, "putLighting: no listener"

    .line 76
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->isCurrentNotiDoing()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightLogicPolicy()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    if-eqz p3, :cond_6

    if-nez p2, :cond_6

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putLighting: mCurrentLightingScheduleInfo= "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",new="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 83
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-direct {p0, p3, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->isSkipPolicy(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p0, "putLighting: skip by update noti policy"

    .line 86
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->isDuplicatedOnGoing(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p0, "putLighting: skip by isDuplicatedOnGoing"

    .line 90
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_5
    iget-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-direct {p0, p3}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->isOnGoingNotification(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->isOnGoingNotification(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p0, "putLighting: skip by isOnGoing notification showing"

    .line 94
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result p3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p3, v0, :cond_8

    const/4 v0, 0x5

    if-eq p3, v0, :cond_7

    const/4 v0, 0x6

    if-eq p3, v0, :cond_8

    goto :goto_2

    .line 102
    :cond_7
    iget-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 103
    iget-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 108
    :cond_8
    invoke-static {}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->getInstance()Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->setWakeLockPackage(Ljava/lang/String;)V

    .line 109
    iget-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 110
    iget-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    :cond_9
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->updateLightingNoQueuePolicy(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Z)V

    return-void
.end method

.method public removeLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 7

    .line 272
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result p1

    if-nez v0, :cond_0

    .line 276
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeLighting: invalid param "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->getInstance()Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->releaseWakeLockPackage(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    .line 290
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeLighting: return by reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 298
    :goto_1
    sget-object v4, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeLighting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reason="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cur="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 315
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->clearLockReason()V

    .line 316
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 318
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 319
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 320
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public setListener(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;

    return-void
.end method
