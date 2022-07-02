.class Lcom/android/systemui/qs/buttons/QSMoreButton$4;
.super Ljava/lang/Object;
.source "QSMoreButton.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/buttons/QSMoreButton;->showMorePopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/buttons/QSMoreButton;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 256
    sget v0, Lcom/android/systemui/R$id;->qs_edit:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 258
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPPE1008"

    const-string v2, "location"

    const-string v3, "more options"

    const-string v4, "QUICK_PANEL_BUTTON"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$400(Lcom/android/systemui/qs/buttons/QSMoreButton;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$300(Lcom/android/systemui/qs/buttons/QSMoreButton;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanelController;->showEdit(Landroid/view/View;)V

    goto/16 :goto_0

    .line 264
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->qspanel_layout:I

    if-ne p1, v0, :cond_2

    .line 265
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$500(Lcom/android/systemui/qs/buttons/QSMoreButton;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 266
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$600(Lcom/android/systemui/qs/buttons/QSMoreButton;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "QsLayoutNewBadge"

    invoke-static {p1, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 267
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p1, v1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$502(Lcom/android/systemui/qs/buttons/QSMoreButton;Z)Z

    .line 268
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-virtual {p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->updateMoreButtonBadgeVisibility()V

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$400(Lcom/android/systemui/qs/buttons/QSMoreButton;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/SecQSLayoutDetail;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$600(Lcom/android/systemui/qs/buttons/QSMoreButton;)Landroid/content/Context;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$style;->Theme_SystemUI:I

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/SecQSLayoutDetail;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/systemui/qs/QSPanelController;->showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    .line 272
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1012"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->noti_settings:I

    if-ne p1, v0, :cond_3

    .line 276
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$700(Lcom/android/systemui/qs/buttons/QSMoreButton;)V

    .line 278
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1013"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_3
    sget v0, Lcom/android/systemui/R$id;->contact_us:I

    if-ne p1, v0, :cond_4

    .line 282
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$600(Lcom/android/systemui/qs/buttons/QSMoreButton;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$800(Lcom/android/systemui/qs/buttons/QSMoreButton;Landroid/content/Context;)Z

    .line 284
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1014"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_4
    sget v0, Lcom/android/systemui/R$id;->button_grid:I

    if-ne p1, v0, :cond_5

    .line 288
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$900(Lcom/android/systemui/qs/buttons/QSMoreButton;)Lcom/android/systemui/qs/QSButtonGridController;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 289
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$4;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$900(Lcom/android/systemui/qs/buttons/QSMoreButton;)Lcom/android/systemui/qs/QSButtonGridController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSButtonGridController;->showDialog()V

    :cond_5
    :goto_0
    return v1
.end method
