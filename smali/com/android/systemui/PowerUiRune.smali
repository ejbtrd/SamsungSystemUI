.class public Lcom/android/systemui/PowerUiRune;
.super Lcom/android/systemui/Rune;
.source "PowerUiRune.java"


# static fields
.field public static final AUDIO_DISABLE_HEADSET_CHARGING_SOUND:Z

.field public static final AUDIO_SUPPORT_SITUATION_EXTENSION:Z

.field public static final BATTERY_CHARGING_ESTIMATE_TIME:Z

.field public static final BATTERY_SWELLING_NOTICE:Z

.field public static final CHARGING_VIBRATION_SETTINGS:Z

.field public static final CHARGING_VIBRATION_SYNC:Z

.field public static final CHN_SMART_MANAGER:Z

.field public static final COVER_DISPLAY_WATCHFACE:Z

.field public static final FULL_BATTERY_CHECK:Z

.field public static final GPU_BLUR_SUPPORTED:Z

.field public static final HV_CHARGER_ENABLE_POPUP:Z

.field public static final INCOMPATIBLE_CHARGER_CHECK:Z

.field public static final IS_LDU_OR_UNPACK_BINARY:Z

.field public static final KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

.field public static final LOW_BATTTERY_SOUND_THEME:Z

.field public static final POWER_SHARING_POPUP:Z

.field public static final PROTECT_BATTERY_CUTOFF:Z

.field public static final PWRUI_SUPPORT_LED:Z

.field public static final SPECIFIC_POWER_REQUEST_BY_CHN:Z

.field public static final SPECIFIC_POWER_REQUEST_BY_JPN:Z

.field public static final SPECIFIC_POWER_REQUEST_BY_VZW:Z

.field public static final STATBAR_ICON_BRANDING:Ljava/lang/String;

.field public static final TIPS_NOTIFICATION:Z

.field public static final WINDOW_BLUR_SUPPORTED:Z

.field public static final WIRELESS_CHARGING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v2, ""

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/PowerUiRune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v4, "com.samsung.android.sm"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.sm_cn"

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->CHN_SMART_MANAGER:Z

    .line 63
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/time_to_full_now"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_CHARGING_ESTIMATE_TIME:Z

    .line 83
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_LONGLIFE_FORCE_CUTOFF"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->PROTECT_BATTERY_CUTOFF:Z

    .line 89
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/sec/led/led_pattern"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->PWRUI_SUPPORT_LED:Z

    .line 94
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    const-string v3, "VZW"

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ATT"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v5

    :goto_3
    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->FULL_BATTERY_CHECK:Z

    .line 110
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->POWER_SHARING_POPUP:Z

    .line 113
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v6, "SEC_FLOATING_FEATURE_BATTERY_DISABLE_LOW_TEMP_SLOW_CHARGED_POPUP"

    .line 114
    invoke-virtual {v1, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v5

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->INCOMPATIBLE_CHARGER_CHECK:Z

    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_VZW:Z

    const-string/jumbo v1, "ro.csc.country_code"

    .line 129
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "China"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_CHN:Z

    const-string v1, "DCM"

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "KDI"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "XJP"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v5

    :goto_5
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_JPN:Z

    .line 152
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PD_HV"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->HV_CHARGER_ENABLE_POPUP:Z

    .line 160
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_SITUATION_EXTENSION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->AUDIO_SUPPORT_SITUATION_EXTENSION:Z

    .line 163
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->WIRELESS_CHARGING:Z

    .line 170
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isLDUSKU()Z

    move-result v0

    if-nez v0, :cond_7

    .line 171
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 172
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v4

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v5

    :goto_7
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->IS_LDU_OR_UNPACK_BINARY:Z

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1d524

    if-lt v0, v1, :cond_8

    move v3, v5

    goto :goto_8

    :cond_8
    move v3, v4

    :goto_8
    sput-boolean v3, Lcom/android/systemui/PowerUiRune;->CHARGING_VIBRATION_SETTINGS:Z

    if-lt v0, v1, :cond_9

    move v1, v5

    goto :goto_9

    :cond_9
    move v1, v4

    .line 178
    :goto_9
    sput-boolean v1, Lcom/android/systemui/PowerUiRune;->LOW_BATTTERY_SOUND_THEME:Z

    const v1, 0x1d6b4

    if-lt v0, v1, :cond_a

    move v0, v5

    goto :goto_a

    :cond_a
    move v0, v4

    .line 184
    :goto_a
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->CHARGING_VIBRATION_SYNC:Z

    .line 187
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WATCHFACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_WATCHFACE:Z

    .line 191
    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->TIPS_NOTIFICATION:Z

    .line 194
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->WINDOW_BLUR_SUPPORTED:Z

    const-string/jumbo v0, "ro.surface_flinger.protected_contents"

    .line 202
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 203
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move v4, v5

    :cond_c
    sput-boolean v4, Lcom/android/systemui/PowerUiRune;->GPU_BLUR_SUPPORTED:Z

    .line 206
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_DISABLE_HEADSET_CHARGING_SOUND"

    .line 207
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/PowerUiRune;->AUDIO_DISABLE_HEADSET_CHARGING_SOUND:Z

    return-void
.end method
