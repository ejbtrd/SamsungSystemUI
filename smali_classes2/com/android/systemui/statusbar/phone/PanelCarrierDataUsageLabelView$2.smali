.class Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$2;
.super Ljava/lang/Thread;
.source "PanelCarrierDataUsageLabelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->updateUsageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$102(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$500(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
