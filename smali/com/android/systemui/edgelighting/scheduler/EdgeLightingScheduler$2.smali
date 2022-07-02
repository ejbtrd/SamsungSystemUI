.class Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;
.super Ljava/lang/Object;
.source "EdgeLightingScheduler.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;


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

    .line 127
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$300(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public onChange(Z)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->access$200(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->setEnable(Z)V

    return-void
.end method
