.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;
.super Ljava/lang/Object;
.source "LooperSlowLogController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->updateSlowDispatchOnChoreographer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $csLog:Ljava/lang/String;

.field final synthetic $curTime:J

.field final synthetic $slowLog:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iput-wide p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;->$curTime:J

    iput-object p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;->$slowLog:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;->$csLog:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iget-wide v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;->$curTime:J

    iget-object v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;->$slowLog:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController$updateSlowDispatchOnChoreographer$1;->$csLog:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->access$appendBuffer(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
