.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
.super Ljava/lang/Object;
.source "IndicatorGardenModel.kt"


# instance fields
.field private cameraTopMarginSize:I

.field private dotTopMargin:I

.field private isCameraTopMargin:Z

.field private maxWidthCenterContainer:I

.field private maxWidthLeftContainer:I

.field private maxWidthRightContainer:I

.field private paddingLeft:I

.field private paddingRight:I

.field private totalHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    return-void
.end method


# virtual methods
.method public final getDotTopMargin()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->dotTopMargin:I

    return p0
.end method

.method public final getMaxWidthCenterContainer()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    return p0
.end method

.method public final getMaxWidthLeftContainer()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    return p0
.end method

.method public final getMaxWidthRightContainer()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    return p0
.end method

.method public final getPaddingLeft()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    return p0
.end method

.method public final getPaddingRight()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    return p0
.end method

.method public final getTotalHeight()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    return p0
.end method

.method public final isCameraTopMargin()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isCameraTopMargin:Z

    return p0
.end method

.method public final isEqual(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 41
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    if-eq v1, v2, :cond_1

    return v0

    .line 42
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    if-eq v1, v2, :cond_2

    return v0

    .line 43
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    if-eq v1, v2, :cond_3

    return v0

    .line 44
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    if-eq v1, v2, :cond_4

    return v0

    .line 45
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    if-eq v1, v2, :cond_5

    return v0

    .line 46
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    if-eq v1, v2, :cond_6

    return v0

    .line 47
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isCameraTopMargin:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isCameraTopMargin:Z

    if-eq v1, v2, :cond_7

    return v0

    .line 48
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMarginSize:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMarginSize:I

    if-eq v1, v2, :cond_8

    return v0

    .line 53
    :cond_8
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->dotTopMargin:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->dotTopMargin:I

    if-eq p0, p1, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public final isEqualVerticalValues(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 60
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    if-eq v1, v2, :cond_1

    return v0

    .line 61
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isCameraTopMargin:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isCameraTopMargin:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 62
    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMarginSize:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMarginSize:I

    if-eq p0, p1, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final setCameraTopMargin(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isCameraTopMargin:Z

    return-void
.end method

.method public final setCameraTopMarginSize(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMarginSize:I

    return-void
.end method

.method public final setDotTopMargin(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->dotTopMargin:I

    return-void
.end method

.method public final setMaxWidthCenterContainer(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    return-void
.end method

.method public final setMaxWidthLeftContainer(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    return-void
.end method

.method public final setMaxWidthRightContainer(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    return-void
.end method

.method public final setPaddingLeft(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    return-void
.end method

.method public final setPaddingRight(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    return-void
.end method

.method public final setTotalHeight(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(IndicatorGardenModel)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, " lp:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ", lc:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ", cc:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ", rc:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ", rp:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ", h:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isCameraTopMargin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ", ctm:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMarginSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ", ctms:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->dotTopMargin:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, ", dotTopMargin:"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "b.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
