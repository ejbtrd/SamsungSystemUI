.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$7;
.super Ljava/lang/Object;
.source "FreeformContainerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->hidePointerView(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$7;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 896
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$7;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 897
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$7;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 887
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$7;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$7;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method
