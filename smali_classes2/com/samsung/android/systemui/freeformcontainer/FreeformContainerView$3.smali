.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$3;
.super Ljava/lang/Object;
.source "FreeformContainerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->removeIconView(Landroid/widget/ImageView;)V
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

    .line 675
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$3;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$3;->val$iconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 686
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$3;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$3;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 687
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$3;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
