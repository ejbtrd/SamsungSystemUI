.class Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$2;
.super Ljava/lang/Object;
.source "GradientMultiLineEffectView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->startRotation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

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
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->access$000(Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

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
