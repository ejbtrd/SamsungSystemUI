.class public final Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;
.super Lcom/android/systemui/controls/management/model/CustomElementWrapper;
.source "CustomControlsModel.kt"


# instance fields
.field private final displayName:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private favorite:Z

.field private final needStructureName:Z

.field private final structureName:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Z)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "structureName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/model/CustomElementWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    .line 78
    iput-boolean p2, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    .line 79
    iput-object p3, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    .line 80
    iput-boolean p4, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

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
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    iget-boolean v3, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDisplayName()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getFavorite()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    return p0
.end method

.method public final getNeedStructureName()Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    return p0
.end method

.method public final getStructureName()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final setFavorite(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomStructureNameWrapper(structureName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", favorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->favorite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needStructureName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->needStructureName:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
