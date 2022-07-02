.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;
.super Ljava/lang/Object;
.source "IndicatorGardenAlgorithmBase.java"


# static fields
.field public static final STATUS_LAYOUT_CORNER_ROUND:F

.field public static final STATUS_LAYOUT_CORNER_ROUND_SIDE_PADDING:I


# instance fields
.field private mDebugCalledCount:I

.field public mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 174
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    const-string v2, "0.0"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->STATUS_LAYOUT_CORNER_ROUND:F

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v1, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 175
    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->STATUS_LAYOUT_CORNER_ROUND_SIDE_PADDING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mDebugCalledCount:I

    return-void
.end method


# virtual methods
.method protected calculateCameraTopMargin()I
    .locals 0

    .line 143
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCameraTopMargin()I

    move-result p0

    return p0
.end method

.method protected abstract calculateCameraTopPadding()Z
.end method

.method protected calculateCenterContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result p1

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result p0

    add-int/2addr v0, p0

    sub-int/2addr p1, v0

    int-to-float p0, p1

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    const/4 p1, 0x0

    .line 80
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected calculateDistanceBetweenBottomAndBattery(I)I
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateCameraTopMargin()I

    move-result v0

    sub-int/2addr p1, v0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getBatteryHeight()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method protected calculateDotTopMargin()I
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateTotalHeight()I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDotViewDiameter()I

    move-result v1

    sub-int v1, v0, v1

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateDistanceBetweenBottomAndBattery(I)I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method protected calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result v0

    .line 91
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0

    .line 97
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 99
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialRightWidth()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getIndicatorGardenCenterOffset()I

    move-result p0

    sub-int/2addr v0, p0

    .line 104
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialLeftWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected abstract calculateLeftPadding()I
.end method

.method protected calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result v0

    .line 113
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialLeftWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getIndicatorGardenCenterOffset()I

    move-result p0

    sub-int/2addr v0, p0

    .line 123
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialRightWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected abstract calculateRightPadding()I
.end method

.method protected calculateTotalHeight()I
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    const v0, 0x10504bf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result p0

    return p0
.end method

.method protected getDefaultSidePaddingSize()I
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-nez v0, :cond_0

    const/16 p0, 0x18

    return p0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getIndicatorCornerPadding()I

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getIndicatorCornerPadding()I

    move-result p0

    return p0

    .line 182
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->STATUS_LAYOUT_CORNER_ROUND:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    sget v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->STATUS_LAYOUT_CORNER_ROUND_SIDE_PADDING:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplayMetricsDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getGardenPaddingStart()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V
    .locals 3

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;-><init>(Landroid/content/Context;Landroid/view/DisplayCutout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    .line 67
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->copyFrom(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V

    return-void
.end method

.method protected is0Rotation()Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getRotation()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V

    .line 43
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->verifyCutoutAndResourceHeight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setPaddingLeft(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->verifyCutoutAndResourceHeight()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result v1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setPaddingRight(I)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateCenterContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setMaxWidthCenterContainer(I)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setMaxWidthLeftContainer(I)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setMaxWidthRightContainer(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateTotalHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setTotalHeight(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateCameraTopPadding()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setCameraTopMargin(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateCameraTopMargin()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setCameraTopMarginSize(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateDotTopMargin()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setDotTopMargin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 40
    monitor-exit p0

    return-object p1
.end method

.method protected abstract verifyCutoutAndResourceHeight()Z
.end method
