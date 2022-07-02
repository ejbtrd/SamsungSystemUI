.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView$1;
.super Ljava/lang/Object;
.source "FreeformContainerDismissButtonView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->dismissIcon(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

.field final synthetic val$dismissingIconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;Landroid/view/View;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView$1;->val$dismissingIconView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView$1;->val$dismissingIconView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

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
