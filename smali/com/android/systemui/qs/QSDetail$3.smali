.class Lcom/android/systemui/qs/QSDetail$3;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->setupDetailHeader(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;

.field final synthetic val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$3;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 543
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$3;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p1, :cond_2

    .line 544
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p1}, Lcom/android/systemui/qs/QSDetail;->access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$3;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTile(Lcom/android/systemui/plugins/qs/DetailAdapter;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 547
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileMapKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$3;->val$adapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 551
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    const-string v2, "QPDE1008"

    invoke-static {v0, v2, p1, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p1}, Lcom/android/systemui/qs/QSDetail;->access$200(Lcom/android/systemui/qs/QSDetail;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 555
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$3;->this$0:Lcom/android/systemui/qs/QSDetail;

    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetail;->access$300(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/android/systemui/qs/QSDetail;->access$400(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->switch_bar_off:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
