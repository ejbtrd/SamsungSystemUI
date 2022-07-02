.class Lcom/samsung/android/edgelighting/container/NotificationEffect$4;
.super Landroid/os/Handler;
.source "NotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/container/NotificationEffect;
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

    .line 915
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 921
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 943
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->requestHideEffectView()V

    goto :goto_0

    .line 937
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 938
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz p0, :cond_4

    .line 939
    invoke-interface {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onFinishAnimation()V

    goto :goto_0

    .line 933
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->hide(J)V

    goto :goto_0

    .line 924
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p1, p1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->show(J)V

    .line 925
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, p1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    .line 926
    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$200(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EdgeLightingTouchableRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v2, v2, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v2, v2, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$4;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
