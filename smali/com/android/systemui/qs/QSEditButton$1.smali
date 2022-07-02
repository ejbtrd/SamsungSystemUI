.class Lcom/android/systemui/qs/QSEditButton$1;
.super Ljava/lang/Object;
.source "QSEditButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSEditButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditButton;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditButton$1;->this$0:Lcom/android/systemui/qs/QSEditButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 39
    iget-object p1, p0, Lcom/android/systemui/qs/QSEditButton$1;->this$0:Lcom/android/systemui/qs/QSEditButton;

    invoke-static {p1}, Lcom/android/systemui/qs/QSEditButton;->access$000(Lcom/android/systemui/qs/QSEditButton;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPPE1008"

    const-string v1, "location"

    const-string v2, "last button"

    const-string v3, "QUICK_PANEL_BUTTON"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/qs/QSEditButton$1;->this$0:Lcom/android/systemui/qs/QSEditButton;

    invoke-static {p1}, Lcom/android/systemui/qs/QSEditButton;->access$000(Lcom/android/systemui/qs/QSEditButton;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSEditButton$1;->this$0:Lcom/android/systemui/qs/QSEditButton;

    invoke-static {p0}, Lcom/android/systemui/qs/QSEditButton;->access$100(Lcom/android/systemui/qs/QSEditButton;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanelController;->showEdit(Landroid/view/View;)V

    :cond_0
    return-void
.end method
