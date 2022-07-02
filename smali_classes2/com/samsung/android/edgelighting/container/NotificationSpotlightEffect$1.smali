.class Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect$1;
.super Ljava/lang/Object;
.source "NotificationSpotlightEffect.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimCancel()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->access$000(Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->resetScreenSize()V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->access$000(Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;

    iget v1, v1, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    add-int/lit16 v1, v1, -0xa8b

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 45
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect$1;->this$0:Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;->access$000(Lcom/samsung/android/edgelighting/container/NotificationSpotlightEffect;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
