.class Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;
.super Ljava/lang/Object;
.source "ApplicationEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/container/ApplicationEffect;->containerAlphaAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/container/ApplicationEffect;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$to"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    iput p2, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;->val$to:F

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

    .line 92
    iget p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;->val$to:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->access$000(Lcom/samsung/android/edgelighting/container/ApplicationEffect;)Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->access$000(Lcom/samsung/android/edgelighting/container/ApplicationEffect;)Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->hide()V

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;->this$0:Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz p0, :cond_1

    .line 98
    invoke-interface {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onFinishAnimation()V

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
