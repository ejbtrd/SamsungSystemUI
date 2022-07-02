.class public final Lcom/android/systemui/controls/ControlStatus;
.super Ljava/lang/Object;
.source "ControlStatus.kt"

# interfaces
.implements Lcom/android/systemui/controls/ControlInterface;
.implements Lcom/android/systemui/controls/CustomControlInterface;


# instance fields
.field private final component:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final control:Landroid/service/controls/Control;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private favorite:Z

.field private final removed:Z


# direct methods
.method public constructor <init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZ)V
    .locals 1
    .param p1    # Landroid/service/controls/Control;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "control"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "component"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/controls/ControlStatus;->component:Landroid/content/ComponentName;

    .line 42
    iput-boolean p3, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    .line 43
    iput-boolean p4, p0, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 39
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/ControlStatus;-><init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZ)V

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
    instance-of v1, p1, Lcom/android/systemui/controls/ControlStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/ControlStatus;

    iget-object v1, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    iget-object v3, p1, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ControlStatus;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getFavorite()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ControlStatus;->getFavorite()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getRemoved()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ControlStatus;->getRemoved()Z

    move-result p1

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->component:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getControl()Landroid/service/controls/Control;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    return-object p0
.end method

.method public getControlId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "control.controlId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCustomColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public getCustomIconAnimationEndFrame()I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomIconAnimationEndFrame()I

    move-result p0

    return p0
.end method

.method public getCustomIconAnimationJson()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 83
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomIconAnimationJson()Ljava/lang/String;

    move-result-object p0

    const-string v0, "control.customIconAnimationJson"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCustomIconAnimationJsonCache()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomIconAnimationJsonCache()Ljava/lang/String;

    move-result-object p0

    const-string v0, "control.customIconAnimationJsonCache"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCustomIconAnimationRepeatCount()I
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomIconAnimationRepeatCount()I

    move-result p0

    return p0
.end method

.method public getCustomIconAnimationStartFrame()I
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomIconAnimationStartFrame()I

    move-result p0

    return p0
.end method

.method public getDeviceType()I
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getDeviceType()I

    move-result p0

    return p0
.end method

.method public getFavorite()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    return p0
.end method

.method public getLayoutType()I
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getLayoutType()I

    move-result p0

    return p0
.end method

.method public getRemoved()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    return p0
.end method

.method public getStructure()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "control.subtitle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "control.title"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getUseCustomIconWithoutPadding()Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getUseCustomIconWithoutPadding()Z

    move-result p0

    return p0
.end method

.method public getUseCustomIconWithoutShadowBg()Z
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getUseCustomIconWithoutShadowBg()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v0}, Landroid/service/controls/Control;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getFavorite()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getRemoved()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public setFavorite(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlStatus(control="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", favorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getFavorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", removed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getRemoved()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
