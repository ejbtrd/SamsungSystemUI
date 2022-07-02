.class Lcom/samsung/android/edgelighting/container/NotificationEffect$3;
.super Ljava/lang/Object;
.source "NotificationEffect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/container/NotificationEffect;->setEdgeEffectInfo(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
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

    .line 784
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 787
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v0, p1, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz v0, :cond_0

    .line 788
    invoke-static {p1}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$900(Lcom/samsung/android/edgelighting/container/NotificationEffect;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;->onClickExpandButton(Ljava/lang/String;)V

    .line 790
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/NotificationEffect;->access$1000(Lcom/samsung/android/edgelighting/container/NotificationEffect;)V

    return-void
.end method
