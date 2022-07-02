.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FreeformContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;)V
    .locals 0

    .line 764
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 767
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getIconViewListCount()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 764
    check-cast p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->onBindViewHolder(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;I)V
    .locals 0

    .line 780
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[FolderView] onBindViewHolder: position="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 764
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;
    .locals 2

    .line 773
    new-instance p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$3000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->freeform_container_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 764
    check-cast p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->onViewAttachedToWindow(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)V
    .locals 2

    .line 785
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 786
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getItemByPosition(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->access$3102(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 792
    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->access$3200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    .line 793
    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->access$3100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getShowingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 792
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 795
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 796
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->access$3100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 797
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 764
    check-cast p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->onViewDetachedFromWindow(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)V
    .locals 1

    .line 802
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 804
    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;->access$3200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
