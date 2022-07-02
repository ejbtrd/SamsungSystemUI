.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;
.source "IndicatorGardenAlgorithmCenterCutout.java"


# instance fields
.field protected mCutoutCropSize:I

.field protected mCutoutLeft:I

.field protected mCutoutRight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;-><init>()V

    return-void
.end method

.method private getCenterCutoutWidth()I
    .locals 2

    .line 40
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutCropSize:I

    if-lez v0, :cond_0

    .line 45
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutRight:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutLeft:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1

    .line 47
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutRight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutLeft:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCameraSidePadding()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected calculateCenterContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->getCenterCutoutWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 114
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method protected calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result p1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->getCenterCutoutWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 86
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 88
    :cond_0
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    return p1

    .line 91
    :cond_1
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method protected calculateLeftPadding()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    .line 62
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method protected calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->getCenterCutoutWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 100
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 102
    :cond_0
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    return p1

    .line 105
    :cond_1
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method protected calculateRightPadding()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    .line 77
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method protected initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V

    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCameraCutoutCropSize()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutCropSize:I

    .line 33
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutLeft:I

    .line 35
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutRight:I

    :cond_0
    return-void
.end method
