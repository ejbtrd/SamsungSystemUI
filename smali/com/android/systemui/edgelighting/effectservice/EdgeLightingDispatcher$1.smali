.class Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;
.super Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;
.source "EdgeLightingDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public onClickedToast()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onClickToastInWindow()V

    :cond_0
    return-void
.end method

.method public onFlingDownedToast(Z)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onFlingDownInWindow(Z)V

    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onShowEdgeWindow()V

    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onDismissEdgeWindow()V

    :cond_0
    return-void
.end method

.method public onSwipedToast()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;->onSwipeToastInWindow()V

    :cond_0
    return-void
.end method
