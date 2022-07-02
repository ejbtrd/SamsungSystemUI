.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UiThreadMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->access$setDreaming$p(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;Z)V

    .line 86
    invoke-static {}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitorKt;->access$getENABLE_PAUSE$p()Z

    move-result v0

    const-string/jumbo v1, "onDreamingStateChanged "

    const-string v2, "UiThreadMonitor"

    if-eqz v0, :cond_1

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-static {p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->access$pause(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-static {p1}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->access$sendAsyncMsg(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    .line 93
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$callback$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-static {p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->access$resume(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    goto :goto_0

    .line 96
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ignored"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
