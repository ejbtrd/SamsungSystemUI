.class Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;


# direct methods
.method public static synthetic $r8$lambda$YHOMUBUSqc_zDRvbZUWvgetcqZg(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;->lambda$onFinishedGoingToSleep$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFinishedGoingToSleep$0()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onFinishedGoingToSleep : ACTION_SNOTE_SCREEN_OFF"

    .line 374
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.snote.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.notes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 1

    .line 372
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isScreenOffMemoEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->updatePhoneState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    goto :goto_0

    .line 399
    :cond_1
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    goto :goto_0

    .line 393
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    aput-object v1, p1, v3

    const-string v2, "KeyguardViewMediator"

    const-string v3, "onPhoneStateChanged %s => %s"

    .line 403
    invoke-static {v2, v3, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 406
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0, v1}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->updatePhoneState(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;

    invoke-interface {p0}, Lcom/android/systemui/keyguard/ViewMediatorHelperCallback;->adjustStatusBarLocked()V

    return-void
.end method
