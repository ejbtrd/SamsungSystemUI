.class public Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;
.super Landroid/content/BroadcastReceiver;
.source "SecStatusBarTouchProximityHelper.java"


# instance fields
.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsSupportTouchProximity:I

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public static synthetic $r8$lambda$HfGsqDD9BiOVZJMc0-YPexGnZMY(Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mIsSupportTouchProximity:I

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 62
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method private isSupportTouchProximity()Z
    .locals 4

    .line 78
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mIsSupportTouchProximity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    .line 81
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 82
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mIsSupportTouchProximity:I

    .line 84
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mIsSupportTouchProximity:I

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "SecStatusBarTouchProximityHelper"

    const-string v0, "Collapsing panel by ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateForceCollapsePanels()V

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 66
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->isSupportTouchProximity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "SecStatusBarTouchProximityHelper"

    const-string p2, "ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 92
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
