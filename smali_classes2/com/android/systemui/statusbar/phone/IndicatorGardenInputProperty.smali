.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;
.super Ljava/lang/Object;
.source "IndicatorGardenInputProperty.java"


# static fields
.field private static mCameraTopMargin:I


# instance fields
.field private DpCutout:Landroid/view/DisplayCutout;

.field private mBatteryHeight:I

.field private mCachedDensity:F

.field private mCachedDisplay:Landroid/view/Display;

.field private mCachedScreenWidthSize:I

.field private mCameraCutoutCropSize:I

.field private mCameraSidePadding:I

.field private mContext:Landroid/content/Context;

.field private mCoverDefaultSidePadding:I

.field private mDistanceBetweenBatteryAndDotView:I

.field private mDotViewDiameter:I

.field private mGardenConfiguration:Landroid/content/res/Configuration;

.field private mGardenPaddingStart:I

.field private mIndicatorCornerPadding:I

.field private mIndicatorGardenCenterOffset:I

.field private mRotation:I


# direct methods
.method public static synthetic $r8$lambda$qZKLIqOBH7nLykLezxUvMDU1r9A(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->lambda$getDisplayCutoutRect$0(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/DisplayCutout;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 136
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    .line 170
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DpCutout:Landroid/view/DisplayCutout;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->onGardenConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDimenResources()V

    return-void
.end method

.method public static getCameraTopMargin()I
    .locals 1

    .line 451
    sget v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraTopMargin:I

    return v0
.end method

.method private getCurrentScreenWidth()I
    .locals 2

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getGardenConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getGardenConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 151
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE_FOLDABLE_SIDELING_CUTOUT:Z

    if-eqz v1, :cond_2

    :cond_1
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 152
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEdgePinMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getGardenConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 155
    :cond_2
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentScreenWidth() "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IndicatorGardenInputProperty"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method private getDistanceBetweenBatteryAndDotView(ZI)I
    .locals 0

    if-nez p1, :cond_1

    .line 353
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPortRightCutout(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPortLeftCutoutWithRtl(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mDotViewDiameter:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mDistanceBetweenBatteryAndDotView:I

    add-int/2addr p1, p0

    goto :goto_1

    .line 353
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mDistanceBetweenBatteryAndDotView:I

    :goto_1
    return p1
.end method

.method private getDistanceBetweenBatteryAndEndscreen(I)I
    .locals 1

    .line 328
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPortRightCutout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraSidePadding:I

    return p0

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPortLeftCutoutWithRtl(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraSidePadding:I

    return p0

    .line 335
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorCornerPadding:I

    return p0
.end method

.method private getGardenConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mGardenConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method private getPrivacyChipMarginForSurface0()I
    .locals 3

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getIndicatorCornerPadding()I

    move-result v0

    const/4 v1, 0x0

    .line 318
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPortRightCutout(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPortLeftCutoutWithRtl(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method private getRoundCornerPaddingForPrivacyChip()I
    .locals 2

    .line 405
    sget v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->STATUS_LAYOUT_CORNER_ROUND_SIDE_PADDING:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplayMetricsDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPortRightCutout(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method private getRoundCornerPaddingForPrivacyDot(II)I
    .locals 1

    .line 391
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPortRightCutout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 395
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE:Z

    if-eqz v0, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPinnedEdgeRight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isPortrait(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getPinnedEdgeWidth()I

    move-result p0

    add-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method private isPinnedEdgeRight()Z
    .locals 1

    .line 380
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEdgePinMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEdgeAreaRight()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortLeftCutoutWithRtl(I)Z
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isLeftDisplayCutOut(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortRightCutout(I)Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->isRTL()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isRightDisplayCutOut(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortrait(I)Z
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getDisplayCutoutRect$0(Landroid/graphics/Rect;)Z
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateDisplay()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDisplay:Landroid/view/Display;

    return-void
.end method

.method private updateDisplayMetricsDensity()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    return-void
.end method

.method private updateGardenDefaultResources()V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplayMetricsDensity()V

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateScreenWidthSize()V

    return-void
.end method

.method private updateRotation()V
    .locals 3

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getGardenConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getGardenConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 181
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    if-eq v1, v0, :cond_1

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRotation() prv:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >> new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IndicatorGardenInputProperty"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    return-void
.end method

.method private updateScreenWidthSize()V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCurrentScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V
    .locals 1

    .line 478
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    .line 479
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    .line 480
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    .line 481
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    .line 482
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorGardenCenterOffset:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorGardenCenterOffset:I

    .line 483
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraCutoutCropSize:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraCutoutCropSize:I

    .line 484
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mGardenPaddingStart:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mGardenPaddingStart:I

    .line 485
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorCornerPadding:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorCornerPadding:I

    .line 486
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraSidePadding:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraSidePadding:I

    .line 494
    iget p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mBatteryHeight:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mBatteryHeight:I

    return-void
.end method

.method public getBatteryHeight()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mBatteryHeight:I

    return p0
.end method

.method public getCameraCutoutCropSize()I
    .locals 0

    .line 302
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraCutoutCropSize:I

    return p0
.end method

.method public getCameraSidePadding()I
    .locals 0

    .line 446
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraSidePadding:I

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCoverDefaultSidePadding()I
    .locals 0

    .line 233
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    return p0
.end method

.method public getDimenSize(I)I
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplay()V

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public getDisplayCutoutRect()Landroid/graphics/Rect;
    .locals 2

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DpCutout:Landroid/view/DisplayCutout;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty$$ExternalSyntheticLambda0;

    .line 78
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 79
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getDisplayMetricsDensity()F
    .locals 2

    .line 114
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplayMetricsDensity()V

    .line 115
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    return p0
.end method

.method public getDotViewDiameter()I
    .locals 0

    .line 343
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mDotViewDiameter:I

    return p0
.end method

.method public getDpCutout()Landroid/view/DisplayCutout;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DpCutout:Landroid/view/DisplayCutout;

    return-object p0
.end method

.method public getDumpString()Ljava/lang/String;
    .locals 3

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[IndicatorGardenInputProperty]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Rotation(0-0,90-1,180-2,270-3)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Density:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ScreenWidthSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", CoverSidePadding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mIndicatorGardenCenterOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorGardenCenterOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mCameraCutoutCropSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraCutoutCropSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mGardenPaddingStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mGardenPaddingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mIndicatorCornerPadding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorCornerPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mCameraSidePadding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraSidePadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mCameraTopMargin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraTopMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DpCutout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DpCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGardenPaddingStart()I
    .locals 0

    .line 307
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mGardenPaddingStart:I

    return p0
.end method

.method public getIndicatorCornerPadding()I
    .locals 0

    .line 312
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorCornerPadding:I

    return p0
.end method

.method public getIndicatorGardenCenterOffset()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorGardenCenterOffset:I

    return p0
.end method

.method public getPinnedEdgeWidth()I
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 360
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getPrivacyChipMargin()I
    .locals 2

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getRotation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getIndicatorCornerPadding()I

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getPrivacyChipMarginForSurface0()I

    move-result p0

    return p0

    .line 419
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->STATUS_LAYOUT_CORNER_ROUND:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getRoundCornerPaddingForPrivacyChip()I

    move-result v0

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getGardenPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getPrivacyDotMargin(ZI)I
    .locals 2

    if-nez p2, :cond_0

    .line 430
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDistanceBetweenBatteryAndEndscreen(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDistanceBetweenBatteryAndEndscreen(I)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDistanceBetweenBatteryAndDotView(ZI)I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    .line 433
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->STATUS_LAYOUT_CORNER_ROUND:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    sget v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->STATUS_LAYOUT_CORNER_ROUND_SIDE_PADDING:I

    int-to-float v0, v0

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplayMetricsDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 434
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getRoundCornerPaddingForPrivacyDot(II)I

    move-result v0

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDistanceBetweenBatteryAndDotView(ZI)I

    move-result p0

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getGardenPaddingStart()I

    move-result v0

    .line 441
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result v1

    .line 440
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDistanceBetweenBatteryAndDotView(ZI)I

    move-result p0

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateRotation()V

    .line 173
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    return p0
.end method

.method public getScreenWidthSize()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    return p0
.end method

.method public isRTL()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public onChangedCoverDefaultSidePadding(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    return-void
.end method

.method public onGardenConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mGardenConfiguration:Landroid/content/res/Configuration;

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateAllInputProperties()V

    return-void
.end method

.method public onGardenDensityOrFontScaleChanged()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateGardenDefaultResources()V

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDimenResources()V

    return-void
.end method

.method public setBatteryHeight(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mBatteryHeight:I

    return-void
.end method

.method public setDpCutout(Landroid/view/DisplayCutout;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DpCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method public updateAllInputProperties()V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplay()V

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateRotation()V

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateGardenDefaultResources()V

    return-void
.end method

.method public updateDimenResources()V
    .locals 2

    .line 274
    sget v0, Lcom/android/systemui/R$dimen;->notification_icon_view_width:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorGardenCenterOffset:I

    const v0, 0x10504ba

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraCutoutCropSize:I

    .line 276
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mGardenPaddingStart:I

    .line 278
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_privacy_indicator_batteryicon_margin:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mDistanceBetweenBatteryAndDotView:I

    .line 279
    sget v0, Lcom/android/systemui/R$dimen;->ongoing_appops_dot_diameter:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mDotViewDiameter:I

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const v1, 0x10504c3

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v1

    .line 282
    invoke-static {v0, v1}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorCornerPadding:I

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    const v1, 0x10504bb

    .line 285
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v1

    .line 284
    invoke-static {v0, v1}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraSidePadding:I

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    const v1, 0x10504bc

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result p0

    .line 286
    invoke-static {v0, p0}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result p0

    sput p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraTopMargin:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mIndicatorCornerPadding:I

    .line 290
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraSidePadding:I

    .line 291
    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCameraTopMargin:I

    :goto_0
    return-void
.end method
