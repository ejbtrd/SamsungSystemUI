.class public Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;
.super Ljava/lang/Object;
.source "PluginLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/PluginLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerExecutor"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PluginLockManagerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1420
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1424
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "PluginLockManager"

    const-string p1, "HandlerExecutor execute failed"

    .line 1425
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public executeDelayed(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1430
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "PluginLockManager"

    const-string p1, "HandlerExecutor execute failed"

    .line 1431
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
