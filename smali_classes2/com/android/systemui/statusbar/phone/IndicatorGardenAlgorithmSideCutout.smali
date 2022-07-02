.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;
.source "IndicatorGardenAlgorithmSideCutout.java"


# instance fields
.field protected mLeftFirst:I

.field protected mRightSecond:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mLeftFirst:I

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mRightSecond:I

    return-void
.end method


# virtual methods
.method protected calculateSidePaddingWithCutout(II)I
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result v0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCameraSidePadding()I

    move-result p0

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 62
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result p0

    if-nez p0, :cond_1

    if-lez p2, :cond_1

    add-int/2addr v0, p2

    :cond_1
    return v0
.end method

.method protected calculateSidePaddingWithoutCutout(II)I
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result v0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getIndicatorCornerPadding()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 47
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result p0

    if-nez p0, :cond_1

    if-lez p2, :cond_1

    add-int/2addr v0, p2

    :cond_1
    return v0
.end method

.method protected initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V

    .line 35
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mLeftFirst:I

    .line 38
    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mRightSecond:I

    :cond_1
    return-void
.end method
