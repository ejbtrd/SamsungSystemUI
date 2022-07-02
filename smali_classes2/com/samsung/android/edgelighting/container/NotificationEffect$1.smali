.class Lcom/samsung/android/edgelighting/container/NotificationEffect$1;
.super Ljava/lang/Object;
.source "NotificationEffect.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;


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

    .line 175
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCopyCertificationCode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "mark_as_read"

    .line 189
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->doActionNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDismissPopup()V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->dismissToastPopup()V

    return-void
.end method

.method public onFinishAnimation()V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->finishToastPopupAnimation()V

    return-void
.end method

.method public onStartAnimation()V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->startToastPopupAnimation()V

    return-void
.end method
