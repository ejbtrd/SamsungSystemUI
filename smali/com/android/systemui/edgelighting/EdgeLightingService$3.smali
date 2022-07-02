.class Lcom/android/systemui/edgelighting/EdgeLightingService$3;
.super Ljava/lang/Object;
.source "EdgeLightingService.java"

# interfaces
.implements Lcom/samsung/android/edge/OnEdgeLightingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/EdgeLightingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method public static synthetic $r8$lambda$Mnu4IdaFc_ZghlbCdJ6duWciTPU(Lcom/android/systemui/edgelighting/EdgeLightingService$3;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->lambda$onStartEdgeLighting$0(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartEdgeLighting$0(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$800(Lcom/android/systemui/edgelighting/EdgeLightingService;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method


# virtual methods
.method public onScreenChanged(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->notifyScreenOn()V

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 282
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$700(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->refreshBackground()V

    goto :goto_0

    .line 285
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 286
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->notifyScreenOff()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/edgelighting/EdgeLightingService$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/EdgeLightingService$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingService$3;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$500(Lcom/android/systemui/edgelighting/EdgeLightingService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$102(Lcom/android/systemui/edgelighting/EdgeLightingService;Z)Z

    return-void
.end method

.method public onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->access$600(Lcom/android/systemui/edgelighting/EdgeLightingService;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p0, p1, v0, p2}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler;->stopEdgeLighting(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
