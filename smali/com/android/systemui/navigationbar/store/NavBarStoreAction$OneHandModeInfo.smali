.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
.super Ljava/lang/Object;
.source "NavBarStoreAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/store/NavBarStoreAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneHandModeInfo"
.end annotation


# instance fields
.field private offsetX:I

.field private offsetY:I

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetX:I

    .line 134
    iput p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetY:I

    .line 135
    iput p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->scale:F

    return-void
.end method

.method public synthetic constructor <init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, -0x1

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 133
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;-><init>(IIF)V

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
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetX:I

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetX:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetY:I

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetY:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->scale:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->scale:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOffsetX()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetX:I

    return p0
.end method

.method public final getOffsetY()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetY:I

    return p0
.end method

.method public final getScale()F
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->scale:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetX:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetY:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->scale:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneHandModeInfo(offsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->offsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;->scale:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
