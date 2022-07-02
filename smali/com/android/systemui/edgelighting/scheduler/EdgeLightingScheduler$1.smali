.class Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;
.super Landroid/os/Handler;
.source "EdgeLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;
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

    .line 110
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$100(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$000(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    :goto_0
    return-void
.end method
