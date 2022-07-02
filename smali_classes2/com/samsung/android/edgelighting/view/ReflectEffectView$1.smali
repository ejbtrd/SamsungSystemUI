.class Lcom/samsung/android/edgelighting/view/ReflectEffectView$1;
.super Ljava/lang/Object;
.source "ReflectEffectView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/ReflectEffectView;->stopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/ReflectEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/ReflectEffectView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    iget-object p1, p1, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/ReflectEffectView;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

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
