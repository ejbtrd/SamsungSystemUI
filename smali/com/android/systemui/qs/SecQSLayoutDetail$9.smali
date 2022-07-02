.class Lcom/android/systemui/qs/SecQSLayoutDetail$9;
.super Ljava/lang/Object;
.source "SecQSLayoutDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/SecQSLayoutDetail;->showListPopupWindow(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQSLayoutDetail;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$9;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 373
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$9;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {p1}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$500(Lcom/android/systemui/qs/SecQSLayoutDetail;)Landroid/widget/LinearLayout;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$id;->menu_option:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$9;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$700(Lcom/android/systemui/qs/SecQSLayoutDetail;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->qs_panel_detail_popup_menu_when_expanded_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$9;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$900(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V

    .line 375
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$9;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$1000(Lcom/android/systemui/qs/SecQSLayoutDetail;Z)V

    .line 377
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSLayoutDetail$9;->this$0:Lcom/android/systemui/qs/SecQSLayoutDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;->access$100(Lcom/android/systemui/qs/SecQSLayoutDetail;)V

    return-void
.end method
