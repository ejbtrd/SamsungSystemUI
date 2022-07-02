.class public final Lcom/android/systemui/controls/management/model/MainComponentModel;
.super Lcom/android/systemui/controls/management/model/MainModel;
.source "MainControlModel.kt"


# instance fields
.field private controlsSpinnerInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selected:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showButton:Z

.field private final type:Lcom/android/systemui/controls/management/model/MainModel$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
            ">;",
            "Landroid/content/ComponentName;",
            "Z)V"
        }
    .end annotation

    const-string v0, "controlsSpinnerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/controls/management/model/MainModel;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    .line 36
    iput-boolean p3, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    .line 38
    sget-object p1, Lcom/android/systemui/controls/management/model/MainModel$Type;->COMPONENT:Lcom/android/systemui/controls/management/model/MainModel$Type;

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->type:Lcom/android/systemui/controls/management/model/MainModel$Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getControlsSpinnerInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    return-object p0
.end method

.method public final getSelected()Landroid/content/ComponentName;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getShowButton()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    return p0
.end method

.method public getType()Lcom/android/systemui/controls/management/model/MainModel$Type;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->type:Lcom/android/systemui/controls/management/model/MainModel$Type;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setControlsSpinnerInfo(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    return-void
.end method

.method public final setSelected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    return-void
.end method

.method public final setShowButton(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainComponentModel(controlsSpinnerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
