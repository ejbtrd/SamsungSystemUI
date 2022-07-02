.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$6;
.super Ljava/lang/Object;
.source "FreeformContainerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->lambda$animateToShowPointerGroupView$6()V
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

    .line 830
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$6;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 842
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$6;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 843
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$6;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$6;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$900(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    return-void
.end method
