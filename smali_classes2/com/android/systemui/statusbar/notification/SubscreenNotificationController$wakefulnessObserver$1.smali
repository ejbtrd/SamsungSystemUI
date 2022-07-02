.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$wakefulnessObserver$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationController.kt"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$wakefulnessObserver$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$wakefulnessObserver$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiPopupShowing$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "S.S.N."

    const-string v1, " onFinishedGoingToSleep and HUN is showing, so dismiss it"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$wakefulnessObserver$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$dismissImmediately(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 109
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getLastWakeReason()I

    move-result v0

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, " onStartedWakingUp - why: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S.S.N."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x71

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$wakefulnessObserver$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getPresentation$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$wakefulnessObserver$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$setNotiPopupDoubleClicked$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$wakefulnessObserver$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getNotiTemplate$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->performClick()V

    :cond_1
    :goto_0
    return-void
.end method
