.class final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;
.super Ljava/lang/Object;
.source "UiThreadMonitor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "handleAsyncMsg"

    .line 74
    invoke-static {v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitorKt;->access$debugLog(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->access$setLastAsyncMsgHandledTimed$p(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;J)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-static {v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->access$isPaused$p(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$asyncRunnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-static {p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->access$sendAsyncMsg(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    :cond_0
    return-void
.end method
