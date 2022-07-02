.class public final Lcom/android/systemui/util/DeviceType;
.super Ljava/lang/Object;
.source "DeviceType.java"


# static fields
.field public static DEBUG_LEVEL_HIGH:I = 0x2

.field public static DEBUG_LEVEL_LOW:I = 0x0

.field public static DEBUG_LEVEL_MID:I = 0x1

.field private static debugLevel:I = -0x1

.field private static final enableSMF:Z

.field private static mIsSupport5G:Z = false

.field private static mIsSupport5GChecked:Z = false

.field private static sCachedEngOrUTBinary:I = -0x1

.field private static sRpCount:I = -0x2

.field private static final singleSKU:Z

.field private static supportCover:I = -0x1

.field private static supportDeadzone:I = -0x1

.field private static supportFBE:I = -0x1

.field private static supportInDisplayFingerprint:I = -0x1

.field private static supportLightSensor:I = -0x1

.field private static supportMultiSIM:I = -0x1

.field private static supportOpticalFingerprint:I = -0x1

.field private static supportPenDetachmentOption:Ljava/lang/Boolean; = null

.field private static supportRearFingerprint:I = -0x1

.field private static supportSideFingerprint:I = -0x1

.field private static supportSideFingerprintExclusive:I = -0x1

.field private static supportTablet:I = -0x1

.field private static supportVibrator:I = -0x1

.field private static supportWOF:I = -0x1

.field private static supportWifiOnly:I = -0x1

.field private static final unified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "mdc.sys.enable_smff"

    const/4 v1, 0x0

    .line 470
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/DeviceType;->enableSMF:Z

    const-string/jumbo v0, "mdc.singlesku"

    .line 472
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/DeviceType;->singleSKU:Z

    const-string/jumbo v0, "mdc.unified"

    .line 474
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/DeviceType;->unified:Z

    return-void
.end method

.method public static getDebugLevel()I
    .locals 3

    .line 306
    sget v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    .line 307
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "ro.debug_level"

    .line 309
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "0x494d"

    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    goto :goto_1

    :cond_2
    const-string v1, "0x4948"

    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_HIGH:I

    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    goto :goto_1

    .line 313
    :cond_3
    :goto_0
    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_LOW:I

    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    .line 320
    :cond_4
    :goto_1
    sget v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    return v0
.end method

.method public static getRpCount()I
    .locals 2

    .line 378
    sget v0, Lcom/android/systemui/util/DeviceType;->sRpCount:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    const-string/jumbo v1, "ro.boot.rp"

    .line 379
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->sRpCount:I

    .line 381
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->sRpCount:I

    return v0
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .locals 2

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportActionMemoOnLockScreen FEATURE_SPEN : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceType"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isCoverSupported()Z
    .locals 2

    .line 401
    sget v0, Lcom/android/systemui/util/DeviceType;->supportCover:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 402
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportCover:I

    .line 407
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportCover:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isDeadzoneSupported()Z
    .locals 2

    .line 180
    sget v0, Lcom/android/systemui/util/DeviceType;->supportDeadzone:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 181
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    .line 182
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deadzone_v2"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportDeadzone:I

    .line 185
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportDeadzone:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isDebuggable()Z
    .locals 2

    .line 393
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v1, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDisplaySwitchingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDualLCDDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDualLCDFolderDevice()Z
    .locals 1

    .line 360
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDualLCDDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFolderDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEngOrUTBinary()Z
    .locals 4

    .line 366
    sget v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 367
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.log.seclevel"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    .line 369
    :cond_2
    sget v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isFactoryBinary()Z
    .locals 1

    .line 389
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    return v0
.end method

.method public static isFbeSupported()Z
    .locals 2

    .line 146
    sget v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 147
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 149
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    .line 151
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isFolderDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isInDisplayFingerprintSupported()Z
    .locals 3

    .line 217
    sget v0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 219
    sput v1, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    .line 221
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isLDUSKU()Z
    .locals 5

    const-string/jumbo v0, "ril.product_code"

    const-string v1, ""

    .line 464
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ge v1, v3, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xa

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isLightSensorSupported(Landroid/content/Context;)Z
    .locals 6

    .line 104
    sget v0, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "sensor"

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    .line 106
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 107
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 110
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const v5, 0x10044

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    :goto_1
    sput v3, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    return v3

    .line 116
    :cond_2
    sput v2, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    .line 118
    :cond_3
    sget p0, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    if-ne p0, v3, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public static isMmsSupport()Z
    .locals 2

    .line 373
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isDataEnabledForApn(I)Z

    move-result v0

    return v0
.end method

