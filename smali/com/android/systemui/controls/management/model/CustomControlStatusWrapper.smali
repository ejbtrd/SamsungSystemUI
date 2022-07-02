.class public final Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;
.super Lcom/android/systemui/controls/management/model/CustomElementWrapper;
.source "CustomControlsModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/ControlInterface;
.implements Lcom/android/systemui/controls/CustomControlInterface;


# instance fields
.field private final controlStatus:Lcom/android/systemui/controls/ControlStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ControlStatus;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ControlStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/model/CustomElementWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object p1, p1, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getControlId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getControlStatus()Lcom/android/systemui/controls/ControlStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    return-object p0
.end method

.method public getCustomColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getCustomIcon()Landroid/graphics/drawable/Icon;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public getCustomIconAnimationEndFrame()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getCustomIconAnimationEndFrame()I

    move-result p0

    return p0
.end method

.method public getCustomIconAnimationJson()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getCustomIconAnimationJson()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCustomIconAnimationJsonCache()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getCustomIconAnimationJsonCache()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCustomIconAnimationRepeatCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getCustomIconAnimationRepeatCount()I

    move-result p0

    return p0
.end method

.method public getCustomIconAnimationStartFrame()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getCustomIconAnimationStartFrame()I

    move-result p0

    return p0
.end method

.method public getDeviceType()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getDeviceType()I

    move-result p0

    return p0
.end method

.method public getFavorite()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getFavorite()Z

    move-result p0

    return p0
.end method

.method public getRemoved()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getRemoved()Z

    move-result p0

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUseCustomIconWithoutPadding()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getUseCustomIconWithoutPadding()Z

    move-result p0

    return p0
.end method

.method public getUseCustomIconWithoutShadowBg()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->getUseCustomIconWithoutShadowBg()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ControlStatus;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomControlStatusWrapper(controlStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
