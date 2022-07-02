.class public final Lcom/android/systemui/util/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# static fields
.field private static final DCM_LAUNCHER:[Ljava/lang/String;

.field private static final ESIM_SLOT:I

.field private static final HW_SUPPORT_ESIM:Z

.field private static QUICKBOARD_AVAILABLE_CHECKED:Z = false

.field private static ROTATION_0:I = 0x0

.field private static ROTATION_180:I = 0x0

.field private static ROTATION_270:I = 0x0

.field private static ROTATION_90:I = 0x0

.field private static final SUPPORT_ESIM_SWITCHING:Z

.field private static currentDisplaySizeFactor:I = 0x0

.field private static deviceDensity:I = 0x0

.field private static initialDisplayDensity:I = 0x0

.field private static initialDisplaySizeFactor:I = 0x0

.field private static mQuickboardAvailable:Z = false

.field private static proportionalDensity:I = 0x0

.field private static proportionalPixel:I = 0x0

.field public static sDisplaySize:Landroid/graphics/Point; = null

.field private static sInDisplayFingerprintHeight:I = 0x0

.field private static sInDisplayFingerprintImageSize:I = 0x0

.field private static sInDisplayFingerprintMarginBottom:I = 0x0

.field private static sIsDcmLauncher:Z = false

.field private static sLoadedSensorValue:Z = false

.field private static sOldScreenHeightDp:I = 0x0

.field private static sOldScreenLayout:I = 0x0

.field private static sOldScreenWidthDp:I = 0x0

.field public static sPINContainerBottomMargin:I = 0x0

.field private static final sPhoneCount:I

.field private static sSemSensorAreaHeight:Ljava/lang/String; = "4"

.field private static sSemSensorImageSize:Ljava/lang/String; = "10.80"

.field private static sSemSensorMarginBottom:Ljava/lang/String; = "13.77"

.field private static sSizePoint:Landroid/graphics/Point;

.field private static sUseCachedIsDcmLauncher:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 84
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/systemui/util/DeviceState;->sSizePoint:Landroid/graphics/Point;

    .line 93
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceState;->sPhoneCount:I

    .line 95
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getESimSwitchingSlotIndex()I

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceState;->ESIM_SLOT:I

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/DeviceState;->HW_SUPPORT_ESIM:Z

    .line 102
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EMBEDDED_SIM_SLOTSWITCH"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tsds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/DeviceState;->SUPPORT_ESIM_SWITCHING:Z

    .line 106
    sput-boolean v1, Lcom/android/systemui/util/DeviceState;->sIsDcmLauncher:Z

    .line 108
    sput-boolean v1, Lcom/android/systemui/util/DeviceState;->sUseCachedIsDcmLauncher:Z

    const-string v0, "com.nttdocomo.android.dhome"

    const-string v2, "com.nttdocomo.android.homezozo"

    .line 110
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/DeviceState;->DCM_LAUNCHER:[Ljava/lang/String;

    .line 378
    sput v1, Lcom/android/systemui/util/DeviceState;->ROTATION_0:I

    const/4 v0, 0x1

    .line 380
    sput v0, Lcom/android/systemui/util/DeviceState;->ROTATION_90:I

    const/4 v0, 0x2

    .line 382
    sput v0, Lcom/android/systemui/util/DeviceState;->ROTATION_180:I

    const/4 v0, 0x3

    .line 384
    sput v0, Lcom/android/systemui/util/DeviceState;->ROTATION_270:I

    .line 390
    sput v1, Lcom/android/systemui/util/DeviceState;->deviceDensity:I

    .line 392
    sput v1, Lcom/android/systemui/util/DeviceState;->initialDisplaySizeFactor:I

    .line 394
    sput v1, Lcom/android/systemui/util/DeviceState;->currentDisplaySizeFactor:I

    .line 396
    sput v1, Lcom/android/systemui/util/DeviceState;->initialDisplayDensity:I

    .line 398
    sput v1, Lcom/android/systemui/util/DeviceState;->proportionalDensity:I

    .line 400
    sput v1, Lcom/android/systemui/util/DeviceState;->proportionalPixel:I

    .line 854
    sput-boolean v1, Lcom/android/systemui/util/DeviceState;->QUICKBOARD_AVAILABLE_CHECKED:Z

    return-void
.end method

.method public static getActiveSimCount(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 621
    :goto_0
    sget v2, Lcom/android/systemui/util/DeviceState;->sPhoneCount:I

    if-ge v0, v2, :cond_2

    const-string v2, "gsm.sim.state"

    const-string v3, "NOT_READY"

    .line 622
    invoke-static {v2, v0, v3}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "READY"

    .line 624
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    :cond_0
    invoke-static {p0, v0}, Lcom/android/systemui/util/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getDeviceResolutionPixelSize(Landroid/content/Context;I)I
    .locals 4

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 287
    sget v1, Lcom/android/systemui/util/DeviceState;->deviceDensity:I

    if-eq v1, v0, :cond_2

    .line 288
    sput v0, Lcom/android/systemui/util/DeviceState;->deviceDensity:I

    .line 289
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 291
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 293
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 294
    iget p0, v3, Landroid/graphics/Point;->x:I

    iget v1, v3, Landroid/graphics/Point;->y:I

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    sput p0, Lcom/android/systemui/util/DeviceState;->initialDisplaySizeFactor:I

    .line 295
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->getInitialDensity()I

    move-result p0

    sput p0, Lcom/android/systemui/util/DeviceState;->initialDisplayDensity:I

    .line 296
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 297
    iget p0, v3, Landroid/graphics/Point;->x:I

    iget v1, v3, Landroid/graphics/Point;->y:I

    if-ge p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    sput p0, Lcom/android/systemui/util/DeviceState;->currentDisplaySizeFactor:I

    .line 298
    sget v1, Lcom/android/systemui/util/DeviceState;->initialDisplaySizeFactor:I

    sget v2, Lcom/android/systemui/util/DeviceState;->initialDisplayDensity:I

    invoke-static {v1, p0, v2}, Landroid/view/DisplayCutout;->getProportionalDensity(III)I

    move-result p0

    sput p0, Lcom/android/systemui/util/DeviceState;->proportionalDensity:I

    .line 302
    :cond_2
    sget p0, Lcom/android/systemui/util/DeviceState;->proportionalDensity:I

    sget v1, Lcom/android/systemui/util/DeviceState;->initialDisplayDensity:I

    if-ne p0, v1, :cond_3

    .line 303
    sput p1, Lcom/android/systemui/util/DeviceState;->proportionalPixel:I

    goto :goto_2

    :cond_3
    mul-int/2addr p1, p0

    .line 305
    div-int/2addr p1, v1

    sput p1, Lcom/android/systemui/util/DeviceState;->proportionalPixel:I

    .line 307
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDeviceResolutionPixelSize - currentDensity = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " deviceDensity = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/systemui/util/DeviceState;->deviceDensity:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " initialDisplaySizeFactor = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/systemui/util/DeviceState;->initialDisplaySizeFactor:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentDisplaySizeFactor = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/systemui/util/DeviceState;->currentDisplaySizeFactor:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " initialDisplayDensity = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/systemui/util/DeviceState;->initialDisplayDensity:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " proportionalDensity = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/systemui/util/DeviceState;->proportionalDensity:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " proportionalPixel = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/systemui/util/DeviceState;->proportionalPixel:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceState"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget p0, Lcom/android/systemui/util/DeviceState;->proportionalPixel:I

    return p0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 6

    .line 322
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 324
    sget v2, Lcom/android/systemui/util/DeviceState;->sOldScreenHeightDp:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v0, :cond_1

    sget v2, Lcom/android/systemui/util/DeviceState;->sOldScreenLayout:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    .line 325
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/systemui/util/DeviceState;->sSizePoint:Landroid/graphics/Point;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/graphics/Point;->x:I

    .line 326
    sget-object v2, Lcom/android/systemui/util/DeviceState;->sSizePoint:Landroid/graphics/Point;

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 327
    sput v0, Lcom/android/systemui/util/DeviceState;->sOldScreenHeightDp:I

    .line 328
    sput v1, Lcom/android/systemui/util/DeviceState;->sOldScreenLayout:I

    move v0, v4

    .line 332
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v4, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_3

    .line 335
    sget-object p0, Lcom/android/systemui/util/DeviceState;->sSizePoint:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    .line 337
    :cond_3
    sget-object p0, Lcom/android/systemui/util/DeviceState;->sSizePoint:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_2
    if-eqz v0, :cond_4

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayHeight portrait? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  displayHeight= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p0
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 6

    .line 347
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 349
    sget v2, Lcom/android/systemui/util/DeviceState;->sOldScreenWidthDp:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v0, :cond_1

    sget v2, Lcom/android/systemui/util/DeviceState;->sOldScreenLayout:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    .line 350
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/systemui/util/DeviceState;->sSizePoint:Landroid/graphics/Point;

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 351
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/graphics/Point;->y:I

    .line 352
    sput v0, Lcom/android/systemui/util/DeviceState;->sOldScreenWidthDp:I

    .line 353
    sput v1, Lcom/android/systemui/util/DeviceState;->sOldScreenLayout:I

    move v0, v4

    .line 357
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v4, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_3

    .line 360
    sget-object p0, Lcom/android/systemui/util/DeviceState;->sSizePoint:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    .line 362
    :cond_3
    sget-object p0, Lcom/android/systemui/util/DeviceState;->sSizePoint:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_2
    if-eqz v0, :cond_4

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayWidth portrait? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  displayWidth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p0
.end method

.method private static getESimSwitchingSlotIndex()I
    .locals 4

    .line 636
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EMBEDDED_SIM_SLOTSWITCH"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 640
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static getFoldPINContainerHeight(Landroid/content/Context;)I
    .locals 3

    .line 486
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 487
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 489
    sget v1, Lcom/android/systemui/R$dimen;->fold_num_pad_key_size_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    sget v2, Lcom/android/systemui/R$dimen;->fold_num_pad_key_bottom_margin_ratio:I

    .line 490
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x40400000    # 3.0f

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    float-to-int p0, v1

    return p0
.end method

.method public static getInDisplayFingerprintHeight()I
    .locals 1

    .line 194
    sget v0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    return v0
.end method

.method public static getInDisplayFingerprintImageSize()I
    .locals 1

    .line 199
    sget v0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintImageSize:I

    return v0
.end method

.method public static getInDisplayFingerprintMarginBottom()I
    .locals 1

    .line 189
    sget v0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintMarginBottom:I

    return v0
.end method

.method public static getLoadedSimCount(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 602
    :goto_0
    sget v2, Lcom/android/systemui/util/DeviceState;->sPhoneCount:I

    if-ge v0, v2, :cond_1

    const-string v2, "gsm.sim.state"

    const-string v3, "NOT_READY"

    .line 603
    invoke-static {v2, v0, v3}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOADED"

    .line 605
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    invoke-static {p0, v0}, Lcom/android/systemui/util/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 651
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ","

    .line 653
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-ltz p1, :cond_0

    .line 654
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 655
    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p0

    :goto_1
    return-object p2
.end method

.method public static getMainStackSlotId()I
    .locals 4

    const-string/jumbo v0, "ril.MainStack"

    const/4 v1, 0x0

    .line 695
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1

    const-string/jumbo v0, "persist.radio.multisim.stackid"

    const-string v3, "1"

    .line 696
    invoke-static {v0, v2, v3}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method public static getNetworkOperatorNumeric(I)Ljava/lang/String;
    .locals 2

    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    .line 548
    invoke-static {v0, p0, v1}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNumberOfSim(Landroid/content/Context;)I
    .locals 0

    .line 663
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 665
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getOperatorNumeric(I)Ljava/lang/String;
    .locals 2

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    .line 553
    invoke-static {v0, p0, v1}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPINContainerBottomMargin()I
    .locals 1

    .line 500
    sget v0, Lcom/android/systemui/util/DeviceState;->sPINContainerBottomMargin:I

    return v0
.end method

.method public static getPINContainerHeight(Landroid/content/Context;)I
    .locals 3

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 478
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 480
    sget v1, Lcom/android/systemui/R$dimen;->num_pad_key_size_ratio:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    sget v2, Lcom/android/systemui/R$dimen;->num_pad_key_bottom_margin_ratio:I

    .line 481
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x40400000    # 3.0f

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    float-to-int p0, v1

    return p0
.end method

.method public static getPrimarySimSlot()I
    .locals 1

    .line 685
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static getReadySimCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 706
    :goto_0
    sget v2, Lcom/android/systemui/util/DeviceState;->sPhoneCount:I

    if-ge v0, v2, :cond_2

    const-string v2, "gsm.sim.state"

    const-string v3, "NOT_READY"

    .line 707
    invoke-static {v2, v0, v3}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "READY"

    .line 708
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getRotation(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    sget p0, Lcom/android/systemui/util/DeviceState;->ROTATION_270:I

    goto :goto_0

    .line 420
    :cond_1
    sget p0, Lcom/android/systemui/util/DeviceState;->ROTATION_180:I

    goto :goto_0

    .line 417
    :cond_2
    sget p0, Lcom/android/systemui/util/DeviceState;->ROTATION_90:I

    goto :goto_0

    .line 414
    :cond_3
    sget p0, Lcom/android/systemui/util/DeviceState;->ROTATION_0:I

    :goto_0
    return p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public static getSimSettingState(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "phone1_on"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "phone2_on"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getSimState(Landroid/content/Context;I)I
    .locals 2

    const-string/jumbo v0, "phone"

    .line 252
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 254
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    .line 255
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    const-string p0, "gsm.sim.state"

    const-string v1, "NOT_READY"

    .line 257
    invoke-static {p0, p1, v1}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PERSO_LOCKED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    :cond_0
    move p0, v0

    :cond_1
    return p0

    :cond_2
    return v0
.end method

.method public static getVoWifiEnableState(Landroid/content/Context;)I
    .locals 2

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "vowifi_menu_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static invalidateCachedIsDcmLauncher()V
    .locals 1

    const/4 v0, 0x0

    .line 794
    sput-boolean v0, Lcom/android/systemui/util/DeviceState;->sUseCachedIsDcmLauncher:Z

    return-void
.end method

.method public static isAllowedToAdjustSecurityView(Landroid/content/Context;Z)Z
    .locals 5

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 456
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_header_height_keyguard:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_lock_icon_top_margin:I

    .line 457
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/android/systemui/R$dimen;->kg_biometric_view_min_height:I

    .line 458
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 459
    sget v2, Lcom/android/systemui/R$dimen;->kg_message_area_font_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    sget v4, Lcom/android/systemui/R$dimen;->keyguard_hint_text:I

    .line 460
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 461
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v3, v2

    sget v2, Lcom/android/systemui/R$dimen;->kg_sub_help_text_font_size:I

    .line 462
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v3, v2

    sget v2, Lcom/android/systemui/R$dimen;->kg_security_input_box_height:I

    .line 463
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 464
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getFoldPINContainerHeight(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getPINContainerHeight(Landroid/content/Context;)I

    move-result p0

    :goto_0
    add-int/2addr v3, p0

    sget p0, Lcom/android/systemui/R$dimen;->kg_pin_container_margin_bottom:I

    .line 466
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v3, p0

    sget p0, Lcom/android/systemui/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    .line 467
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v3, p0

    sget p0, Lcom/android/systemui/R$dimen;->kg_pin_eca_margin_bottom:I

    .line 468
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 469
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 470
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 471
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr v1, v3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 472
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    add-int/2addr v1, p1

    if-ge p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "DeviceState"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 536
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Installed - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 538
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT Installed - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isCapturedBlurAllowed()Z
    .locals 2

    .line 138
    sget-object v0, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 140
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/samsung/android/view/SemWindowManager;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 142
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 143
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x2d0

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCenterDisplayCutOut(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "DeviceState"

    const/4 v1, 0x0

    .line 434
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 436
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 437
    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "config_mainBuiltInDisplayCutout"

    const-string v5, "config_subBuiltInDisplayCutout"

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    const-string/jumbo v2, "string"

    const-string v5, "android"

    .line 441
    invoke-virtual {p0, v4, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 443
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_3

    .line 444
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "@left"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "@right"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    move v1, v3

    goto :goto_3

    :catch_0
    move-exception p0

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not update isCenterDisplayCutOut. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_3
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCenterDisplayCutOut: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isClearSideViewCoverType(I)Z
    .locals 1

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCoverUIType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isCoverUiWithWallpaper(I)Z
    .locals 1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDataAllowed(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v0, "telephony_subscription_service"

    .line 719
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 720
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 721
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    const-string v1, "DeviceState"

    const-string v2, "Restriction in Settings Mobile Data On"

    .line 725
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    :try_start_0
    const-string v2, "isDataAllowedFromSimSlot(slotId)"

    .line 729
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static isDcmLauncher(Landroid/content/Context;)Z
    .locals 5

    .line 767
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 768
    sget-boolean v0, Lcom/android/systemui/util/DeviceState;->sUseCachedIsDcmLauncher:Z

    if-eqz v0, :cond_0

    .line 769
    sget-boolean p0, Lcom/android/systemui/util/DeviceState;->sIsDcmLauncher:Z

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 772
    sput-boolean v0, Lcom/android/systemui/util/DeviceState;->sUseCachedIsDcmLauncher:Z

    .line 773
    sput-boolean v1, Lcom/android/systemui/util/DeviceState;->sIsDcmLauncher:Z

    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 775
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 774
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 777
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 778
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 779
    sget-object v2, Lcom/android/systemui/util/DeviceState;->DCM_LAUNCHER:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 780
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 781
    sput-boolean v0, Lcom/android/systemui/util/DeviceState;->sIsDcmLauncher:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 786
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDcmLauncher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/android/systemui/util/DeviceState;->sIsDcmLauncher:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceState"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    sget-boolean p0, Lcom/android/systemui/util/DeviceState;->sIsDcmLauncher:Z

    return p0

    :cond_4
    return v1
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 1

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isESIM(I)Z
    .locals 3

    .line 580
    invoke-static {}, Lcom/android/systemui/Operator;->isSupportESim()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 581
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/util/DeviceState;->ESIM_SLOT:I

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ril.simslottype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    .line 583
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isFotaUpdate(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "FingerprintVersion"

    const-string/jumbo v1, "unknown"

    .line 505
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CSCVersion"

    .line 506
    invoke-static {p0, v3, v1}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SalesCode"

    .line 507
    invoke-static {p0, v5, v1}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ro.build.fingerprint"

    .line 509
    invoke-static {v7, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ril.official_cscver"

    .line 510
    invoke-static {v8, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ro.csc.sales_code"

    .line 511
    invoke-static {v9, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string v2, "DeviceState"

    const-string v4, "isFotaUpdate!!"

    .line 515
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {p0, v0, v7}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {p0, v3, v8}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-static {p0, v5, v1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isHomeHubMode(Landroid/content/Context;)Z
    .locals 2

    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 859
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 861
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.samsung.android.homehub"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isInDisplayFpSensorPositionHigh()Z
    .locals 2

    .line 204
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    .line 205
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 206
    sget v1, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    const v0, 0x3e6147ae    # 0.22f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMediaQuickControlBarAvailable(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "DeviceState"

    .line 830
    sget-boolean v1, Lcom/android/systemui/util/DeviceState;->QUICKBOARD_AVAILABLE_CHECKED:Z

    if-eqz v1, :cond_0

    .line 831
    sget-boolean p0, Lcom/android/systemui/util/DeviceState;->mQuickboardAvailable:Z

    return p0

    :cond_0
    const/4 v1, 0x1

    .line 835
    :try_start_0
    sput-boolean v1, Lcom/android/systemui/util/DeviceState;->QUICKBOARD_AVAILABLE_CHECKED:Z

    .line 836
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.samsung.android.mdx.quickboard"

    .line 837
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string/jumbo p0, "quickboard activity is available."

    .line 838
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    sput-boolean v1, Lcom/android/systemui/util/DeviceState;->mQuickboardAvailable:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "quickboard activity isn\'t available."

    .line 841
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 842
    sput-boolean p0, Lcom/android/systemui/util/DeviceState;->mQuickboardAvailable:Z

    .line 844
    :goto_0
    sget-boolean p0, Lcom/android/systemui/util/DeviceState;->mQuickboardAvailable:Z

    return p0
.end method

.method public static isNoSimState()Z
    .locals 8

    .line 559
    sget v0, Lcom/android/systemui/util/DeviceState;->sPhoneCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 560
    sget-boolean v2, Lcom/android/systemui/util/DeviceState;->SUPPORT_ESIM_SWITCHING:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/Operator;->isSupportESim()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/util/DeviceState;->HW_SUPPORT_ESIM:Z

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    const-string v4, "gsm.sim.state"

    const-string v5, "NOT_READY"

    .line 565
    invoke-static {v4, v3, v5}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isESIM(I)Z

    move-result v6

    const-string v7, "ABSENT"

    if-eqz v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v7

    .line 570
    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isOpenTheme(Landroid/content/Context;)Z
    .locals 0

    .line 372
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isShopDemo(Landroid/content/Context;)Z
    .locals 2

    .line 690
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shopdemo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSimCardInserted(I)Z
    .locals 2

    const-string v0, "0"

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string/jumbo p0, "ril.ICC_TYPE1"

    .line 590
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "ril.ICC_TYPE0"

    .line 592
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 594
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isSimReady()Z
    .locals 3

    .line 742
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isSimReady ? mutilSim ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " readySimCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getReadySimCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SimState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceState"

    .line 743
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getReadySimCount()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 749
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "display"

    .line 758
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 759
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSubDisplay(Landroid/content/Context;)Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 133
    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTablet()Z
    .locals 1

    .line 247
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static isTelephonyIdle(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "telecom"

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    xor-int/2addr v0, p0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTelephonyIdle() - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DeviceState"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isTesting()Z
    .locals 2

    const-string v0, "dexmaker.share_classloader"

    .line 114
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "phone"

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 162
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Softphone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static readFingerprintSensor()V
    .locals 7

    const-string/jumbo v0, "readFingerprintSensor : failed to close file"

    .line 211
    sget-boolean v1, Lcom/android/systemui/util/DeviceState;->sLoadedSensorValue:Z

    if-nez v1, :cond_3

    .line 212
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/fingerprint/fingerprint/position"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "DeviceState"

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 217
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v1, v5

    new-array v1, v1, [B

    .line 219
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0

    .line 220
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :try_start_2
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, ","

    .line 223
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 224
    aget-object v4, v1, v4

    sput-object v4, Lcom/android/systemui/util/DeviceState;->sSemSensorMarginBottom:Ljava/lang/String;

    const/4 v4, 0x3

    .line 225
    aget-object v4, v1, v4

    sput-object v4, Lcom/android/systemui/util/DeviceState;->sSemSensorAreaHeight:Ljava/lang/String;

    const/4 v4, 0x7

    .line 226
    aget-object v1, v1, v4

    sput-object v1, Lcom/android/systemui/util/DeviceState;->sSemSensorImageSize:Ljava/lang/String;

    const/4 v1, 0x1

    .line 227
    sput-boolean v1, Lcom/android/systemui/util/DeviceState;->sLoadedSensorValue:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_3

    .line 234
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v2, v4

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_1
    :try_start_4
    const-string/jumbo v4, "readFingerprintSensor : failure to read sensor info : "

    .line 230
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_3

    .line 234
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 237
    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_2
    if-eqz v2, :cond_1

    .line 234
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 237
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    :cond_1
    :goto_3
    throw v1

    :cond_2
    const-string/jumbo v0, "readFingerprintSensor : No file for sensor pos"

    .line 241
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    return-void
.end method

.method public static resetDeviceDensity()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    sput v0, Lcom/android/systemui/util/DeviceState;->deviceDensity:I

    return-void
.end method

.method public static setInDisplayFingerprintSensorPosition(Landroid/util/DisplayMetrics;)V
    .locals 4

    .line 176
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->readFingerprintSensor()V

    .line 178
    sget-object v0, Lcom/android/systemui/util/DeviceState;->sSemSensorImageSize:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x5

    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 179
    sget-object v2, Lcom/android/systemui/util/DeviceState;->sSemSensorMarginBottom:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v1, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 180
    sget-object v3, Lcom/android/systemui/util/DeviceState;->sSemSensorAreaHeight:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v1, v3, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int v1, v2

    float-to-int p0, p0

    .line 182
    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v1

    float-to-int v0, v0

    div-int/lit8 v2, v0, 0x2

    add-int/2addr p0, v2

    sput p0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 183
    sput v0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintImageSize:I

    .line 184
    sput v1, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintMarginBottom:I

    return-void
.end method

.method public static setLandscapeDefaultRotation()V
    .locals 1

    const/4 v0, 0x1

    .line 404
    sput v0, Lcom/android/systemui/util/DeviceState;->ROTATION_0:I

    const/4 v0, 0x2

    .line 405
    sput v0, Lcom/android/systemui/util/DeviceState;->ROTATION_90:I

    const/4 v0, 0x3

    .line 406
    sput v0, Lcom/android/systemui/util/DeviceState;->ROTATION_180:I

    const/4 v0, 0x0

    .line 407
    sput v0, Lcom/android/systemui/util/DeviceState;->ROTATION_270:I

    return-void
.end method

.method public static setPINContainerBottomMargin(I)V
    .locals 0

    .line 495
    sput p0, Lcom/android/systemui/util/DeviceState;->sPINContainerBottomMargin:I

    return-void
.end method

.method public static shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z
    .locals 4

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "ro.product.first_api_level"

    const/4 v2, 0x0

    .line 124
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "lockscreen.rot_override"

    .line 125
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/android/systemui/R$bool;->config_enableLockScreenRotation:I

    .line 126
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isSEPLiteDevice(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x1c

    if-lt v1, p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static shouldSupportDedicatedFingerprint()Z
    .locals 3

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 799
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
