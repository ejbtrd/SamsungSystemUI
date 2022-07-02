.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$1;
.super Ljava/util/TimerTask;
.source "KeyguardSysDumpTrigger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->startViewCheckTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 388
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getTimer$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Ljava/util/Timer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getUpdateMonitor$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/view/View;

    .line 394
    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 396
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const-wide/32 v2, 0x2bf20

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$startGCTimer(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;JJ)V

    :cond_1
    :goto_0
    return-void
.end method
