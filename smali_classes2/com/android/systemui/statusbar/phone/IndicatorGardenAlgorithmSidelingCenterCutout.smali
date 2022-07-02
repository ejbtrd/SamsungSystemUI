.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;
.source "IndicatorGardenAlgorithmSidelingCenterCutout.java"


# instance fields
.field protected mCutoutLeft:I

.field protected mCutoutRight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateCenterContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    div-int/lit8 v0, v0, 0x4

    return v0

    .line 132
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateCenterContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    return p0
.end method

.method protected calculateCrookedLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result v0

    .line 80
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p1

    .line 81
    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;->isThereCutoutForIndicator()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateLeftPadding()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    if-eqz p1, :cond_1

    .line 83
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v2

    if-lez v2, :cond_1

    .line 84
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p1, v1, p1

    goto :goto_1

    :cond_1
    move p1, v1

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateRightPadding()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateLeftPadding()I

    move-result p0

    sub-int/2addr v0, p0

    const-class p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    .line 88
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->getWidthHomeIndicatorRightIconContainer()I

    move-result p0

    sub-int/2addr v0, p0

    if-lez v0, :cond_2

    .line 91
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 94
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected calculateCrookedRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result v0

    .line 111
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p1

    .line 112
    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateRightPadding()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz p1, :cond_0

    .line 114
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 115
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p1, v1, p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 118
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->mCutoutRight:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateRightPadding()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 123
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateCrookedRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    return p0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateCrookedLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    return p0
.end method

.method protected calculateLeftPadding()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isUnderDisplayCamera(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->isShowingMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    return p0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method protected calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateCrookedLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    return p0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    return p0
.end method

.method protected calculateRightPadding()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    .line 56
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isUnderDisplayCamera(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->isShowingMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    return p0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method protected initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V

    .line 32
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

    .line 33
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->mCutoutLeft:I

    .line 34
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->mCutoutRight:I

    :cond_0
    return-void
.end method
