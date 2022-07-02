.class Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;
.super Landroid/os/Handler;
.source "EdgeLightingRoutineProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;Landroid/os/Looper;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    .line 44
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 71
    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "stopEdgeEffect()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$500(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)V

    goto/16 :goto_1

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    if-nez p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8b3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;-><init>(Landroid/content/Context;IZ)V

    invoke-static {p1, v1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$002(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    goto :goto_0

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 50
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 52
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$100(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->setForceSettingValue(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->setDozeDrawMode(Z)V

    .line 60
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 61
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_5

    .line 62
    invoke-static {}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "registerScreenStateReceiver"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$300(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)V

    .line 66
    :cond_5
    invoke-static {}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "startEdgeEffect()"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$400(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->startEdgeEffect(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->access$400(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getLightingDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method
