.class public Lcom/android/systemui/volume/util/HandlerWrapper;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mWorker:Landroid/os/Handler;

.field mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mHandler:Landroid/os/Handler;

    .line 13
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VolumeHandlerWrapper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mWorkerThread:Landroid/os/HandlerThread;

    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mWorker:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 19
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public postInBgThread(Ljava/lang/Runnable;)Z
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mWorker:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public quitBgThread()V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
