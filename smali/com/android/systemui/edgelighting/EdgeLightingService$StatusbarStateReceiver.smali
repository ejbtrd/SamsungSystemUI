.class Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/EdgeLightingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusbarStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;Lcom/android/systemui/edgelighting/EdgeLightingService$1;)V
    .locals 0

    .line 818
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 825
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.systemui.statusbar.ANIMATING"

    .line 827
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "com.samsung.systemui.statusbar.EXPANDED"

    .line 828
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 830
    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_STATUS_OPEN"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 832
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$StatusbarStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->notifyStatusBarOpen()V

    :cond_1
    return-void
.end method
