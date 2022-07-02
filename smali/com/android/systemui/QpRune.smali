.class public Lcom/android/systemui/QpRune;
.super Lcom/android/systemui/Rune;
.source "QpRune.java"


# static fields
.field public static final NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

.field public static final NOTI_CLEAR_COVER_NOTIFICATION:Z

.field public static final NOTI_POLICY_NOTI_ALLOW_POPUP:Z

.field public static final NOTI_STATIC_SHELF_ALPHA_VI:Z

.field public static final NOTI_STYLE_EMPTY_SHADE:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION:Z

.field public static final NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

.field public static final NOTI_SUBSCREEN_PENDING_WECHAT_CALL:Z

.field public static final PANEL_CARRIERINFO_DATAUSAGE:Z

.field public static final PANEL_MULTILINE_VIEW:Z

.field public static final QUICK_BARCONTROLLER_MULTISIM:Z

.field public static final QUICK_BLUETOOTH_MUSIC_SHARE:Z

.field public static final QUICK_BRIGHTNESS_HIGH_BRIGHTNESS_DIALOG:Z

.field public static final QUICK_BRIGHTNESS_PERSONAL_CONTROL:Z

.field public static QUICK_ENHANCEMENT_PERFORMANCE_AT_USER_SWITCHING:Z

.field public static final QUICK_HIDE_INFORMATION_MIRRORING:Z

.field public static final QUICK_MANAGE_HOME_HUB_TILE_LIST:Z

.field public static final QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

.field public static final QUICK_MANAGE_TWO_PHONE:Z

.field public static final QUICK_MANAGE_TWO_PHONE_TEST:Z

.field public static QUICK_RESTRICT_DIALOG_DISMISS_AT_USER_SWITCHING:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR_HIJRI:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

.field public static final QUICK_STYLE_ALTERNATE_CALENDAR_PERSIAN:Z

.field public static final QUICK_STYLE_MEDIA_PLAYER_MEDIA_OUTPUT_POPUP:Z

.field public static QUICK_STYLE_MUM:Z

.field public static final QUICK_STYLE_MUM_TEST_TRIGGER:Z

.field public static final QUICK_STYLE_PANEL_BLUR:Z

.field public static final QUICK_STYLE_PANEL_BLUR_FOR_MASSIVE:Z

.field public static final QUICK_STYLE_TABLET:Z

.field public static final QUICK_STYLE_TABLET_BG:Z

.field public static final QUICK_STYLE_TABLET_TOP_MARGIN:Z

.field public static final QUICK_SUPPORT_CUSTOMIZER_HOME_HUB:Z

.field public static final QUICK_SUPPORT_CUSTOMIZER_IN_LANDSCAPE:Z

.field public static final QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

.field public static final QUICK_TILE_FLASHLIGHT_INTENSITY:Z

.field public static final QUICK_TILE_ROTATION_MANUAL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportPersianCalendar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_PERSIAN:Z

    .line 39
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Common_SupportHijriLunarCalendar"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_HIJRI:Z

    .line 41
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR_LUNAR_IN_VIETNAM:Z

    const/4 v4, 0x1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    .line 43
    :goto_1
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_ALTERNATE_CALENDAR:Z

    .line 74
    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_BRIGHTNESS_PERSONAL_CONTROL:Z

    .line 76
    sput-boolean v4, Lcom/android/systemui/QpRune;->QUICK_BRIGHTNESS_HIGH_BRIGHTNESS_DIALOG:Z

    .line 92
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_MUM:Z

    const-string v0, "debug.quick_mum_test_trigger"

    .line 94
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_MUM_TEST_TRIGGER:Z

    .line 96
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadable_spowerplanning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    .line 111
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    .line 117
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    .line 125
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    .line 132
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_TORCH_BRIGHTNESS_LEVEL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_FLASHLIGHT_INTENSITY:Z

    const-string v0, "debug.statbar_twophonemode_test"

    .line 148
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE_TEST:Z

    if-nez v0, :cond_4

    .line 149
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v4

    :goto_4
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    .line 165
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    .line 167
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    .line 169
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_TOP_MARGIN:Z

    .line 179
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v4

    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_MANAGE_HOME_HUB_TILE_LIST:Z

    .line 207
    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUPPORT_CUSTOMIZER_IN_LANDSCAPE:Z

    .line 209
    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUPPORT_CUSTOMIZER_HOME_HUB:Z

    .line 225
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v5, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR:Z

    if-nez v1, :cond_5

    .line 226
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v5, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_CAPTURED_BLUR"

    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR_FOR_MASSIVE:Z

    .line 230
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_BARCONTROLLER_MULTISIM:Z

    .line 256
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x1fc34

    if-lt v1, v5, :cond_6

    move v1, v4

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_MEDIA_PLAYER_MEDIA_OUTPUT_POPUP:Z

    .line 260
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_ENHANCEMENT_PERFORMANCE_AT_USER_SWITCHING:Z

    .line 262
    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_RESTRICT_DIALOG_DISMISS_AT_USER_SWITCHING:Z

    .line 293
    invoke-static {}, Lcom/android/systemui/Operator;->isCHNBranding()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/QpRune;->QUICK_HIDE_INFORMATION_MIRRORING:Z

    .line 378
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v5, "CscFeature_SystemUI_SupportDataUsageViewOnQuickPanel"

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/QpRune;->PANEL_CARRIERINFO_DATAUSAGE:Z

    .line 380
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v5, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "ZVV"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/QpRune;->PANEL_MULTILINE_VIEW:Z

    .line 454
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    xor-int/2addr v1, v4

    sput-boolean v1, Lcom/android/systemui/QpRune;->NOTI_STATIC_SHELF_ALPHA_VI:Z

    .line 508
    sput-boolean v0, Lcom/android/systemui/QpRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    .line 621
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v5, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "COVER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION:Z

    .line 625
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "WATCHFACE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz v1, :cond_7

    .line 628
    invoke-static {}, Lcom/android/systemui/Operator;->isCHNBranding()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    sput-boolean v1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_PENDING_WECHAT_CALL:Z

    .line 632
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "VIRTUAL_DISPLAY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    xor-int/2addr v0, v4

    .line 685
    sput-boolean v0, Lcom/android/systemui/QpRune;->NOTI_STYLE_EMPTY_SHADE:Z

    .line 715
    sput-boolean v2, Lcom/android/systemui/QpRune;->NOTI_POLICY_NOTI_ALLOW_POPUP:Z

    return-void
.end method

.method public static getSimpleStatsuBarDefaultValue()I
    .locals 3

    .line 463
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar"

    const-string v2, "On"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
