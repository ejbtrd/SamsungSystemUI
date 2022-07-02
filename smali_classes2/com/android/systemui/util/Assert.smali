.class public Lcom/android/systemui/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# static fields
.field private static final sMainLooper:Landroid/os/Looper;

.field private static sTestThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/android/systemui/util/Assert;->sTestThread:Ljava/lang/Thread;

    return-void
.end method

.method public static isCurrentTestableLooper()Z
    .locals 2

    .line 61
    sget-object v0, Lcom/android/systemui/util/Assert;->sTestThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMainThread()V
    .locals 4

    .line 44
    sget-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/util/Assert;->sTestThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "should be called from the main thread. sMainLooper.threadName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Thread.currentThread()="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static isNotMainThread()V
    .locals 2

    .line 53
    sget-object v0, Lcom/android/systemui/util/Assert;->sMainLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/util/Assert;->sTestThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should not be called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTestThread(Ljava/lang/Thread;)V
    .locals 0

    .line 40
    sput-object p0, Lcom/android/systemui/util/Assert;->sTestThread:Ljava/lang/Thread;

    return-void
.end method

.method public static setTestableLooper(Landroid/os/Looper;)V
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/Assert;->setTestThread(Ljava/lang/Thread;)V

    return-void
.end method
