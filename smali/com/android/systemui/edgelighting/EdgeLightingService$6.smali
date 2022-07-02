.class Lcom/android/systemui/edgelighting/EdgeLightingService$6;
.super Ljava/lang/Object;
.source "EdgeLightingService.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/EdgeLightingService;->registerCoverListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$6;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$6;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 875
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$6;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->notifyScreenOff()V

    goto :goto_0

    .line 877
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$6;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->notifyScreenOn()V

    :cond_1
    :goto_0
    return-void
.end method
