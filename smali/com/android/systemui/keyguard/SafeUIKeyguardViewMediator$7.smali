.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;
.super Ljava/lang/Object;
.source "SafeUIKeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public static synthetic $r8$lambda$TcvFJ7s3FGZp8KbP9m-iRKiWKpw(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->lambda$run$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    .line 2133
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$run$0(I)V
    .locals 2

    .line 2170
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "Error while calling WindowManager"

    .line 2172
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "KeyguardViewMediator.mKeyGuardGoingAwayRunnable"

    .line 2136
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "keyguardGoingAway"

    .line 2137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->keyguardGoingAway()V

    .line 2141
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->shouldDisableWindowAnimationsForUnlock()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2142
    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$5200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2143
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 2147
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object v1

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isGoingToNotificationShade()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2148
    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$5200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x1

    .line 2151
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object v1

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isUnlockWithWallpaper()Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x4

    .line 2154
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object v1

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->shouldSubtleWindowAnimationsForUnlock()Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x8

    .line 2159
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 2160
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object v1

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    .line 2168
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2175
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
