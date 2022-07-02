.class Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;
.super Ljava/lang/Object;
.source "EdgeLightingScheduler.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler$IApplicationLightingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->setController(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startApplicationLighting(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->startApplication([I)V

    return-void
.end method

.method public stopApplicationLighting()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->isUIControllerExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/IEdgeLightingScheduler$Requester;->getUIController(Z)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->stopApplication()V

    :cond_0
    return-void
.end method
