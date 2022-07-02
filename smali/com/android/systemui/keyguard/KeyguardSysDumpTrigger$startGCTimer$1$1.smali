.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;
.super Landroid/os/CountDownTimer;
.source "KeyguardSysDumpTrigger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $elapsedRealtimeDeadline:J

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iput-wide p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->$elapsedRealtimeDeadline:J

    const-wide/32 v0, 0xea60

    .line 339
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getUpdateMonitor$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const-class v1, Landroid/view/View;

    invoke-static {v1}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$setViewCount$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;J)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getViewCount$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->makeHeapDump()V

    .line 363
    :cond_1
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 341
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getUpdateMonitor$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getViewCount$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)J

    move-result-wide p1

    const-wide/16 v0, 0x4e20

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    .line 347
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 348
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getExecutor$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1$onTick$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1$onTick$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    const-wide/16 v0, 0x64

    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_1
    return-void

    .line 342
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
