.class public Lcom/android/systemui/doze/AODUi;
.super Lcom/android/systemui/doze/DozeUi;
.source "AODUi.java"


# instance fields
.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;


# direct methods
.method public static synthetic $r8$lambda$NNo7QzOUxUOWVJC6tXaPrvw9YkI()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/doze/AODUi;->lambda$dozeTimeTick$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/tuner/TunerService;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/hardware/display/AmbientDisplayConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeHost;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct/range {p0 .. p11}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/tuner/TunerService;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 68
    new-instance p1, Lcom/android/systemui/doze/AODUi$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/doze/AODUi$1;-><init>(Lcom/android/systemui/doze/AODUi;)V

    iput-object p1, p0, Lcom/android/systemui/doze/AODUi;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    .line 43
    iput-object p12, p0, Lcom/android/systemui/doze/AODUi;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/AODUi;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/doze/AODUi;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method private static synthetic lambda$dozeTimeTick$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    sget-object v1, Lcom/android/systemui/doze/AODUi$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/doze/AODUi$$ExternalSyntheticLambda0;

    invoke-interface {p0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/systemui/doze/DozeUi;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 49
    sget-object p1, Lcom/android/systemui/doze/AODUi$2;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p0, p0, Lcom/android/systemui/doze/AODUi;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p0, p0, Lcom/android/systemui/doze/AODUi;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    :goto_0
    return-void
.end method

.method public updateWindowLayoutParams()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->updateAODWindowLayoutParams()V

    return-void
.end method
