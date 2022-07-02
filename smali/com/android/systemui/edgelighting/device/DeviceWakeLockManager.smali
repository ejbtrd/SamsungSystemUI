.class public Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;
.super Ljava/lang/Object;
.source "DeviceWakeLockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceWakeLockManager"

.field private static sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;


# instance fields
.field private final mWakeLockMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    invoke-direct {v1}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;-><init>()V

    sput-object v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    .line 24
    :cond_0
    sget-object v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;
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
.method public releaseWakeLockPackage(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseWakeLockPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setWakeLockPackage(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWakeLockPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
