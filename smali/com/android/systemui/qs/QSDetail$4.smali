.class Lcom/android/systemui/qs/QSDetail$4;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Lcom/android/systemui/qs/QSDetail$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanStateChanged(Z)V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$4$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$4$3;-><init>(Lcom/android/systemui/qs/QSDetail$4;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScrollToDetail(II)V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$4$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/qs/QSDetail$4$4;-><init>(Lcom/android/systemui/qs/QSDetail$4;II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$700(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$700(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isCustomizerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$4$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail$4$2;-><init>(Lcom/android/systemui/qs/QSDetail$4;Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$4$1;-><init>(Lcom/android/systemui/qs/QSDetail$4;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    new-instance v1, Lcom/android/systemui/qs/QSDetail$4$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSDetail$4$5;-><init>(Lcom/android/systemui/qs/QSDetail$4;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
