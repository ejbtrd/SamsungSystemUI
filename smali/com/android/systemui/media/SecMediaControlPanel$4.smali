.class Lcom/android/systemui/media/SecMediaControlPanel$4;
.super Ljava/lang/Object;
.source "SecMediaControlPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecMediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$4;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 593
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$4;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 594
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$4;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$700(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecPlayerViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayer()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$4;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$700(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecPlayerViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getOptions()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$4;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$800(Lcom/android/systemui/media/SecMediaControlPanel;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$900(Lcom/android/systemui/media/SecMediaControlPanel;I)V

    .line 597
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$4;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$100(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 598
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$4;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$100(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/systemui/media/SecMediaControlPanel$Callback;->updateMediaPlayerGuts(Z)V

    :cond_0
    return v0
.end method
