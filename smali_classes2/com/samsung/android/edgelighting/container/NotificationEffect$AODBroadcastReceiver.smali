.class Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/container/NotificationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;


# direct methods
.method private constructor <init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 821
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;Lcom/samsung/android/edgelighting/container/NotificationEffect$1;)V
    .locals 0

    .line 821
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;-><init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 826
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 828
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "info"

    const/4 v0, -0x1

    .line 830
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 832
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BR_TSP_EVENT :onReceive : There is no [action] value"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "location"

    .line 836
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object p1

    if-eqz p1, :cond_4

    .line 838
    array-length p2, p1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 843
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p2}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->getScreenSizeRateFromPhysical()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 846
    aget v0, p1, v2

    div-float/2addr v0, p2

    aput v0, p1, v2

    .line 847
    aget v0, p1, v1

    div-float/2addr v0, p2

    aput v0, p1, v1

    .line 853
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p2, p2, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p2}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object p2

    aget v0, p1, v2

    float-to-int v0, v0

    aget p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 855
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->launchPendingIntent()V

    goto :goto_0

    .line 857
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BR_TSP_EVENT :onReceive : out of touch region"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 839
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BR_TSP_EVENT :onReceive : There is no [x,y position] value"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
