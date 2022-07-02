.class Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$3;
.super Ljava/lang/Object;
.source "PanelCarrierDataUsageLabelView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)V

    .line 159
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->access$702(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
