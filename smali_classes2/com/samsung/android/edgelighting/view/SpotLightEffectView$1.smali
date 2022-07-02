.class Lcom/samsung/android/edgelighting/view/SpotLightEffectView$1;
.super Ljava/lang/Object;
.source "SpotLightEffectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->getAlphaAnim()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueAnimator"
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->access$000(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
