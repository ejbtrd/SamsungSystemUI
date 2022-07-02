.class final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;
.super Ljava/lang/Object;
.source "KeyguardSysDumpTrigger.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->startGCTimer(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $count:J

.field final synthetic $elapsedRealtimeDeadline:J

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iput-wide p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->$count:J

    iput-wide p4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->$elapsedRealtimeDeadline:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 337
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getCountDownTimer$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget-wide v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->$count:J

    invoke-static {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$setViewCount$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;J)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget-wide v3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;->$elapsedRealtimeDeadline:J

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;J)V

    .line 365
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p0

    .line 339
    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$setCountDownTimer$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Landroid/os/CountDownTimer;)V

    return-void
.end method
