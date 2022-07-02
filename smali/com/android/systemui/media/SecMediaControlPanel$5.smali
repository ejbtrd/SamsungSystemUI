.class Lcom/android/systemui/media/SecMediaControlPanel$5;
.super Ljava/lang/Object;
.source "SecMediaControlPanel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SecMediaControlPanel;
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

    .line 612
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1000(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 616
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1100(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 617
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1200(Lcom/android/systemui/media/SecMediaControlPanel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1300(Lcom/android/systemui/media/SecMediaControlPanel;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1400(Lcom/android/systemui/media/SecMediaControlPanel;F)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$200(Lcom/android/systemui/media/SecMediaControlPanel;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {v1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1500(Lcom/android/systemui/media/SecMediaControlPanel;)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {v1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1600(Lcom/android/systemui/media/SecMediaControlPanel;)I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1700(Lcom/android/systemui/media/SecMediaControlPanel;I)V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$700(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecPlayerViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$5;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$1800(Lcom/android/systemui/media/SecMediaControlPanel;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
