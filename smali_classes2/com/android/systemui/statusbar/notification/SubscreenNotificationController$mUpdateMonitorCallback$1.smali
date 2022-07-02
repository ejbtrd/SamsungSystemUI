.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SubscreenNotificationController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/log/LogBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 776
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1    # Lcom/samsung/android/cover/CoverState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    .line 779
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    .line 781
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setCovered$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V

    .line 782
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$isCovered$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getHandler$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getMTimeoutRunnable$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 783
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getClickedRunnable$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 784
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getClickedRunnable$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 785
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setClickedRunnable$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ljava/lang/Runnable;)V

    .line 787
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$dismissImmediately(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    goto :goto_1

    .line 790
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$isCovered$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z

    .line 792
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onUpdateCoverState - coverType = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isCovered = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$isCovered$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S.S.N."

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
