.class final Lcom/android/systemui/sensor/SensorController$SensorInfo;
.super Ljava/lang/Object;
.source "SensorController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sensor/SensorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SensorInfo"
.end annotation


# instance fields
.field private bRegistered:Z

.field private sensor:Landroid/hardware/Sensor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sensorType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBRegistered()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    return p0
.end method

.method public final getSensor()Landroid/hardware/Sensor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public final setBRegistered(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    return-void
.end method

.method public final setSensor(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 43
    iput-object p1, p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public final setSensorType(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensorType:I

    return-void
.end method
