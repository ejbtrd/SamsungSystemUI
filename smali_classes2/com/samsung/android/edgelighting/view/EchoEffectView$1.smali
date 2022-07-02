.class Lcom/samsung/android/edgelighting/view/EchoEffectView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EchoEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/EchoEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EchoEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EchoEffectView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EchoEffectView;

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

    .line 252
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 253
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->access$200(Lcom/samsung/android/edgelighting/view/EchoEffectView;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->access$200(Lcom/samsung/android/edgelighting/view/EchoEffectView;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;->onAnimCancel()V

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->access$102(Lcom/samsung/android/edgelighting/view/EchoEffectView;Z)Z

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

    .line 261
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

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

    .line 245
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 246
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->access$000(Lcom/samsung/android/edgelighting/view/EchoEffectView;)V

    .line 247
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/EchoEffectView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->access$102(Lcom/samsung/android/edgelighting/view/EchoEffectView;Z)Z

    return-void
.end method
