.class Lcom/samsung/android/edgelighting/container/NotificationEffect$5;
.super Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;
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

    .line 998
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1003
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserverInternalInsetsInfo()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->getTouchableRegion(Ljava/lang/Object;)Landroid/graphics/Region;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AbstractProxyReflection"

    const-string/jumbo p1, "onComputeInternalInsets touchable region is null"

    .line 1008
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/edgelighting/utils/Utils;->isAODShowState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1019
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v2, v1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1021
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1022
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object v2, v1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1024
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 1027
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect$5;->this$0:Lcom/samsung/android/edgelighting/container/NotificationEffect;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1029
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserverInternalInsetsInfo()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserverInternalInsetsInfo()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->TOUCHABLE_INSETS_REGION:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->setTouchableInsets(Ljava/lang/Object;I)V

    return-void
.end method
