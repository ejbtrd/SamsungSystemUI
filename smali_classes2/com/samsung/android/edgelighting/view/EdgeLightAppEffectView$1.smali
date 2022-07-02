.class Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView$1;
.super Ljava/lang/Object;
.source "EdgeLightAppEffectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->setRepeatColorAnimation(IIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueAnimator"
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 275
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->setMainColor(I)V

    return-void
.end method
