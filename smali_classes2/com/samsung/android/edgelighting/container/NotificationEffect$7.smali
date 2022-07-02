.class Lcom/samsung/android/edgelighting/container/NotificationEffect$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/container/NotificationEffect;->onFlickUpAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1148
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$7;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 1151
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$7;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 1153
    invoke-interface {p0, p1, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onFling(ZZ)V

    :cond_0
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

    .line 1159
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1160
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isSupportBlurEffect()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$7;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 1161
    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->updateBlurState(Z)V

    :cond_0
    return-void
.end method
