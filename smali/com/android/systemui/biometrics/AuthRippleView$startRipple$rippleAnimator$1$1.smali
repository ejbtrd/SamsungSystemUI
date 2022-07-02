.class final Lcom/android/systemui/biometrics/AuthRippleView$startRipple$rippleAnimator$1$1;
.super Ljava/lang/Object;
.source "AuthRippleView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthRippleView;->startRipple(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/LightRevealScrim;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $lightReveal:Lcom/android/systemui/statusbar/LightRevealScrim;

.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthRippleView;Lcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$rippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$rippleAnimator$1$1;->$lightReveal:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 78
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$rippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/AuthRippleView;->access$getRippleShader$p(Lcom/android/systemui/biometrics/AuthRippleView;)Lcom/android/systemui/statusbar/charging/RippleShader;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/charging/RippleShader;->setProgress(F)V

    .line 80
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$rippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/AuthRippleView;->access$getRippleShader$p(Lcom/android/systemui/biometrics/AuthRippleView;)Lcom/android/systemui/statusbar/charging/RippleShader;

    move-result-object v2

    long-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setTime(F)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$rippleAnimator$1$1;->$lightReveal:Lcom/android/systemui/statusbar/LightRevealScrim;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$rippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
