.class public Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;
.super Ljava/lang/Object;
.source "ApplicationLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationLightingScheduler"


# instance fields
.field private mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

.field mLinkedInfo:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public getCurrentLightingScheduleInfo()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 3

    if-nez p1, :cond_0

    .line 35
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->TAG:Ljava/lang/String;

    const-string p1, "putLighting: invalid param "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;

    if-nez v1, :cond_1

    .line 41
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->TAG:Ljava/lang/String;

    const-string p1, "putLighting: no listener"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    monitor-exit v0

    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;->startApplicationLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 51
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeLighting(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 59
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeLighting: invalid param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;

    if-nez p1, :cond_1

    .line 64
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeLighting: no listener"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    monitor-exit v0

    return-void

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 70
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;->startApplicationLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;->stopApplicationLighting()V

    .line 75
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setListener(Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 20
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
