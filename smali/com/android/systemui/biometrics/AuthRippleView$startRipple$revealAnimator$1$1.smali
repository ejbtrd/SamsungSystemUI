.class final Lcom/android/systemui/biometrics/AuthRippleView$startRipple$revealAnimator$1$1;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$revealAnimator$1$1;->$lightReveal:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$revealAnimator$1$1;->$lightReveal:Lcom/android/systemui/statusbar/LightRevealScrim;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    :goto_0
    return-void
.end method
