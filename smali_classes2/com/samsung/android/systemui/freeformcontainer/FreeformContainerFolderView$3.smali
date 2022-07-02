.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$3;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "FreeformContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->animateToReturnDraggingAppIconView()V
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

    .line 582
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$3;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    .line 592
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 593
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$3;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1502(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;Z)Z

    .line 594
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$3;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 595
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FreeformContainer"

    const-string v0, "[FolderView] onSpringAtRest of springX, releaseDraggingState"

    .line 596
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$3;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)V

    :cond_1
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 585
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 586
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    .line 587
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView$3;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->access$1400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method
