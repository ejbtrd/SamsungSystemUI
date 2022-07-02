.class Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
.super Ljava/lang/Object;
.source "ThresholdSensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/sensors/ThresholdSensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final mExecution:Lcom/android/systemui/util/concurrency/Execution;

.field private final mResources:Landroid/content/res/Resources;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorDelay:I

.field private final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field private mSensorSet:Z

.field private mThresholdLatchValue:F

.field private mThresholdLatchValueSet:Z

.field private mThresholdSet:Z

.field private mThresholdValue:F


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/concurrency/Execution;)V
    .locals 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 218
    iput v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorDelay:I

    .line 228
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    .line 229
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 230
    iput-object p3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 9

    .line 301
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z

    if-eqz v0, :cond_2

    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    if-eqz v0, :cond_1

    .line 309
    iget v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    iget v1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 314
    new-instance v0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v3, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    iget-object v4, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    iget v5, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    iget v6, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    iget v7, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorDelay:I

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl;-><init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/util/concurrency/Execution;FFILcom/android/systemui/util/sensors/ThresholdSensorImpl$1;)V

    return-object v0

    .line 310
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Threshold must be less than or equal to Threshold Latch"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A threshold was not successfully set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A sensor was not successfully set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method findSensorByType(Ljava/lang/String;Z)Landroid/hardware/Sensor;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 325
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 327
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 328
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_3

    .line 330
    invoke-virtual {v0}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    :goto_1
    move-object v1, v0

    :cond_4
    return-object v1
.end method

.method setSensor(Landroid/hardware/Sensor;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensor:Landroid/hardware/Sensor;

    const/4 p1, 0x1

    .line 293
    iput-boolean p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorSet:Z

    return-object p0
.end method

.method setSensorDelay(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 0

    .line 234
    iput p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mSensorDelay:I

    return-object p0
.end method

.method setSensorResourceId(IZ)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setSensorType(Ljava/lang/String;Z)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    return-object p0
.end method

.method setSensorType(Ljava/lang/String;Z)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->findSensorByType(Ljava/lang/String;Z)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setSensor(Landroid/hardware/Sensor;)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    :cond_0
    return-object p0
.end method

.method setThresholdLatchResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdLatchValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method setThresholdLatchValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 0

    .line 286
    iput p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z

    return-object p0
.end method

.method setThresholdResourceId(I)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->setThresholdValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method setThresholdValue(F)Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;
    .locals 1

    .line 277
    iput p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdValue:F

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdSet:Z

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValueSet:Z

    if-nez v0, :cond_0

    .line 280
    iput p1, p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;->mThresholdLatchValue:F

    :cond_0
    return-object p0
.end method