.method public static isMultiSimSupported()Z
    .locals 4

    .line 80
    sget v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 81
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    .line 84
    :cond_1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isOpticalFingerprintSupported()Z
    .locals 3

    .line 226
    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 228
    sput v1, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    .line 230
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isQcomChipType()Z
    .locals 2

    const-string/jumbo v0, "ro.hardware"

    const-string v1, ""

    .line 174
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isReadable(Ljava/lang/String;)Z
    .locals 5

    .line 281
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "isReadable "

    const-string v4, "DeviceType"

    if-eqz v1, :cond_1

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " canRead: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exists: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isRearFingerprintSupported()Z
    .locals 3

    .line 190
    sget v0, Lcom/android/systemui/util/DeviceType;->supportRearFingerprint:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 192
    sput v1, Lcom/android/systemui/util/DeviceType;->supportRearFingerprint:I

    .line 194
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportRearFingerprint:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static final isSEPLiteDevice(Landroid/content/Context;)Z
    .locals 3

    .line 157
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SEP_CATEGORY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sep_lite"

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string/jumbo v1, "sep_lite_new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.feature.samsung_experience_mobile_lite"

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    return v2

    :catch_0
    const-string p0, "DeviceType"

    const-string v0, "No FloatingFeature"

    .line 167
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isShipBuild()Z
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 324
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSideFingerprintExclusiveSupported()Z
    .locals 3

    .line 208
    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprintExclusive:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 210
    sput v1, Lcom/android/systemui/util/DeviceType;->supportSideFingerprintExclusive:I

    .line 212
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprintExclusive:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isSideFingerprintSupported()Z
    .locals 3

    .line 199
    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprint:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 201
    sput v1, Lcom/android/systemui/util/DeviceType;->supportSideFingerprint:I

    .line 203
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprint:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isSupport5G()Z
    .locals 5

    const-string v0, "DeviceType"

    .line 423
    sget-boolean v1, Lcom/android/systemui/util/DeviceType;->mIsSupport5GChecked:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "ro.telephony.default_network"

    const-string v3, "0"

    .line 425
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 427
    sput-boolean v1, Lcom/android/systemui/util/DeviceType;->mIsSupport5G:Z

    .line 429
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default network mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "NumberFormatException in isSupport5GConcept"

    .line 431
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupport5GConcept : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/util/DeviceType;->mIsSupport5G:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sput-boolean v1, Lcom/android/systemui/util/DeviceType;->mIsSupport5GChecked:Z

    .line 436
    :cond_1
    sget-boolean v0, Lcom/android/systemui/util/DeviceType;->mIsSupport5G:Z

    return v0
.end method

.method public static isSupportBrightnessControl()Z
    .locals 5

    const-string v0, "DeviceType"

    const/4 v1, 0x0

    .line 443
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportBrightnessControl: context : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 446
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 447
    array-length v2, v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v2, "getBrightnessValues not matched!"

    .line 450
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    const-string v2, "Fail to get service array"

    .line 455
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isSupportPenDetachmentOption(Landroid/content/Context;)Z
    .locals 1

    .line 524
    sget-object v0, Lcom/android/systemui/util/DeviceType;->supportPenDetachmentOption:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 528
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 527
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/util/DeviceType;->supportPenDetachmentOption:Ljava/lang/Boolean;

    .line 531
    :cond_2
    sget-object p0, Lcom/android/systemui/util/DeviceType;->supportPenDetachmentOption:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSupportUnbundledBleSPen()Z
    .locals 8

    .line 497
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 504
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v3, ""

    .line 505
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 508
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const-string v5, "="

    .line 509
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 510
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 513
    :cond_1
    aget-object v5, v4, v2

    const/4 v6, 0x1

    .line 514
    aget-object v4, v4, v6

    const-string/jumbo v7, "unbundled_spec"

    .line 515
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "remote"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static isTablet()Z
    .locals 2

    .line 72
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    .line 73
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 76
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isVibratorSupported(Landroid/content/Context;)Z
    .locals 4

    .line 88
    sget v0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string/jumbo v0, "vibrator"

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    sput p0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    .line 92
    :cond_1
    sget p0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isWOFSupported()Z
    .locals 2

    const-string v0, "/sys/class/fingerprint/fingerprint/adm"

    .line 235
    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportWOF:I

    .line 239
    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWOF:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWiFiOnlyDevice(Landroid/content/Context;)Z
    .locals 4

    .line 134
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string v0, "connectivity"

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    .line 139
    :goto_0
    sput p0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    .line 142
    :cond_1
    sget p0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isWifiOnly()Z
    .locals 2

    const-string/jumbo v0, "ro.carrier"

    const-string/jumbo v1, "unknown"

    .line 416
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi-only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "readFromFile"

    .line 244
    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isReadable(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "DeviceType"

    if-nez v1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readFromFile Failed isReadable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 255
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromFile finish, time: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v4

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 262
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v6

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v2, v6

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 266
    :goto_1
    :try_start_3
    invoke-static {v3, v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 270
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 272
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3
    if-eqz v2, :cond_3

    .line 270
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 272
    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :cond_3
    :goto_4
    throw p0
.end method
