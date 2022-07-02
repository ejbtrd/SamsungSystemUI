.class Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;
.super Ljava/lang/Object;
.source "EdgeLightingDialog.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 536
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doActionNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "value"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->doActionNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickExpandButton(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onClickExpandButton(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickToast()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onClickToastInWindow()V

    :cond_0
    return-void
.end method

.method public onExtendDuration()V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onExtendLightingDuration()V

    :cond_0
    return-void
.end method

.method public onFinishAnimation()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$200(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$200(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$200(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    .line 540
    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/container/NotificationEffect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 541
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$100(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V

    :cond_2
    return-void
.end method

.method public onFling(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isDown",
            "isActivity"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onFling(ZZ)V

    :cond_0
    return-void
.end method

.method public onLaunchPopupView(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActivity"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 556
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onFlingDownInWindow(Z)V

    :cond_0
    return-void
.end method

.method public onSwipeNotification()V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$4;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onSwipeToastInWindow()V

    :cond_0
    return-void
.end method
