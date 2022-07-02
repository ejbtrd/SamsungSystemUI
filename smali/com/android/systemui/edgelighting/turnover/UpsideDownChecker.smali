.class public Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;
.super Ljava/lang/Object;
.source "UpsideDownChecker.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastSensorValue:Z

.field private mListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

.field private mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSupportPositionSensor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSupportPositionSensor:Z

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.sensorhub"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "scontext"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v0, 0x16

    .line 77
    invoke-virtual {p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 79
    sget-object p1, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->TAG:Ljava/lang/String;

    const-string v0, "The Sensor is not supported in device"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSupportPositionSensor:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    if-nez v0, :cond_0

    .line 106
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregister sensor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSupportUpsideDownChecker()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSupportPositionSensor:Z

    return p0
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 3

    .line 33
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 36
    sget-object p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->TAG:Ljava/lang/String;

    const-string p1, "onSemContextChanged: not sensor type"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSContextChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mLastSensorValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 59
    invoke-interface {p1, v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;->onChanged(Z)V

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    goto :goto_0

    .line 46
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    if-eqz p1, :cond_2

    return-void

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 50
    invoke-interface {p1, v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;->onChanged(Z)V

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    goto :goto_0

    :cond_3
    const-string p0, "onSContextChanged(), listener is null"

    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public run(Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mLastSensorValue:Z

    .line 87
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v0, :cond_0

    .line 88
    sget-object p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->TAG:Ljava/lang/String;

    const-string p1, "The sensor is not supported in device"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_0
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    if-eqz v0, :cond_1

    .line 94
    sget-object p1, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "run: Listener is not null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    .line 98
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->mSContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/16 v0, 0x16

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
