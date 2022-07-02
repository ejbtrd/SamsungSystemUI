.class public Lcom/android/systemui/CvRune;
.super Lcom/android/systemui/Rune;
.source "CvRune.java"


# static fields
.field public static final HOTSPOT_CHECK_MHSDBG:Z

.field public static final HOTSPOT_CONFIG_OP_BRANDING:Ljava/lang/String;

.field public static final HOTSPOT_ENABLED_SPRINT_EXTENSION:Z

.field public static final HOTSPOT_IS_SIMCHECK_DISABLED:Z

.field public static final HOTSPOT_IS_SUPPORTED_FOR_QPANEL:Z

.field public static final HOTSPOT_STATUSBAR_ICON_BRANDING:Ljava/lang/String;

.field public static final HOTSPOT_USE_CHAMELEON:Z

.field public static final TETHERING_PROVISION_APP:Ljava/lang/String;

.field private static final device_first_api_level:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_ENABLED_SPRINT_EXTENSION:Z

    .line 21
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_UseChameleon"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_USE_CHAMELEON:Z

    .line 22
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_CHECK_MHSDBG:Z

    const-string/jumbo v0, "vendor.wifiap.simcheck.disable"

    .line 23
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_IS_SIMCHECK_DISABLED:Z

    .line 24
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v4, ""

    .line 25
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/CvRune;->HOTSPOT_STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_ConfigOpBrandingForMobileAp"

    const-string v5, "ALL"

    .line 27
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/CvRune;->HOTSPOT_CONFIG_OP_BRANDING:Ljava/lang/String;

    const/4 v3, -0x1

    const-string/jumbo v4, "ro.product.first_api_level"

    .line 28
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/systemui/CvRune;->device_first_api_level:I

    .line 29
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ATT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    if-lt v3, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/android/systemui/CvRune;->HOTSPOT_IS_SUPPORTED_FOR_QPANEL:Z

    .line 30
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/CvRune;->TETHERING_PROVISION_APP:Ljava/lang/String;

    return-void
.end method
