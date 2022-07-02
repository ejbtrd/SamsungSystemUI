.class public Lcom/android/systemui/wallpaper/WallpaperChangeObserver;
.super Ljava/lang/Object;
.source "WallpaperChangeObserver.java"


# static fields
.field private static sState:I

.field private static final sWaitingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->sWaitingQueue:Ljava/util/concurrent/BlockingDeque;

    const/4 v0, -0x1

    .line 25
    sput v0, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->sState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public await()V
    .locals 2

    const-wide/16 v0, 0x1b58

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->await(J)V

    return-void
.end method

.method public await(J)V
    .locals 2

    const-string p0, "WallpaperChangeObserver"

    .line 53
    sget v0, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->sState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :try_start_0
    const-string v0, "await start"

    .line 58
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->sWaitingQueue:Ljava/util/concurrent/BlockingDeque;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 60
    sget p2, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->sState:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "await done: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {p0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public updateState(I)V
    .locals 3

    .line 32
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    const-string v0, "WallpaperChangeObserver"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState: state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 34
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->sWaitingQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 36
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 41
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->sWaitingQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 44
    :cond_2
    :goto_0
    sput p1, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->sState:I

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
