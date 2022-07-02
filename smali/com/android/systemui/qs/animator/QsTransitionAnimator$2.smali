.class Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;
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

    .line 155
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

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

    .line 160
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$100(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isDetailVisible()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$200(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setDetailClosing(Z)V

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$200(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setTriggeredExpand(Z)V

    .line 163
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$300(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    .line 164
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$400(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$100(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isCustomizerVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$200(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;->setCustomizerClosing(Z)V

    .line 168
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$500(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$400(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$400(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->isSettingsPanelExpanding()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$400(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->setExpandSettingsPanel(Z)V

    .line 172
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$600(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->setExpandSettingsPanel(Z)V

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$700(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 175
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-static {p0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->access$700(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    :cond_3
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
