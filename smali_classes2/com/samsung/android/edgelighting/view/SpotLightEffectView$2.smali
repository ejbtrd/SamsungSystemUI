.class Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpotLightEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/SpotLightEffectView;
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

    .line 205
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

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

    .line 214
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->access$200(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->access$200(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;->onAnimCancel()V

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->access$102(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;Z)Z

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

    .line 223
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 224
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->access$300(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)V

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

    .line 208
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 209
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->access$102(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;Z)Z

    return-void
.end method
