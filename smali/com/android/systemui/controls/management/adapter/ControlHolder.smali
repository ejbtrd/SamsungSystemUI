.class final Lcom/android/systemui/controls/management/adapter/ControlHolder;
.super Lcom/android/systemui/controls/management/adapter/Holder;
.source "MainControlAdapter.kt"


# instance fields
.field private final controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final holders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/util/Map;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlViewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "holders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 517
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/Holder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 515
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 516
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->holders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/controls/management/model/MainModel;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/management/model/MainModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    instance-of v0, p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlHolder;->getControlViewHolder()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindData(Lcom/android/systemui/controls/ui/ControlWithState;Z)V

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlHolder;->getHolders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlHolder;->getControlViewHolder()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    :goto_0
    return-void
.end method

.method public final getControlViewHolder()Lcom/android/systemui/controls/ui/ControlViewHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 515
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    return-object p0
.end method

.method public final getHolders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 516
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->holders:Ljava/util/Map;

    return-object p0
.end method

.method public final updateDimStatus(Z)V
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->updateDimState(Z)V

    return-void
.end method
