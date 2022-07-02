.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "FreeformContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->buildSpringChainsOfAllAppIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

.field final synthetic val$iconView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->val$iconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 1002
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    .line 1003
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$500(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    move-result-object v0

    const-string v1, "fullscreen_mode_request_spring_anim_y"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    .line 1008
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    .line 1014
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1017
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1018
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$700(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1019
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    .line 1022
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1023
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$500(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    move-result-object p0

    const-string p1, "fullscreen_mode_request_spring_anim_y"

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method
