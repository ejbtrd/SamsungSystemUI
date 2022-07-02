.class public Lcom/android/systemui/edgelighting/EdgeLightingService;
.super Landroid/app/Service;
.source "EdgeLightingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;,
        Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sConfigured:Z

.field private static sFlipFont:I


# instance fields
.field private final MSG_STOP_SERVICE:I

.field private mAppIconCache:Lcom/android/systemui/edgelighting/utils/AppIconCache;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCondition:I

.field private mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

.field private mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

.field private final mEdgeLightingObserver:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

.field private mEdgeLightingReceiver:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

.field private mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

.field private final mForegroundToken:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOccluded:Z

.field private mIsStarted:Z

.field private mKillBot:Ljava/lang/Runnable;

.field private final mOnEdgeLightingCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScheduler:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

.field private mShouldKillMyself:Z

.field private mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;


# direct methods
.method public static synthetic $r8$lambda$D2u47ZreCdvxxTnLfRcfiaqY-58(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/EdgeLightingService;->lambda$onStartCommand$0(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 97
    const-class v0, Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    .line 98
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->DEBUG:Z

    const/4 v0, 0x0

    .line 122
    sput-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mForegroundToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

    .line 114
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingReceiver:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    .line 119
    iput v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    .line 121
    new-instance v2, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$MainHandler;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;Lcom/android/systemui/edgelighting/EdgeLightingService$1;)V

    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 127
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsOccluded:Z

    .line 130
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$1;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$2;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

    .line 256
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$3;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mOnEdgeLightingCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    const/4 v0, 0x1

    .line 940
    iput v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->MSG_STOP_SERVICE:I

    .line 962
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$7;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/edgelighting/EdgeLightingService;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/edgelighting/EdgeLightingService;)Z
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/edgelighting/EdgeLightingService;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/PowerManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/edgelighting/EdgeLightingService;Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->createEdgeLightingDialog(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->turnToHeadsUp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/edgelighting/EdgeLightingService;Z)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/EdgeLightingService;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/edgelighting/EdgeLightingService;Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;)Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    return-object p1
.end method

