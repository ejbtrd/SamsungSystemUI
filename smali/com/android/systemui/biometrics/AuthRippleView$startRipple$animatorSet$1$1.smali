.class public final Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AuthRippleView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthRippleView;->startRipple(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/LightRevealScrim;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthRippleView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 126
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 133
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;->$onAnimationEnd:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/biometrics/AuthRippleView;->access$setRippleInProgress$p(Lcom/android/systemui/biometrics/AuthRippleView;Z)V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 128
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/biometrics/AuthRippleView;->access$setRippleInProgress$p(Lcom/android/systemui/biometrics/AuthRippleView;Z)V

    .line 129
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
