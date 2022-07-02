.class public final Lcom/android/systemui/qs/QSPanelResourcePicker;
.super Ljava/lang/Object;
.source "QSPanelResourcePicker.java"


# static fields
.field private static mIsFlipDevices:Z

.field private static mIsFoldDevices:Z

.field private static mIsTablet:Z

.field private static sCutoutHeight:I

.field private static sNavBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFlipDevices:Z

    .line 22
    sput-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    .line 24
    sput v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->sCutoutHeight:I

    .line 25
    sput v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->sNavBarHeight:I

    return-void
.end method

.method public static getAvailableDisplayHeight(Landroid/content/Context;)I
    .locals 3

    .line 93
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 96
    :goto_0
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-nez v2, :cond_1

    .line 97
    sget v1, Lcom/android/systemui/qs/QSPanelResourcePicker;->sNavBarHeight:I

    sub-int/2addr v0, v1

    .line 98
    sget v1, Lcom/android/systemui/qs/QSPanelResourcePicker;->sCutoutHeight:I

    sub-int/2addr v0, v1

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->sec_style_qs_header_status_bar_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    sub-int/2addr v0, p0

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 101
    sget v1, Lcom/android/systemui/qs/QSPanelResourcePicker;->sNavBarHeight:I

    sub-int/2addr v0, v1

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method

.method public static getBlurEffectDistance(Landroid/content/Context;)I
    .locals 1

    .line 377
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getBrightnessBarHeight(Landroid/content/Context;)I
    .locals 2

    .line 204
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_bar_height_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_1

    .line 206
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_bar_height_ratio_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_bar_height_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static getBrightnessBarTopBottomMargin(Landroid/content/Context;)I
    .locals 2

    .line 216
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_top_bottom_margin_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_1

    .line 218
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_top_bottom_margin_ratio_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_top_bottom_margin_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static getBrightnessBarTopMargin(Landroid/content/Context;)I
    .locals 2

    .line 242
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_top_margin_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_top_margin_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getBrightnessSliderHeight(Landroid/content/Context;)I
    .locals 2

    .line 252
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->sec_brightness_slider_height_dex:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    .line 254
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 255
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_slider_height_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_1

    .line 256
    :cond_1
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_slider_height_ratio_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_brightness_slider_height_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static getContainerBottomMargin(Landroid/content/Context;)I
    .locals 2

    .line 424
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_container_bottom_margin_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 427
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_container_bottom_margin_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getDateButtonContainerHeight(Landroid/content/Context;)I
    .locals 2

    .line 302
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_date_button_continer_height_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_1

    .line 304
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_date_button_continer_height_ratio_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_date_button_continer_height_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static getHeaderTopMargin(Landroid/content/Context;)I
    .locals 2

    .line 390
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_header_top_margin_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getMediaDeviceBarHeight(Landroid/content/Context;)I
    .locals 2

    .line 286
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_device_bar_height_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_1

    .line 288
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_device_bar_height_ratio_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 291
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_device_bar_height_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static getMediaDevicesBarTopMargin(Landroid/content/Context;)I
    .locals 2

    .line 266
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_deivces_top_margin_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_deivces_top_margin_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getMediaPlayerBarTopMargin(Landroid/content/Context;)I
    .locals 2

    .line 276
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_player_top_margin_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_player_top_margin_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getMediaPlayerCollapsedHeight(Landroid/content/Context;)I
    .locals 1

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->sec_qs_media_player_height_collapsed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getMediaPlayerExpandHeight(Landroid/content/Context;)I
    .locals 1

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->sec_qs_media_player_height_expanded:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getMultiSimBarHeight(Landroid/content/Context;)I
    .locals 2

    .line 297
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_multi_sim_bar_height_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getNavBarHeight()I
    .locals 1

    .line 36
    sget v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->sNavBarHeight:I

    return v0
.end method

.method public static getPanelHeight(Landroid/content/Context;)I
    .locals 3

    .line 79
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 82
    :goto_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    int-to-float v0, v0

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_panel_height_ratio_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->sec_style_qs_header_status_bar_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static getPanelIconBottomMargin(Landroid/content/Context;)I
    .locals 2

    .line 373
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_clock_icon_container_bottom_margin_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getPanelWidth(Landroid/content/Context;)I
    .locals 3

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_2

    const v0, 0x3f47ae14    # 0.78f

    if-eqz v1, :cond_1

    .line 46
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    goto :goto_1

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    :goto_1
    int-to-float p0, p0

    :goto_2
    mul-float/2addr p0, v0

    :goto_3
    float-to-int p0, p0

    goto :goto_5

    .line 50
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDisplaySwitchingSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 51
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result v0

    const v2, 0x3f3c28f6    # 0.735f

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    .line 53
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    goto :goto_4

    .line 55
    :cond_3
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    .line 60
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    goto :goto_5

    .line 62
    :cond_5
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    :goto_4
    int-to-float p0, p0

    mul-float/2addr p0, v2

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    .line 67
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    goto :goto_5

    .line 69
    :cond_7
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f333333    # 0.7f

    goto :goto_2

    :goto_5
    return p0
