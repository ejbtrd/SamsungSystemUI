.class Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
.source "EdgeLightingCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->registerCoverListener(Landroid/content/Context;Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;-><init>()V

    return-void
.end method

.method private updateCoverType(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$402(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;I)I

    .line 71
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCoverType : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$400(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingCoverManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 3

    .line 48
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$000()Z

    move-result v0

    const-string v1, "EdgeLightingCoverManager"

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverAttachStateChanged : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$300(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "onCoverAttachStateChanged : coverManager is null"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$300(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->updateCoverType(Lcom/samsung/android/sdk/cover/ScoverState;)V

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$402(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;I)I

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$502(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;Z)Z

    .line 61
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$200(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

    .line 62
    invoke-interface {v0, p1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;->onCoverAttachStateChanged(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCoverSwitchStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeLightingCoverManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$102(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;Z)Z

    .line 41
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;->this$0:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->access$200(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;

    .line 42
    invoke-interface {v0, p1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;->onCoverSwitchStateChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
