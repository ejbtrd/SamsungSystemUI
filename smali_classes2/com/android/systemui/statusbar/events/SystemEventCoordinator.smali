.class public final Lcom/android/systemui/statusbar/events/SystemEventCoordinator;
.super Ljava/lang/Object;
.source "SystemEventCoordinator.kt"


# instance fields
.field private final batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final batteryStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final privacyController:Lcom/android/systemui/privacy/PrivacyItemController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/time/SystemClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/policy/BatteryController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/privacy/PrivacyItemController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "systemClock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batteryController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "privacyController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 81
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->batteryStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$batteryStateListener$1;

    .line 104
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    return-void
.end method

.method public static final synthetic access$getSystemClock$p(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)Lcom/android/systemui/util/time/SystemClock;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    return-object p0
.end method


# virtual methods
.method public final attachScheduler(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    return-void
.end method

.method public final notifyPluggedIn()V
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/events/BatteryEvent;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/events/BatteryEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    return-void

    :cond_0
    const-string/jumbo p0, "scheduler"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final notifyPrivacyItemsChanged(ZZZ)V
    .locals 1

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/events/PrivacyEvent;-><init>(Z)V

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->getCurrentPrivacyItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/events/PrivacyEvent;->setPrivacyItems(Ljava/util/List;)V

    .line 75
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/events/PrivacyEvent;->setForceShowingChip(Z)V

    .line 76
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/events/PrivacyEvent;->setApplyDelay(Z)V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    return-void

    :cond_0
    const-string/jumbo p0, "scheduler"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final notifyPrivacyItemsEmpty()V
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->setShouldShowPersistentPrivacyIndicator(Z)V

    return-void

    :cond_0
    const-string/jumbo p0, "scheduler"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final startObserving()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    return-void
.end method

.method public final stopObserving()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    return-void
.end method
