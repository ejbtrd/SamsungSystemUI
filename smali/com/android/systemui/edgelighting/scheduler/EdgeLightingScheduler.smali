.class public Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;
.super Ljava/lang/Object;
.source "EdgeLightingScheduler.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeLightingScheduler"


# instance fields
.field private mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

.field private mContext:Landroid/content/Context;

.field private final mEdgeLightingObserver:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

.field private mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenOnReceived:Z

.field private mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

.field private mOneHandOperationObserver:Landroid/database/ContentObserver;

.field private mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

.field private mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

.field private mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/edge/SemEdgeManager;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

    .line 140
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->startEdgeLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->stopEdgeLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->unregisterOneHandOperationObserver()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->startCallingEffect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Landroid/content/Context;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->isOneHandMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->isNeedToBlockedByPolicy(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->startNotiEffect(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->updateNotiText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1014
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x2200

    .line 1016
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object p1
.end method

.method private initTurnOverEdgeLighting(Landroid/content/Context;)V
    .locals 3

    const-string v0, "power"

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "EdgeLighting:edge"

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 251
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {v0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 253
    new-instance p1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    .line 318
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$6;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    .line 336
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->setTurnOverLightingListener(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener$Requestor;)V

    .line 339
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public static isNeedKeepNotificationPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 974
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p0

    .line 976
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getWhiteListMap()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 978
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 979
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "don\'t need keep notificaton ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_1
    return v0
.end method

.method private isNeedToBlockedByPolicy(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)Z
    .locals 2

    .line 401
    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {p2}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isNotificationBarExpanded()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 402
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    const-string p1, "isNeedToBlockedByPolicy: not work on statusbar"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 406
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {p2}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getShowConditionSetting()I

    move-result p2

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    const-string p2, "com.samsung.android.messaging"

    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 408
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    if-nez p0, :cond_1

    .line 409
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedToBlockedByPolicy: skip by screen on order policy "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 415
    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getSwitchState()Z

    move-result p0

    if-nez p0, :cond_2

    .line 416
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    const-string p1, "isNeedToBlockedByPolicy: not work when cover"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isOneHandMode(Landroid/content/Context;)Z
    .locals 2

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "any_screen_running"

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private registerOneHandOperationObserver()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    .line 371
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    .line 370
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private sendContextLogging(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 945
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isScreenOn()Z

    move-result v0

    .line 946
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ScreenOn"

    goto :goto_0

    :cond_0
    const-string v1, "ScreenOff"

    :goto_0
    if-eqz p3, :cond_1

    const-string p3, "FACEDOWN"

    goto :goto_1

    :cond_1
    const-string p3, "FACEUP"

    .line 948
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "EL04"

    invoke-interface {v2, p3, p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->sendContextLogging(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 950
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    const-string p1, "EL05"

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->sendContextLogging(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private sendMultiWindowLogging()V
    .locals 0

    return-void
.end method

.method private startCallingEffect()V
    .locals 6

    .line 490
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCallingEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v1, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-direct {v1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 492
    sget v4, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->EFFECT_COLOR_TURN_OVER:I

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 493
    invoke-virtual {v1, v3}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectColors([I)V

    .line 494
    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setUsingBlackBG(Z)V

    .line 495
    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->edge_lighting_turnover_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeWidth(F)V

    .line 496
    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setInfiniteLighting(Z)V

    .line 497
    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v3, v2}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->startEdgeEffect(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EdgeLightingEventStyleInfo,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 501
    invoke-virtual {v5}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 500
    invoke-virtual {v4, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 499
    invoke-static {v1, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->effectInfoToString(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "407"

    .line 502
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendScreenLog(Ljava/lang/String;)V

    const-string v1, "4081"

    .line 503
    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ringing"

    const/4 v1, 0x0

    .line 505
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->sendContextLogging(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private startEdgeLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 4

    .line 468
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    .line 477
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->updateTimeToTakeAction(Landroid/content/Context;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isScreenOn()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 483
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v3

    .line 482
    invoke-static {p0, v2, v3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->isNeedKeepNotificationPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 481
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->putLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;ZZ)V

    goto :goto_0

    .line 470
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    if-eqz p0, :cond_2

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->putLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startNotiEffect(Z)V
    .locals 11

    .line 509
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "startNotiEffect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 512
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startNotiEffect: noti info empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isScreenOn()Z

    move-result v2

    .line 521
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->unregisterOneHandOperationObserver()V

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->registerOneHandOperationObserver()V

    const-string v3, " dur="

    .line 524
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 525
    new-instance v3, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-direct {v3}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;-><init>()V

    .line 527
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getActionList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setHasActionButton(Z)V

    .line 529
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 530
    invoke-virtual {v4}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v7

    .line 531
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getEffectColors()[I

    move-result-object v9

    .line 529
    invoke-static {v4, v7, v8, v9}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getLightingColor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectColors([I)V

    .line 532
    invoke-virtual {v3, p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setUsingBlackBG(Z)V

    .line 533
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v4}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingActionEnable(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEdgeLightingAction(Z)V

    const-string v4, "406"

    .line 535
    invoke-static {v4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendScreenLog(Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 539
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v8}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v8}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    const-string v7, " +TurnOver"

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 544
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x1770

    .line 545
    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setLightingDuration(J)V

    .line 546
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/android/systemui/R$dimen;->edge_lighting_turnover_width:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeWidth(F)V

    .line 549
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "4075"

    .line 548
    invoke-static {v4, v8, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 551
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v8}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingTransparency(Landroid/content/ContentResolver;)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v8, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v8, v10

    sub-float/2addr v9, v8

    .line 553
    invoke-virtual {v3, v9}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeAlpha(F)V

    .line 556
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v8}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 557
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 558
    invoke-virtual {v10}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    .line 556
    invoke-static {v8, v9}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleWidth(Landroid/content/Context;Ljava/lang/String;)F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 559
    invoke-virtual {v9}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingThickness(Landroid/content/ContentResolver;)I

    move-result v9

    .line 556
    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeWidth(FI)V

    .line 563
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v8}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    move-result v8

    .line 564
    invoke-static {v8}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setLightingDuration(J)V

    if-eqz v2, :cond_4

    const-string v2, " +On"

    .line 567
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "4073"

    .line 568
    invoke-static {v4, v8, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, " +Off"

    .line 571
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "4074"

    .line 572
    invoke-static {v4, v8, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v2, "EdgeLightingEventStyleInfo,"

    if-eqz p1, :cond_5

    .line 581
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v4, v5}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->startEdgeEffect(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 583
    sget-object v4, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 586
    invoke-virtual {v6}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 585
    invoke-virtual {v2, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-static {v3, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->effectInfoToString(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v3

    add-int/lit16 v3, v3, 0x7d0

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_8

    .line 589
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v9

    invoke-interface {v4, v7, v8, v9}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isSanitized(ILjava/lang/String;I)Z

    move-result v4

    .line 590
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v7}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isKeyguardLocked()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v7, :cond_9

    const-string v7, "+locked"

    .line 591
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v7}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isKeyguardNotiOn()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 593
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 594
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v7}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isKeyguardHideContent()Z

    move-result v7

    .line 595
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v10

    if-nez v4, :cond_7

    if-eqz v10, :cond_7

    const/4 v4, -0x1

    if-eq v10, v4, :cond_7

    if-eqz v7, :cond_6

    goto :goto_2

    .line 602
    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setTickerText([Ljava/lang/String;)V

    goto :goto_3

    .line 598
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v9, v9, [Ljava/lang/String;

    aput-object v4, v9, v6

    aput-object v8, v9, v5

    .line 600
    invoke-virtual {v3, v9}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setTickerText([Ljava/lang/String;)V

    :goto_3
    const-string v4, "+notiOn"

    .line 605
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_8

    const-string v4, "+hideContent"

    goto :goto_4

    :cond_8
    const-string v4, " "

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "notiVisibility: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 609
    :cond_9
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_a

    .line 611
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/String;

    aput-object v4, v7, v6

    aput-object v8, v7, v5

    .line 613
    invoke-virtual {v3, v7}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setTickerText([Ljava/lang/String;)V

    goto :goto_5

    .line 615
    :cond_a
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setTickerText([Ljava/lang/String;)V

    .line 618
    :cond_b
    :goto_5
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 620
    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 622
    :cond_c
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setNotificationKey(Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v4

    .line 626
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 627
    invoke-virtual {v8}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 626
    invoke-virtual {v7, v8}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    .line 625
    invoke-virtual {v4, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result v4

    .line 630
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "remove_animations"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_d

    goto :goto_6

    :cond_d
    move v5, v6

    :goto_6
    const/16 v7, 0x64

    if-ne v4, v7, :cond_e

    .line 634
    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectType(I)V

    .line 635
    invoke-direct {p0, v3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->updateEdgeEffectParams(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    goto :goto_7

    :cond_e
    if-eqz v5, :cond_f

    move v4, v6

    .line 637
    :cond_f
    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectType(I)V

    .line 640
    :goto_7
    invoke-virtual {v3, v6}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsMultiResolutionSupoorted(Z)V

    .line 644
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v4}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsGrayScaled(Z)V

    .line 646
    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v4, v6}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->startEdgeEffect(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 647
    sget-object v4, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 651
    invoke-virtual {v6}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 650
    invoke-virtual {v2, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-static {v3, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->effectInfoToString(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v3

    add-int/lit16 v3, v3, 0x7d0

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 654
    :goto_8
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 655
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v1

    const-string v3, "component"

    invoke-static {v1, v3}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-direct {p0, v2, v1, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->sendContextLogging(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 656
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopEdgeLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 1

    .line 720
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->removeLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    goto :goto_0

    .line 722
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    if-eqz p0, :cond_1

    .line 723
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->removeLighting(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterContentObserver(Landroid/content/ContentResolver;)V
    .locals 3

    .line 350
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    move-result-object v0

    const-class v1, Landroid/provider/Settings$System;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

    const-string v2, "edge_lighting"

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->unregisterContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    return-void
.end method

.method private unregisterOneHandOperationObserver()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateEdgeEffectParams(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 2

    .line 989
    invoke-static {}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->getInstance()Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    move-result-object v0

    .line 990
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v1

    .line 991
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->getEdgeStyle(Ljava/lang/String;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    move-result-object p0

    .line 993
    instance-of v0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;

    if-eqz v0, :cond_0

    .line 994
    check-cast p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;

    .line 995
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getSpecialEffect()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setSpecialEffect(Landroid/net/Uri;)V

    .line 996
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getFrameEffect()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setFrameEffect(Landroid/net/Uri;)V

    .line 997
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->isStartAfterToastFinished()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setSpecialAnimationStartAfterToastFinished(Z)V

    .line 998
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->isCenterPosition()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsCenterPosition(Z)V

    .line 999
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->isEdgeFrameEffect()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsEdgeFrameEffect(Z)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->isEdgeSpecialEffect()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsEdgeSpecialEffect(Z)V

    .line 1001
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getSpecialWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getSpecialHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setSpecialEffectSize(II)V

    .line 1002
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getRepeatCount()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setRepeatCount(I)V

    :cond_0
    return-void
.end method

.method private updateNotiText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 9

    .line 660
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "updateNotiText: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "isDirty = "

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->isDirty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 663
    new-instance v1, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-direct {v1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;-><init>()V

    .line 665
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getActionList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setHasActionButton(Z)V

    const-string v2, " dur="

    .line 667
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 668
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v7

    invoke-interface {v2, v5, v6, v7}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isSanitized(ILjava/lang/String;I)Z

    move-result v2

    .line 669
    iget-object v5, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v5}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isKeyguardLocked()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_4

    const-string v5, "+locked"

    .line 670
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    iget-object v5, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v5}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isKeyguardNotiOn()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 672
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 673
    iget-object v5, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v5}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isKeyguardHideContent()Z

    move-result v5

    .line 674
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v8

    if-nez v2, :cond_2

    if-eqz v8, :cond_2

    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    if-eqz v5, :cond_1

    goto :goto_1

    .line 681
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setTickerText([Ljava/lang/String;)V

    goto :goto_2

    .line 677
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v4

    aput-object v6, v7, v3

    .line 679
    invoke-virtual {v1, v7}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setTickerText([Ljava/lang/String;)V

    :goto_2
    const-string v2, "+notiOn"

    .line 683
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_3

    const-string v2, "+hidePriv"

    goto :goto_3

    :cond_3
    const-string v2, " "

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "notiVisibility : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 686
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_5

    .line 688
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/String;

    aput-object v2, v5, v4

    aput-object v6, v5, v3

    .line 690
    invoke-virtual {v1, v5}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setTickerText([Ljava/lang/String;)V

    goto :goto_4

    .line 692
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setTickerText([Ljava/lang/String;)V

    .line 695
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 697
    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsGrayScaled(Z)V

    .line 699
    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 700
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v5

    .line 701
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getEffectColors()[I

    move-result-object v7

    .line 699
    invoke-static {v3, v5, v6, v7}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getLightingColor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectColors([I)V

    .line 702
    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 703
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setNotificationKey(Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingActionEnable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEdgeLightingAction(Z)V

    .line 706
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    move-result v2

    .line 707
    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setLightingDuration(J)V

    .line 709
    invoke-virtual {v1, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsMultiResolutionSupoorted(Z)V

    .line 711
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isUIControllerExist()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 712
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v2, v4}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->isDirty()Z

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->updateText(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V

    .line 715
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result p1

    add-int/lit16 p1, p1, 0x7d0

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 716
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public doActionNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p2, "mark_as_read"

    .line 881
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 882
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p1, :cond_1

    .line 883
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object p1

    .line 884
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getActionList()Ljava/util/ArrayList;

    move-result-object p1

    .line 885
    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->restrict_mark_as_read:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 887
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 888
    iget-object v1, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    :try_start_0
    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 891
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 893
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyEdgeLightingPackageList(Z)V
    .locals 4

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    .line 736
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    if-eqz v1, :cond_0

    .line 737
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 739
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v1, :cond_1

    .line 743
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 745
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_1
    sget-object v1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEdgeLightingPackageList :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", empty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/edge/SemEdgeManager;->updateEdgeLightingPackageList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public notifyScreenOff()V
    .locals 2

    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    .line 433
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;->setScreenState(Z)V

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isUIControllerExist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->stopEdgeEffect()V

    :cond_2
    return-void
.end method

.method public notifyScreenOn()V
    .locals 2

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    .line 448
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v1, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;->setScreenState(Z)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->isUpsideDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    const-string v0, "notifyScreenOn: isUpsideDown is true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 455
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiAfterFinish()V

    :cond_2
    return-void
.end method

.method public notifyStatusBarOpen()V
    .locals 0

    .line 874
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    :cond_0
    return-void
.end method

.method public onClickedToast()V
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v0, :cond_1

    .line 756
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    .line 758
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EL09"

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->sendContextLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    const-string v1, "406"

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 762
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "4071"

    .line 761
    invoke-static {v1, v2, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 765
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "4072"

    .line 764
    invoke-static {v1, v2, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->sendClickEvent(Ljava/lang/String;)V

    .line 774
    :cond_1
    sget-boolean v0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BIXBY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->isPathRuleBased(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 775
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.bixby.agent.intent.action.EDGE_LIGHTING_APP_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.bixby.agent"

    .line 776
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "app_launch_type"

    .line 777
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0

    .line 866
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->unregisterContentObserver(Landroid/content/ContentResolver;)V

    .line 867
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    if-eqz p0, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onExtendDurationLighting()V
    .locals 2

    .line 858
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_0

    const/16 v0, 0x157c

    const/4 v1, 0x0

    .line 860
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->extendLightingDuration(IZ)V

    :cond_0
    return-void
.end method

.method public onFling(ZZ)V
    .locals 2

    if-nez p1, :cond_1

    .line 905
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    :cond_0
    return-void

    .line 911
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 912
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    .line 914
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->sendMultiWindowLogging()V

    .line 916
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object p1

    if-nez p2, :cond_2

    .line 919
    sget-object p2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Not activity pending intent. : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->edge_lighting_can_not_open_popup_view:I

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 923
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->sendClickEvent(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "406"

    const-string v0, "4078"

    .line 924
    invoke-static {p2, v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :cond_3
    sget-boolean p1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BIXBY:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->isPathRuleBased(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 929
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.bixby.agent.intent.action.EDGE_LIGHTING_APP_LAUNCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.bixby.agent"

    .line 930
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v0, "app_launch_type"

    .line 931
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public onLaunchPopupView(Z)V
    .locals 5

    .line 818
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 819
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    .line 821
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->sendMultiWindowLogging()V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 826
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p1

    const/4 v2, 0x0

    .line 828
    instance-of v3, p1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-eqz v3, :cond_0

    .line 829
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    :cond_0
    if-eqz v2, :cond_2

    .line 833
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 834
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->getEffectView()Landroid/view/View;

    move-result-object v2

    .line 833
    invoke-static {p1, v3, v4, v2}, Lcom/android/systemui/edgelighting/utils/Utils;->runDragAndDrop(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 837
    :cond_1
    sget-object p1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Not activity pending intent. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$string;->edge_lighting_can_not_open_popup_view:I

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 843
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->sendClickEvent(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "406"

    const-string v1, "4078"

    .line 844
    invoke-static {v0, v1, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_3
    sget-boolean p1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BIXBY:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->isPathRuleBased(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 849
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.bixby.agent.intent.action.EDGE_LIGHTING_APP_LAUNCH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.bixby.agent"

    .line 850
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "app_launch_type"

    .line 851
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 852
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public onSwipeToast()V
    .locals 13

    .line 784
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v0, :cond_2

    .line 786
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 791
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 792
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationID()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    .line 791
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/edge/SemEdgeManager;->cancelNotificationByGroupKey(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, " , key : "

    const-string v3, " , userid : "

    const-string v4, " id: "

    const-string v5, " , tag :  "

    const-string v6, " swipe cancel pkg: "

    if-nez v1, :cond_0

    .line 798
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 799
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationID()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v11

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v12

    .line 798
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/edge/SemEdgeManager;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 801
    sget-object v1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationID()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 805
    :cond_0
    sget-object v1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationID()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , groupKey : "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "406"

    const-string v2, "4077"

    .line 809
    invoke-static {v1, v2, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    :cond_2
    return-void
.end method

.method public releaseWakeLock()V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public setController(Landroid/content/Context;)V
    .locals 2

    .line 146
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    invoke-direct {v0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    .line 153
    new-instance v1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->setListener(Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 169
    new-instance v1, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->setListener(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$INotificationLightingListener;)V

    .line 237
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->initTurnOverEdgeLighting(Landroid/content/Context;)V

    return-void
.end method

.method public setRequester(Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    .line 463
    invoke-interface {p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isScreenOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    .line 464
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isScreenOn()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;->setScreenState(Z)V

    return-void
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V
    .locals 9

    .line 389
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startEdgeLighting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onGo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V

    .line 391
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getShowConditionSetting()I

    move-result p1

    .line 392
    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->makeLightingLogicPolicy(I)V

    .line 394
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    move-result p1

    .line 395
    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    .line 397
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 425
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopEdgeLighting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V

    .line 427
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
