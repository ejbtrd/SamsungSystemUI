.class final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/log/LogBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getFullScreenIntentEntries$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getCurrentEntry$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, " TIMEOUT Run "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S.S.N."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getWakelock$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 551
    :goto_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez v0, :cond_2

    sget-boolean v4, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v4, :cond_5

    .line 552
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getScreenOnwakelock$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->isAcquired()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 553
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getScreenOnwakelock$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 555
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setRemoving$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V

    if-nez v0, :cond_6

    .line 556
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_b

    :cond_6
    const-string v0, " RELEASE DOZE STATE - TIMEOUT"

    .line 557
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getPluginAODManagerLazy$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/doze/PluginAODManager;->requestDozeState(IZ)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupShowing$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupType$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 562
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_7

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v4, v2, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getTopPopupHeight$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    aput v4, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v1, "ofFloat(notiPopupView, View.TRANSLATION_Y,0F, (topPopupHeight * -1).toFloat())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x190

    .line 564
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_4

    .line 566
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v1, "ofFloat(notiPopupView, View.TRANSLATION_Y, 0F, -71F)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    .line 567
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 569
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getTopPopupAnimationListener$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 570
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    .line 572
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getWindowManager$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 573
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setNotiPopupShowing$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/view/View;)V

    .line 577
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setNotiPopupType$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;I)V

    .line 579
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getHandler$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 587
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$showDetailAgain(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    :goto_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3d720000    # -71.0f
    .end array-data
.end method
