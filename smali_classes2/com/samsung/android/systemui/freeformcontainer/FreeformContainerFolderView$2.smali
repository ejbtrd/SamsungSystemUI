.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FreeformContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 210
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 213
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1102(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;I)I

    return-void
.end method
