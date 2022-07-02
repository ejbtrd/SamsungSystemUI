.class Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;
.super Ljava/lang/Object;
.source "QsTransitionAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/animator/QsTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$800(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;->showDetailAnimEnd()V

    .line 191
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$200(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailOpening(Z)V

    .line 192
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$200(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailShowing(Z)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$200(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailClosing(Z)V

    .line 195
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$200(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailShowing(Z)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
