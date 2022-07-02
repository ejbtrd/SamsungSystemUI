.class Lcom/samsung/android/edgelighting/view/GlowGradientEffect$1;
.super Ljava/lang/Object;
.source "GlowGradientEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->fadeOutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/GlowGradientEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect$1;->this$0:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 110
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect$1;->this$0:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    iget-object p1, p1, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect$1;->this$0:Lcom/samsung/android/edgelighting/view/GlowGradientEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GlowGradientEffect;->mGradientView:Lcom/samsung/android/edgelighting/view/GradientEffectView;

    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GradientEffectView;->hide()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method
