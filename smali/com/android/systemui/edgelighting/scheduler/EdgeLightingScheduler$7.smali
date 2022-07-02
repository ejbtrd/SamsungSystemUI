.class Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;
.super Landroid/database/ContentObserver;
.source "EdgeLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->registerOneHandOperationObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Landroid/os/Handler;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 359
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$1400(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Landroid/content/Context;)Z

    move-result p1

    .line 360
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOneHandOperationObserver value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$700(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 363
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$700(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    :cond_0
    return-void
.end method
