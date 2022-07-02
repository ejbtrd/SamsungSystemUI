.class public abstract Lcom/android/systemui/sensor/SensorController;
.super Ljava/lang/Object;
.source "SensorController.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sensor/SensorController$Companion;,
        Lcom/android/systemui/sensor/SensorController$SensorInfo;,
        Lcom/android/systemui/sensor/SensorController$SensorListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/sensor/SensorController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final sensorInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/sensor/SensorController$SensorInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sensorManager:Landroid/hardware/SensorManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/sensor/SensorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/sensor/SensorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/sensor/SensorController;->Companion:Lcom/android/systemui/sensor/SensorController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 3
    .param p1    # Landroid/hardware/SensorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "sensorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sensor/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    .line 36
    new-instance p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    invoke-direct {p0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;-><init>()V

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->setSensorType(I)V

    const v2, 0x10036

    .line 38
    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->setSensor(Landroid/hardware/Sensor;)V

    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final isRegistered(I)Z
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->getBRegistered()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "arg0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1    # Landroid/hardware/SensorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onTrigger="

    .line 110
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SensorController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/systemui/sensor/SensorController;->onTrigger(Landroid/hardware/TriggerEvent;)V

    return-void
.end method

.method public abstract onTrigger(Landroid/hardware/TriggerEvent;)V
    .param p1    # Landroid/hardware/TriggerEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final register(I)Z
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->getSensor()Landroid/hardware/Sensor;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const-string v3, "SensorController"

    if-nez v1, :cond_1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "register - not supported sensor type="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->getBRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "register - already registered sensor type="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/sensor/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->getSensor()Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {p1, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "register - requestTriggerSensor return false"

    .line 77
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const-string/jumbo p0, "register"

    .line 81
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->setBRegistered(Z)V

    return p0
.end method

.method public final unregister(I)Z
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->sensorInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->getSensor()Landroid/hardware/Sensor;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const-string v3, "SensorController"

    if-nez v1, :cond_1

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "unregister - not supported sensor type="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 93
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->getBRegistered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "unregister - already unregistered sensor type="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/sensor/SensorController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string/jumbo p0, "unregister"

    .line 99
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0, v2}, Lcom/android/systemui/sensor/SensorController$SensorInfo;->setBRegistered(Z)V

    const/4 p0, 0x1

    return p0
.end method
