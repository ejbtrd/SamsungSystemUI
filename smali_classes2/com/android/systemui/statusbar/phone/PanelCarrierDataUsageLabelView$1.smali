.class Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;
.super Landroid/content/BroadcastReceiver;
.source "PanelCarrierDataUsageLabelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$000()Z

    move-result p2

    const-string v0, "PanelCarrierDataUsageLabelView"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DataUsage String: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$300(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$202(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;Z)Z

    .line 89
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->updateUsageInfo()V

    .line 90
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_SIM_STATE_CHANGED: visibility="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$200(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " rewrite String to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 92
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->updateUsageInfo()V

    :cond_4
    :goto_1
    return-void
.end method
