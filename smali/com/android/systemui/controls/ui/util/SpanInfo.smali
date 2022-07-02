.class public final Lcom/android/systemui/controls/ui/util/SpanInfo;
.super Ljava/lang/Object;
.source "SpanManager.kt"


# instance fields
.field private numberPerLine:I

.field private span:I

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    iput p2, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    const/4 p1, 0x1

    .line 45
    iput p1, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/util/SpanInfo;-><init>(II)V

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
    instance-of v1, p1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    iget v1, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    iget v3, p1, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    iget p1, p1, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getNumberPerLine()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    return p0
.end method

.method public final getSpan()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setNumberPerLine(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    return-void
.end method

.method public final setSpan(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanInfo(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberPerLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
