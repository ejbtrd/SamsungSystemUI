.class Lcom/android/systemui/media/SecMediaControlPanel$8;
.super Ljava/lang/Object;
.source "SecMediaControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecMediaControlPanel;->initLongPressMenu(Lcom/android/systemui/media/MediaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field final synthetic val$guts:Landroid/view/View;

.field final synthetic val$options:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$8;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$8;->val$options:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$8;->val$guts:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 771
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$8;->val$options:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$8;->val$guts:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$8;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$2100(Lcom/android/systemui/media/SecMediaControlPanel;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$900(Lcom/android/systemui/media/SecMediaControlPanel;I)V

    .line 774
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$8;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$100(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 775
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$8;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$100(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/systemui/media/SecMediaControlPanel$Callback;->updateMediaPlayerGuts(Z)V

    :cond_0
    return-void
.end method
