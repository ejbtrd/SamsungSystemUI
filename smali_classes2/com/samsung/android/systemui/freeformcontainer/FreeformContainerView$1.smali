.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FreeformContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->animateBackgroundDim(Z)V
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

    .line 407
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 410
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 411
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
