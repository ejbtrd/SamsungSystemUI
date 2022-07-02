.class public final Lcom/android/systemui/sensor/PickupController;
.super Lcom/android/systemui/sensor/SensorController;
.source "PickupController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sensor/PickupController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/sensor/PickupController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private addedMonitorCallback:Z

.field private baseSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private phoneState:I

.field private final pickupListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sensor/SensorController$SensorListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final powerManager:Landroid/os/PowerManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private registerRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/sensor/PickupController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/sensor/PickupController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/sensor/PickupController;->Companion:Lcom/android/systemui/sensor/PickupController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/SettingsHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/PowerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/hardware/SensorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settingsHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "powerManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sensorManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p5}, Lcom/android/systemui/sensor/SensorController;-><init>(Landroid/hardware/SensorManager;)V

    .line 46
    iput-object p2, p0, Lcom/android/systemui/sensor/PickupController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/sensor/PickupController;->powerManager:Landroid/os/PowerManager;

    .line 48
    iput-object p4, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    .line 54
    new-instance p2, Lcom/android/systemui/sensor/PickupController$registerRunnable$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/sensor/PickupController$registerRunnable$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object p2, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance p2, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/sensor/PickupController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object p2, p0, Lcom/android/systemui/sensor/PickupController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 90
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 93
    new-instance p1, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController;->baseSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getPowerManager$p(Lcom/android/systemui/sensor/PickupController;)Landroid/os/PowerManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->powerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static final synthetic access$getRegisterRunnable$p(Lcom/android/systemui/sensor/PickupController;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->registerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$isLiftToWakeEnabled(Lcom/android/systemui/sensor/PickupController;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->registerSensor()V

    return-void
.end method

.method public static final synthetic access$setPhoneState$p(Lcom/android/systemui/sensor/PickupController;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/systemui/sensor/PickupController;->phoneState:I

    return-void
.end method

.method public static final synthetic access$unRegisterSensor(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->unRegisterSensor()V

    return-void
.end method

.method private final isLiftToWakeEnabled()Z
    .locals 1

    .line 105
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLiftToWakeEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final registerSensor()V
    .locals 2

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/SensorController;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/SensorController;->unregister(I)Z

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/SensorController;->register(I)Z

    return-void
.end method

.method private final unRegisterSensor()V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/SensorController;->unregister(I)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "   PickupController Dump"

    .line 153
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "      addedMonitorCallback="

    .line 154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-boolean p1, p0, Lcom/android/systemui/sensor/PickupController;->addedMonitorCallback:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 156
    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/sensor/PickupController$dump$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/sensor/PickupController$dump$1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3
    .param p1    # Landroid/hardware/TriggerEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 121
    iget v0, p0, Lcom/android/systemui/sensor/PickupController;->phoneState:I

    const-string v1, "PickupController"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string/jumbo p0, "onTrigger return cause by CALL_STATE_OFFHOOK"

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p1, Landroid/hardware/TriggerEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_5

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "onTrigger Listener.size()="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    :goto_0
    add-int/lit8 v0, p1, -0x1

    .line 128
    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {v1}, Lcom/android/systemui/sensor/SensorController$SensorListener;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController$SensorListener;->onExecute()V

    return-void

    :cond_3
    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public final registerListener(Lcom/android/systemui/sensor/SensorController$SensorListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/sensor/SensorController$SensorListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x2

    .line 144
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "register listener caller="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PickupController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final start()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->baseSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/PickupController;->registerListener(Lcom/android/systemui/sensor/SensorController$SensorListener;)V

    return-void
.end method
