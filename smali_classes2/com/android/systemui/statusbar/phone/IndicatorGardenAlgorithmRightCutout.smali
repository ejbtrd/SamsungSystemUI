.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;
.source "IndicatorGardenAlgorithmRightCutout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateLeftPadding()I
    .locals 2

    .line 26
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mLeftFirst:I

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 26
    :goto_0
    invoke-super {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->calculateSidePaddingWithoutCutout(II)I

    move-result p0

    return p0
.end method

.method protected calculateRightPadding()I
    .locals 2

    .line 32
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mRightSecond:I

    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 32
    :goto_0
    invoke-super {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->calculateSidePaddingWithCutout(II)I

    move-result p0

    return p0
.end method
