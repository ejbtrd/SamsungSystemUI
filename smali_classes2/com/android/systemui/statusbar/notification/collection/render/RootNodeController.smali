.class public final Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;
.super Ljava/lang/Object;
.source "RootNodeController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/NodeController;


# instance fields
.field private final listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nodeLabel:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->view:Landroid/view/View;

    const-string p1, "<root>"

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->nodeLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->addContainerViewAt(Landroid/view/View;I)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result p0

    return p0
.end method

.method public getNodeLabel()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->nodeLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->view:Landroid/view/View;

    return-object p0
.end method

.method public moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    return-void
.end method

.method public removeChild(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Z)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->removeContainerView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;->listContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    :cond_1
    return-void
.end method
