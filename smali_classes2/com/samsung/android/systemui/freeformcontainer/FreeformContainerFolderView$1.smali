.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;
.super Ljava/lang/Object;
.source "FreeformContainerFolderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 123
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 124
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$000()Z

    move-result v0

    const-string v2, "FreeformContainer"

    if-eqz v0, :cond_0

    const-string v0, "[FolderView] mOpenFolderRunnable Run()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x14d

    .line 130
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v3, :cond_7

    .line 132
    iget-object v8, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    .line 133
    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemViewHolder;

    if-nez v8, :cond_1

    goto :goto_3

    .line 137
    :cond_1
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 138
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$000()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FolderView] openAnim, itemView="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v5, :cond_3

    .line 140
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v3, -0x1

    if-ne v5, v9, :cond_4

    move v9, v1

    goto :goto_1

    :cond_4
    move v9, v4

    .line 145
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    .line 146
    invoke-static {v10}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v11}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;

    move-result-object v11

    iget v11, v11, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/2addr v10, v11

    mul-int/2addr v10, v5

    iget-object v11, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v1

    goto :goto_2

    :cond_5
    const/4 v11, -0x1

    :goto_2
    mul-int/2addr v10, v11

    .line 149
    new-instance v11, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;

    invoke-direct {v11, p0, v8, v9}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;Landroid/view/View;Z)V

    .line 150
    invoke-static {v11, v10, v0, v6, v7}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createIconMovingToFolderAnimation(Landroid/view/animation/Animation$AnimationListener;IIII)Landroid/view/animation/Animation;

    move-result-object v9

    .line 149
    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v8, v0, -0x21

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_6

    add-int/lit8 v0, v0, -0x21

    add-int/lit8 v6, v6, 0x21

    add-int/lit8 v7, v7, 0x42

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0, v4}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$802(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z

    return-void
.end method
