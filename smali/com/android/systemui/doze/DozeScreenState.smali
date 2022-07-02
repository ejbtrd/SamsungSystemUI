.class public Lcom/android/systemui/doze/DozeScreenState;
.super Ljava/lang/Object;
.source "DozeScreenState.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mApplyPendingScreenState:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Landroid/os/Handler;

.field private mIsExecutedClockTransition:Z

.field private final mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mPendingScreenState:I

.field private mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public static synthetic $r8$lambda$njd9_4eogrifOoXmQqJ1NBnHD5U(Lcom/android/systemui/doze/DozeScreenState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenState;->applyPendingScreenState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Landroid/os/PowerManager;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/doze/DozeHost;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeScreenState;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 93
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 95
    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenState;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 97
    iput-object p5, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p7, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 99
    iput-object p6, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 100
    new-instance p1, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const-string p2, "DozeScreenState"

    invoke-direct {p1, p8, p2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/DozeScreenState;)Ldagger/Lazy;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method private applyDrawWakeLock()V
    .locals 3

    const-string v0, "DozeScreenState"

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 234
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyDrawWakeLock exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private applyPendingScreenState()V
    .locals 2

    .line 200
    iget v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(IZ)V

    .line 201
    iput v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    return-void
.end method

.method private applyScreenState(IZ)V
    .locals 4

    if-eqz p1, :cond_4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDozeScreenState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldWaitForTransitionToAodUi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeScreenState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 210
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    if-eqz v2, :cond_0

    .line 211
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenState;->applyDrawWakeLock()V

    .line 218
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAODParameters()Lcom/android/systemui/doze/AODParameters;

    move-result-object v2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 219
    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/systemui/doze/AODParameters;->setDozeUiState(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(IZ)V

    .line 222
    iput v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 223
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 9

    .line 105
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2, v0}, Lcom/android/systemui/doze/DozeMachine$State;->screenState(Lcom/android/systemui/statusbar/phone/DozeParameters;)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v1}, Lcom/android/systemui/doze/DozeHost;->cancelGentleSleep()V

    .line 110
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    .line 112
    iput v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 113
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(IZ)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v3}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/PluginAODManager;->setClockTransitionStarted(Z)V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 129
    :cond_1
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    const-string v4, "DozeScreenState"

    if-ne p2, v1, :cond_2

    .line 130
    iget-object v5, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v5

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "transitionTo INITIALIZED shouldWaitForTransitionToAodUi : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v5, v2

    .line 134
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v6

    .line 135
    sget-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v7, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->isAlwaysOn()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v2

    .line 136
    :goto_1
    sget-object v8, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v8, :cond_4

    sget-object v8, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v8, :cond_5

    .line 137
    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->isAlwaysOn()Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_2

    :cond_5
    move v8, v2

    :goto_2
    if-ne p1, v1, :cond_6

    move p1, v3

    goto :goto_3

    :cond_6
    move p1, v2

    :goto_3
    if-nez v6, :cond_8

    if-nez p1, :cond_8

    if-nez v7, :cond_8

    if-eqz v8, :cond_7

    goto :goto_4

    .line 185
    :cond_7
    invoke-direct {p0, v0, v5}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(IZ)V

    .line 186
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_e

    .line 187
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    .line 188
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v3}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    goto/16 :goto_7

    .line 146
    :cond_8
    :goto_4
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 149
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 150
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez v8, :cond_9

    move p1, v3

    goto :goto_5

    :cond_9
    move p1, v2

    :goto_5
    if-eqz p1, :cond_a

    .line 153
    iget-object v7, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v7, v3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_a
    if-nez v6, :cond_d

    .line 157
    sget-boolean v6, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz v6, :cond_c

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display state changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " delayed by "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    const/16 p1, 0xfa0

    goto :goto_6

    :cond_b
    move p1, v3

    .line 159
    :goto_6
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_e

    .line 164
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    .line 165
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/doze/DozeScreenState$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeScreenState$1;-><init>(Lcom/android/systemui/doze/DozeScreenState;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 179
    :cond_d
    sget-boolean p1, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    if-eqz p1, :cond_e

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pending display state change to "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_7
    if-eqz v5, :cond_f

    if-ne p2, v1, :cond_f

    .line 193
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    .line 194
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/doze/PluginAODManager;->setClockTransitionStarted(Z)V

    :cond_f
    return-void
.end method
