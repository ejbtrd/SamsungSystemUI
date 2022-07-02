.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FreeformContainerFolderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderItemViewHolder"
.end annotation


# instance fields
.field private final mIconView:Landroid/widget/ImageView;

.field private mItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Landroid/view/View;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    .line 647
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 648
    sget p1, Lcom/android/systemui/R$id;->freeform_container_item_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    const/4 p0, 0x0

    .line 649
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 656
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 657
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 658
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v1, ")"

    const-string v2, "[FolderView] onTouch("

    const-string v3, "FreeformContainer"

    const/4 v4, 0x1

    if-eqz p2, :cond_6

    const/4 v5, 0x0

    if-eq p2, v4, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto/16 :goto_1

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1900(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 672
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v6}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 673
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)F

    move-result v1

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 675
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Landroid/graphics/Rect;)V

    float-to-double v6, p1

    float-to-double v0, v0

    .line 677
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 678
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    .line 679
    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 680
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->showDismissButton(Landroid/graphics/Rect;)V

    .line 681
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    .line 682
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2502(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 683
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2602(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 684
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2700(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    .line 685
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$000()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 686
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): Ready to move"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v5

    .line 695
    :cond_3
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 696
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    if-eqz p1, :cond_5

    .line 699
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    move-result-object p1

    const/16 p2, 0x1e

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 701
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    move-result-object p0

    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZ)V

    return v5

    .line 662
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v5, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1802(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;F)F

    .line 663
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1902(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;F)F

    .line 664
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$000()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 665
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return v4
.end method
