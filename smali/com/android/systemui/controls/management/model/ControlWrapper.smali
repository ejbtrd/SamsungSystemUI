.class public final Lcom/android/systemui/controls/management/model/ControlWrapper;
.super Lcom/android/systemui/controls/management/model/StructureElementWrapper;
.source "StructureModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureInterface;


# instance fields
.field private final controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final displayName:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final needChunk:Z

.field private final structureName:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/management/model/AllControlsModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "structureName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/model/StructureElementWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    .line 38
    iput-boolean p4, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->needChunk:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    move-object p3, p1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 34
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;Z)V

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
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/ControlWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/management/model/ControlWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getControlsModel()Lcom/android/systemui/controls/management/model/AllControlsModel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getControlsModel()Lcom/android/systemui/controls/management/model/AllControlsModel;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getNeedChunk()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getNeedChunk()Z

    move-result p1

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getControlsModel()Lcom/android/systemui/controls/management/model/AllControlsModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    return-object p0
.end method

.method public getNeedChunk()Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->needChunk:Z

    return p0
.end method

.method public getStructureName()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getControlsModel()Lcom/android/systemui/controls/management/model/AllControlsModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getNeedChunk()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlWrapper(structureName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controlsModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getControlsModel()Lcom/android/systemui/controls/management/model/AllControlsModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needChunk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getNeedChunk()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
