.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FreeformContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderItemDecoration"
.end annotation


# instance fields
.field final mItemMargin:Landroid/graphics/Rect;

.field mItemOverlapWidth:I

.field mItemSpace:I

.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 710
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;)V
    .locals 0

    .line 709
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;)V
    .locals 0

    .line 709
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 715
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_item_space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    .line 717
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_item_overlap_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemOverlapWidth:I

    .line 719
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->freeform_container_item_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 721
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->freeform_container_item_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 723
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->freeform_container_item_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 725
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_item_margin_bottom:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method getItemMargin()Landroid/graphics/Rect;
    .locals 0

    .line 730
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 736
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 737
    iget-object p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$2900(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    .line 739
    iget-object p4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v0, p4, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 740
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 742
    iget-object p4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p4

    if-eqz p4, :cond_2

    if-nez p2, :cond_0

    .line 744
    iget-object p4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    if-ne p2, p3, :cond_1

    .line 747
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 749
    :cond_1
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 753
    iget-object p4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    if-ne p2, p3, :cond_4

    .line 756
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 758
    :cond_4
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method