.method private connectToSystemUI()V
    .locals 3

    .line 976
    sget-object v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    const-string v1, "connectToSystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-nez v0, :cond_0

    .line 978
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 979
    const-class v1, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method private createEdgeLightingDialog(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    if-nez v0, :cond_2

    .line 678
    sget-object v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEdgeLightingDialog make dispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingConditionForManager(Landroid/content/ContentResolver;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 682
    :goto_0
    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    const/16 v3, 0x8b3

    goto :goto_1

    :cond_1
    const/16 v3, 0x8b4

    :goto_1
    invoke-direct {v1, v2, v3, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 683
    new-instance p1, Lcom/android/systemui/edgelighting/EdgeLightingService$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$5;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V

    .line 806
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->setDozeDrawMode(Z)V

    .line 808
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    return-object p0
.end method

.method private createSchedulerIfNotExist()Z
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;-><init>(Lcom/samsung/android/edge/SemEdgeManager;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    .line 559
    invoke-interface {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->setController(Landroid/content/Context;)V

    .line 560
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    new-instance v1, Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->setRequester(Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getAppIconColor(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)I
    .locals 0

    const-string p0, "notification_color"

    .line 483
    invoke-static {p2, p0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getInt(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getNotificationEffectColors(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)[I
    .locals 4

    .line 433
    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->hasSmallIcon(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/EdgeLightingService;->getAppIconColor(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 437
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingColorType(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 441
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result p1

    .line 442
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    move-result p0

    goto :goto_1

    :cond_1
    const v3, -0xb37941

    if-ne v0, v2, :cond_3

    .line 444
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadAppCustomColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 446
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getEdgeLightingColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v3, :cond_5

    if-eqz p2, :cond_5

    .line 449
    sget-object p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not exist color in white list.So using notification color  : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, p2

    goto :goto_1

    :cond_2
    move p0, v0

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    if-ne v0, p1, :cond_4

    .line 455
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->getDeviceWallPaperColorIndex(Landroid/content/ContentResolver;)I

    move-result p0

    goto :goto_1

    .line 457
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "edgelighting_custom_color"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :cond_5
    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [I

    aput p0, p1, v1

    aput p2, p1, v2

    return-object p1
.end method

.method private isKeyguardLocked()Z
    .locals 2

    const-string v0, "keyguard"

    .line 995
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    .line 997
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 999
    :cond_0
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isKeyguardNotiOn()Z
    .locals 3

    .line 990
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$onStartCommand$0(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 0

    .line 410
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/EdgeLightingService;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method private registerCoverListener()V
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService$6;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

    .line 887
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->registerCoverListener(Landroid/content/Context;Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;)V

    :cond_0
    return-void
.end method

.method private registerEdgeLightingObserver()V
    .locals 4

    .line 899
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-class v2, Landroid/provider/Settings$System;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

    const-string v3, "edge_lighting"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->registerContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    return-void
.end method

.method private registerStatusBarReceiver()V
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;Lcom/android/systemui/edgelighting/EdgeLightingService$1;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    .line 841
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    .line 842
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private setProcessForeground(Z)V
    .locals 3

    .line 537
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 539
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mForegroundToken:Landroid/os/IBinder;

    .line 540
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "EdgeLightingService"

    .line 539
    invoke-interface {v0, p0, v1, p1, v2}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 543
    sget-object p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cant set to foreground"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string p1, "packageName null"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 165
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 166
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string/jumbo p1, "reason is not notification"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 170
    :cond_1
    const-class v1, Landroid/app/SemStatusBarManager;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    const/16 v2, 0x8

    if-eq p3, v2, :cond_2

    .line 171
    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->getDisableFlags()I

    move-result v1

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 172
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string p1, "disable_alert"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    const-string v2, "noti_key"

    if-eqz v1, :cond_5

    .line 177
    invoke-virtual {p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {v3, v1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isInterrupted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string v3, "interrupted"

    invoke-virtual {v1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 185
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {v3, v1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isAlertingHeadsUp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string v3, "isAlertingHeadsUp"

    invoke-virtual {v1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->isPanelsEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 192
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string v3, "isPanelsEnabled"

    invoke-virtual {v1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 198
    :catch_0
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "keyguard"

    .line 199
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 200
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 201
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string p1, "keyguard && screenOn"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 206
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->isKeyguardNotiOn()Z

    move-result v1

    if-nez v1, :cond_7

    .line 208
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string p1, "keygaurdNotiOff"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 212
    :cond_7
    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isSecret(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 213
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string/jumbo p1, "secret && keyguard"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 218
    :cond_8
    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->canBubble(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 219
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    const-string p1, "bubble"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 223
    :cond_9
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 224
    iget v1, v0, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v1, :cond_a

    sget v3, Lcom/android/systemui/edgelighting/EdgeLightingService;->sFlipFont:I

    if-eq v3, v1, :cond_a

    .line 225
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 226
    iget v0, v0, Landroid/content/res/Configuration;->FlipFont:I

    sput v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sFlipFont:I

    .line 229
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    if-eqz v0, :cond_d

    .line 230
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAppIconCache:Lcom/android/systemui/edgelighting/utils/AppIconCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/edgelighting/utils/AppIconCache;->getAppIcon(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz p3, :cond_b

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/EdgeLightingService;->getNotificationEffectColors(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setEffectColors([I)V

    .line 235
    :cond_b
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getPriorityMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 238
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    if-eqz v0, :cond_c

    .line 240
    iget v0, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    move v8, v0

    goto :goto_0

    :cond_c
    move v8, v1

    .line 243
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V

    .line 244
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->getInstance()Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/edgelighting/manager/ContextStatusLoggingManager;->updateStatusLoggingItem(Landroid/content/Context;)V

    .line 245
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->updateStatusLoggingItem(Landroid/content/Context;)V

    .line 247
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz p1, :cond_d

    .line 248
    invoke-virtual {p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->setInterruption(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_d
    return-void
.end method

.method private stopEdgeLightingService()V
    .locals 1

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    const/4 v0, 0x1

    .line 426
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 427
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private stopService(Ljava/lang/String;)V
    .locals 3

    .line 667
    sget-object v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopService by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 669
    invoke-interface {p1, v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->notifyEdgeLightingPackageList(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 671
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    .line 672
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 673
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private turnToHeadsUp(Ljava/lang/String;)V
    .locals 0

    .line 1010
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz p0, :cond_0

    .line 1011
    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;->turnToHeadsUp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private unregisterCoverListener()V
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

    if-eqz v0, :cond_0

    .line 893
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->unregisterCoverListener(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;)V

    const/4 v0, 0x0

    .line 894
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

    :cond_0
    return-void
.end method

.method private unregisterEdgeLightingObserver()V
    .locals 4

    .line 904
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-class v2, Landroid/provider/Settings$System;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;

    const-string v3, "edge_lighting"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->unregisterContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    return-void
.end method

.method private unregisterStatusBarReceiver()V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 850
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mStatusBarReceiver:Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;

    :cond_0
    return-void
.end method

.method private updateEdgeLightingPolicy()V
    .locals 3

    .line 549
    invoke-static {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 550
    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v1

    .line 551
    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->updateSilentInstalledPackagesIfNeeds(Landroid/content/Context;)V

    const/4 v2, 0x2

    .line 552
    invoke-virtual {v1, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getPolicyInfoByCategory(I)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->removeBlockListInEnabledEdgeLightingList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 553
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->isAllApplicationEnabled()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getEnabledEdgeLightingItems()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;ZLjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 958
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->dump()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 959
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 986
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 311
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 312
    sget-object v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OnCreate : edgelighting is not supported for this device"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->connectToSystemUI()V

    .line 327
    sget-boolean v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 329
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 328
    invoke-static {v1}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    .line 330
    sput-boolean v2, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    :cond_1
    const-string v1, "edge"

    .line 333
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edge/SemEdgeManager;

    iput-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    if-nez v1, :cond_2

    const-string v1, "OnCreate : mEdgeManager is null."

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "power"

    .line 337
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mPowerManager:Landroid/os/PowerManager;

    .line 338
    invoke-direct {p0, v2}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    .line 339
    new-instance v0, Lcom/android/systemui/edgelighting/utils/AppIconCache;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/utils/AppIconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAppIconCache:Lcom/android/systemui/edgelighting/utils/AppIconCache;

    .line 346
    iput-boolean v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    .line 347
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mScheduler:Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->onDestroy(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    .line 501
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    .line 502
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->unregisterStatusBarReceiver()V

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->unregisterCoverListener()V

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->unregisterEdgeLightingObserver()V

    .line 513
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    if-eqz v1, :cond_1

    .line 514
    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mOnEdgeLightingCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/edge/SemEdgeManager;->unbindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;)V

    goto :goto_0

    .line 516
    :cond_1
    sget-object v1, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy : mEdgeManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 519
    invoke-virtual {v1, v2}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->unRegisterEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V

    .line 520
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->destroy()V

    .line 521
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mDispatcher:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 524
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 525
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    .line 526
    iput v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    .line 528
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 530
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    .line 533
    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 353
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p2

    const-string p3, "SEC_FLOATING_FEATURE_SYSTEMUI_SUPPORT_BRIEF_NOTIFICATION"

    invoke-virtual {p2, p3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x2

    if-nez p2, :cond_0

    .line 354
    sget-object p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    const-string p2, "onStartCommand : edgelighting is not supported for this device"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mKillBot:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return p3

    .line 359
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    if-nez p2, :cond_1

    const-string p2, "edge"

    .line 360
    invoke-virtual {p0, p2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/edge/SemEdgeManager;

    iput-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    .line 361
    sget-object p2, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnCreate : mEdgeManager = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    return p3

    .line 368
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    return p3

    :cond_3
    const/4 p2, 0x1

    .line 372
    invoke-direct {p0, p2}, Lcom/android/systemui/edgelighting/EdgeLightingService;->setProcessForeground(Z)V

    .line 373
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->createSchedulerIfNotExist()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->registerStatusBarReceiver()V

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->registerCoverListener()V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->registerEdgeLightingObserver()V

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    const-string v0, "audio"

    .line 381
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mAudioManager:Landroid/media/AudioManager;

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    if-eqz v0, :cond_6

    .line 384
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingConditionForManager(Landroid/content/ContentResolver;)I

    move-result v0

    .line 385
    iget v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    if-eq v1, v0, :cond_6

    .line 386
    iput v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mCondition:I

    .line 387
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mOnEdgeLightingCallback:Lcom/samsung/android/edge/OnEdgeLightingCallback;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/edge/SemEdgeManager;->bindEdgeLightingService(Lcom/samsung/android/edge/OnEdgeLightingCallback;I)V

    :cond_6
    if-eqz p1, :cond_9

    .line 396
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "forUpdatePolicy"

    const/4 v1, 0x0

    .line 398
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    if-nez v0, :cond_7

    .line 399
    sget-object p1, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "start service for policy update"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->updateEdgeLightingPolicy()V

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    return p3

    :cond_7
    const-string p3, "packagename"

    .line 405
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "info"

    .line 406
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const-string/jumbo v2, "reason"

    .line 407
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 408
    sget-object v2, Lcom/android/systemui/edgelighting/EdgeLightingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_9

    if-eqz v0, :cond_9

    .line 410
    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p3, v0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mShouldKillMyself:Z

    goto :goto_0

    .line 414
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->stopEdgeLightingService()V

    return p3

    .line 419
    :cond_9
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsStarted:Z

    return p2
.end method