.end method

.method public static getQSBottomMargin(Landroid/content/Context;)I
    .locals 2

    .line 228
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_bottom_margin_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_bottom_margin_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getQSUpperCabinetHeight(Landroid/content/Context;)I
    .locals 2

    .line 109
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_upper_cabinet_height_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    goto :goto_1

    .line 111
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_upper_cabinet_height_ratio_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_upper_cabinet_height_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 116
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cabinetHeight= "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "QSPanelResourcePicker"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int p0, v0

    return p0
.end method

.method public static getQsCustomizerAvailableHeight(Landroid/content/Context;)I
    .locals 3

    .line 362
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQSUpperCabinetHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getDateButtonContainerHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->sec_style_qs_header_status_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    sget-boolean v1, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 365
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getHeaderTopMargin(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 367
    :cond_0
    sget p0, Lcom/android/systemui/qs/QSPanelResourcePicker;->sCutoutHeight:I

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public static getQsFooterViewHeight(Landroid/content/Context;)I
    .locals 2

    .line 350
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_qs_footer_height_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_1

    .line 352
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_qs_footer_height_ratio_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 355
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_qs_footer_height_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static getQsStatusBarHeight(Landroid/content/Context;)I
    .locals 2

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_style_qs_header_status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 396
    sget-boolean v1, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 397
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getHeaderTopMargin(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public static getQsTileColumn(Landroid/content/Context;)I
    .locals 2

    .line 149
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$integer;->sec_quick_settings_num_columns_power_saving:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 151
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_2

    .line 152
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_settings_num_columns_fold_sub:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_settings_num_columns_fold:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 157
    :cond_2
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_settings_num_columns_tablet:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_settings_num_columns:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getQsTileMinNum(Landroid/content/Context;)I
    .locals 1

    .line 183
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->quick_qs_tile_min_num_tablet:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->quick_qs_tile_min_num:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getQsTileRow(Landroid/content/Context;)I
    .locals 1

    .line 167
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    .line 168
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_settings_max_rows_fold_sub:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_settings_max_rows_fold:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 173
    :cond_1
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_settings_max_rows_tablet:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_settings_max_rows:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getQuickQsTileNum(Landroid/content/Context;)I
    .locals 1

    .line 123
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_qs_panel_max_columns_fold_sub:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_qs_panel_max_columns_fold:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 129
    :cond_1
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_qs_panel_max_columns_tablet:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->sec_quick_qs_panel_max_columns:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getScrimNotiScrimAlpha()F
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public static getScrimPanelBehindAlpha()F
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public static getTileIconSize(Landroid/content/Context;)I
    .locals 1

    .line 194
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->sec_style_qs_tile_icon_size_tablet:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->sec_style_qs_tile_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getTileLayoutHeight(Landroid/content/Context;)I
    .locals 2

    .line 314
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_layout_height_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_1

    .line 316
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_layout_height_ratio_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 319
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_layout_height_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static getTileLayoutHeightHasMDE(Landroid/content/Context;)I
    .locals 2

    .line 326
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_layout_height_ratio_has_mde_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_1

    .line 328
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_layout_height_ratio_has_mde_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 331
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_layout_height_ratio_has_mde:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static getTileLayoutTopMargin(Landroid/content/Context;)I
    .locals 2

    .line 338
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_page_top_bottom_margin_ratio_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_0
    mul-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_1

    .line 340
    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/QSPanelResourcePicker;->mIsFoldDevices:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_page_top_bottom_margin_ratio_fold:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    .line 343
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getAvailableDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_page_top_bottom_margin_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static setCutouHeight(I)V
    .locals 0

    .line 28
    sput p0, Lcom/android/systemui/qs/QSPanelResourcePicker;->sCutoutHeight:I

    return-void
.end method

.method public static setNavBarHeight(I)V
    .locals 0

    .line 32
    sput p0, Lcom/android/systemui/qs/QSPanelResourcePicker;->sNavBarHeight:I

    return-void
.end method
