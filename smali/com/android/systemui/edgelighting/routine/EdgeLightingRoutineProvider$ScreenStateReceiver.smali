.class Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingRoutineProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    invoke-static {}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->refreshBackground()V

    :cond_0
    return-void
.end method
