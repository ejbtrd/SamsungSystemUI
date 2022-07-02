.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;
.super Ljava/lang/Object;
.source "FreeformContainerFolderView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

.field final synthetic val$isLastItemView:Z

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$qbU8RuBVaL95tWeCnEgc04a_vKg(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;Landroid/view/View;Z)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->val$itemView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->val$isLastItemView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    iget-object v0, v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$502(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z

    .line 174
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    iget-object v0, v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$FolderViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 175
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$700(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 166
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    iget-object p1, p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->val$isLastItemView:Z

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    iget-object p1, p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$402(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z

    .line 168
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    iget-object p1, p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$500(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    iget-object p1, p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->val$itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->val$isLastItemView:Z

    if-eqz p1, :cond_0

    .line 156
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1$1;->this$1:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$402(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z

    :cond_0
    return-void
.end method
