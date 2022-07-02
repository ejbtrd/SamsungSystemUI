.class public Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;
.super Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;
.source "RefPowerManager.java"


# static fields
.field private static sInstance:Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;


# instance fields
.field public WAKE_UP_REASON_COVER_OPEN:I

.field public WAKE_UP_REASON_KEY:I

.field public WAKE_UP_REASON_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;->sInstance:Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;

    invoke-direct {v1}, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;->sInstance:Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;

    .line 12
    :cond_0
    sget-object v1, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;->sInstance:Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.os.PowerManager"

    return-object p0
.end method

.method protected loadStaticFields()V
    .locals 1

    const-string v0, "WAKE_UP_REASON_UNKNOWN"

    .line 32
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->getIntStaticValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;->WAKE_UP_REASON_UNKNOWN:I

    const-string v0, "WAKE_UP_REASON_KEY"

    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->getIntStaticValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;->WAKE_UP_REASON_KEY:I

    const-string v0, "WAKE_UP_REASON_COVER_OPEN"

    .line 34
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->getIntStaticValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/reflection/os/RefPowerManager;->WAKE_UP_REASON_COVER_OPEN:I

    return-void
.end method
