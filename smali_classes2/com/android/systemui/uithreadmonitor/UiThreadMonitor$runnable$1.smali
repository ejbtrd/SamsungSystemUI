.class final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;
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

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->access$setAwake(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;I)V

    return-void
.end method
