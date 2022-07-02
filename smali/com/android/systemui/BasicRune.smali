.class public Lcom/android/systemui/BasicRune;
.super Lcom/android/systemui/Rune;
.source "BasicRune.java"


# static fields
.field public static final ASSIST_ASSISTANCE_APP_SETTING_POPUP:Z

.field public static final ASSIST_ASSISTANCE_ASSIST_ROUND_DISCLOSURE:Z

.field public static final ASSIST_CONFIG_ROUND_DISCLOSURE:F

.field public static final ASSIST_INVOCATION_SWITCH:Z

.field public static final ASSIST_STATUS_LAYOUT_CORNER_ROUND:F

.field public static final BASIC_FOLDERBLE_TYPE_FLIP:Z

.field public static final BASIC_FOLDERBLE_TYPE_FOLD:Z

.field public static final CONTROLS_ALLOW_BASIC_ACTION_WHEN_LOCKED:Z

.field public static final CONTROLS_AOSP_BUGFIX:Z

.field public static final CONTROLS_AUI:Z

.field public static final CONTROLS_AUTO_ADD:Z

.field public static final CONTROLS_AUTO_REMOVE:Z

.field public static final CONTROLS_BADGE:Z

.field public static final CONTROLS_BLOCK_START_BEFORE_SECURE_BOOT_UNLOCK:Z

.field public static final CONTROLS_BLUR:Z

.field public static final CONTROLS_CAPTURED_BLUR:Z

.field public static final CONTROLS_CARD_REORDER_DIM:Z

.field public static final CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

.field public static final CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS:Z

.field public static final CONTROLS_CUSTOM_SERVICES_INFO_ORDERING:Z

.field public static final CONTROLS_CUSTOM_STATUS:Z

.field public static final CONTROLS_DEX_SUPPORT:Z

.field public static final CONTROLS_DYNAMIC_ORDERING:Z

.field public static final CONTROLS_LAYOUT_TYPE:Z

.field public static final CONTROLS_LOADING_DEVICES:Z

.field public static final CONTROLS_LOTTIE_ICON_ANIMATION:Z

.field public static final CONTROLS_PROVIDER_INFO:Z

.field public static final CONTROLS_SAMSUNG_ANALYTICS:Z

.field public static final CONTROLS_SAMSUNG_STYLE:Z

.field public static final CONTROLS_SAMSUNG_STYLE_FOLD:Z

.field public static final CONTROLS_SAMSUNG_STYLE_TABLET:Z

.field public static final CONTROLS_SMALL_TYPE_NEW_STRUCTURE_ORDER_FIRST:Z

.field public static final CONTROLS_SMARTTHINGS_UNBIND:Z

.field public static final CONTROLS_STRUCTURE_ORDERING:Z

.field public static final CONTROLS_UNRESTRICTED_SUGGESTION:Z

.field public static final CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

.field public static final CONTROLS_USE_CUSTOM_ICON_WITHOUT_SHADOW_BG:Z

.field public static final CONTROLS_USE_FULL_SCREEN_DETAIL_DIALOG:Z

.field public static final ENHANCEMENT_DUMP_HELPER:Z

.field public static final ENHANCEMENT_HEAP_DUMP_HELPER:Z

.field public static final FOLDABLE_TYPE_FLIP:Z

.field public static final GLOBALACTIONS_BLUR:Z

.field public static final GLOBALACTIONS_CAPTURED_BLUR:Z

.field public static final KEYBOARD_SUPPORT_EMOJI_SHORTCUT:Z

.field public static final NAVBAR_AOSP_BUG_FIX:Z

.field public static final NAVBAR_BOTTOM_GESTURE_SENSITIVITY:Z

.field public static final NAVBAR_DC_MOTOR_HAPTIC_FEEDBACK:Z

.field public static final NAVBAR_DESKTOP:Z

.field public static final NAVBAR_DISABLE_TOUCH:Z

.field public static final NAVBAR_ENABLED:Z

.field private static final NAVBAR_FLOATING_FEATURES:Ljava/lang/String;

.field public static final NAVBAR_FOLDERBLE_TYPE_FOLD:Z

.field public static final NAVBAR_GESTURE:Z

.field public static final NAVBAR_ICON_MOVEMENT:Z

.field public static final NAVBAR_KNOX_MONITOR:Z

.field public static final NAVBAR_LIGHTBAR:Z

.field public static final NAVBAR_MOVABLE_POSITION:Z

.field public static final NAVBAR_OPEN_THEME:Z

.field public static final NAVBAR_PERFORMANCE_TUNING:Z

.field public static final NAVBAR_REMOTEVIEW:Z

.field public static final NAVBAR_SETUPWIZARD:Z

.field public static final NAVBAR_STABLE_LAYOUT:Z

.field public static final NAVBAR_SUPPORT_PINNED_EDGE:Z

.field public static final NAVBAR_SUPPORT_SUBSCREEN:Z

.field public static final NAVBAR_TRANSLUCENT:Z

.field public static final POPUPUI_FOLDERBLE_TYPE_FOLD:Z

.field public static final POPUPUI_MOBILE_DEVICE_WARNING:Z

.field public static final POPUPUI_MODEL_TYPE_WINNER:Z

.field public static final POPUPUI_SD_CARD_STORAGE:Z

.field public static final POPUPUI_SECURITY_SUB_DISPLAY_LOCK:Z

.field public static final POPUPUI_SIM_CARD_SLOT:Ljava/lang/String;

.field public static final POPUPUI_SIM_CARD_TRAY_ON_RIGHT_WATER_PROTECTION_POPUP:Z

.field private static final SEP_VER:I

.field public static final STATUS_CARRIERINFO_NO_SIM_INFO:Z

.field public static final STATUS_LAYOUT_PINNED_EDGE:Z

.field public static final STATUS_LAYOUT_PINNED_EDGE_FOLDABLE_SIDELING_CUTOUT:Z

.field public static final STATUS_LAYOUT_SHOW_DATE:Z

.field public static final STATUS_LAYOUT_SIDELING_CUTOUT:Z

.field public static final STATUS_LAYOUT_SPECIAL_ALGORITHM:Ljava/lang/String;

.field public static final STATUS_LAYOUT_SUPPORT_INDICATOR_PADDING_FOLDABLE:Z

.field public static final STATUS_LAYOUT_TEST_JAM_TRIGGER:Z

.field public static STATUS_MUM_LOCKSCREEN_BUTTON:Z

.field public static final STATUS_NETWORK_DATA_5G_DSDS:Z

.field public static final STATUS_NETWORK_MULTI_SIM:Z

.field public static final STATUS_NETWORK_SUBSCREEN_SIGNAL_INFO:Z

.field public static final STATUS_NETWORK_WIFI_DISPLAY_AP_NAME_AS_PLMN:Z

.field public static final STATUS_NETWORK_WIFI_FLASHING:Z

.field public static final STATUS_REAL_TIME_NETWORK_SPEED:Z

.field public static final SUPPORT_SOUND_THEME:Z

.field public static final VOLUME_CAPTURED_BLUR:Z

.field public static final VOLUME_HOME_IOT:Z

.field public static final VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

.field public static final VOLUME_MONITOR_PHASE_3:Z

.field public static final VOLUME_PARTIAL_BLUR:Z

.field public static final VOLUME_QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

.field public static final VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

.field public static final VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 35
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FOLD:Z

    .line 37
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FLIP:Z

    .line 45
    invoke-static {}, Lcom/android/systemui/Operator;->needMobileDeviceWaringPopup()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/BasicRune;->POPUPUI_MOBILE_DEVICE_WARNING:Z

    const-string/jumbo v3, "ro.storage.support.sdcard"

    const-string v4, "1"

    .line 47
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "LOCKSCREEN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/BasicRune;->POPUPUI_SECURITY_SUB_DISPLAY_LOCK:Z

    const-string/jumbo v3, "ro.product.name"

    const-string v5, ""

    .line 52
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "poseidon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/BasicRune;->POPUPUI_SIM_CARD_TRAY_ON_RIGHT_WATER_PROTECTION_POPUP:Z

    .line 56
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_POPUPUI_SIM_CARD_SLOT"

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/systemui/BasicRune;->POPUPUI_SIM_CARD_SLOT:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    .line 62
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "winner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_1

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "zodiac"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v7

    :goto_1
    sput-boolean v3, Lcom/android/systemui/BasicRune;->POPUPUI_MODEL_TYPE_WINNER:Z

    .line 87
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v6, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    .line 89
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v9, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_CAPTURED_BLUR"

    invoke-virtual {v3, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    .line 96
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "WATCHFACE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "COVER"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v7

    :goto_3
    sput-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    const-string/jumbo v3, "sep_basic"

    .line 102
    invoke-static {v3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v10, 0x1d524

    if-lt v3, v10, :cond_4

    move v3, v7

    goto :goto_4

    :cond_4
    move v3, v8

    :goto_4
    sput-boolean v3, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    .line 106
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v10, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_VOLUME_PANEL_POSITION"

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "left"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    .line 109
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->FOLDABLE_TYPE_FLIP:Z

    const-string v2, "iot"

    const-string v3, "phone"

    .line 112
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    .line 114
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_VOLUMEMONITOR_STAGE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    move v2, v7

    goto :goto_5

    :cond_5
    move v2, v8

    :goto_5
    sput-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_MONITOR_PHASE_3:Z

    .line 116
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadable_spowerplanning"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    .line 121
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/BasicRune;->NAVBAR_FLOATING_FEATURES:Ljava/lang/String;

    .line 123
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v7

    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_6

    const-string v10, "SupportLightNavigationBar"

    .line 125
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v7

    goto :goto_6

    :cond_6
    move v10, v8

    :goto_6
    sput-boolean v10, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    .line 127
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_SETUPWIZARD:Z

    .line 129
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_STABLE_LAYOUT:Z

    if-eqz v3, :cond_7

    const-string v10, "SupportNaviBarRemoteView"

    .line 131
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v7

    goto :goto_7

    :cond_7
    move v10, v8

    :goto_7
    sput-boolean v10, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 133
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 135
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_PERFORMANCE_TUNING:Z

    .line 137
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    .line 139
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ICON_MOVEMENT:Z

    .line 141
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/systemui/BasicRune;->NAVBAR_FOLDERBLE_TYPE_FOLD:Z

    if-eqz v3, :cond_9

    const-string v10, "SupportMovablePosition"

    .line 144
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "ro.build.characteristics"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "tablet"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move v2, v7

    goto :goto_8

    :cond_9
    move v2, v8

    :goto_8
    sput-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_MOVABLE_POSITION:Z

    .line 146
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_OPEN_THEME:Z

    if-eqz v3, :cond_a

    .line 148
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v10, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DC_MOTOR_HAPTIC_FEEDBACK"

    invoke-virtual {v2, v10, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v7

    goto :goto_9

    :cond_a
    move v2, v8

    :goto_9
    sput-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_DC_MOTOR_HAPTIC_FEEDBACK:Z

    .line 150
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_KNOX_MONITOR:Z

    .line 152
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_DESKTOP:Z

    .line 154
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_TRANSLUCENT:Z

    .line 156
    sput-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_BOTTOM_GESTURE_SENSITIVITY:Z

    if-eqz v3, :cond_b

    .line 158
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v10, "SEC_FLOATING_FEATURE_SIP_SUPPORT_DIRECT_WRITING_ENABLE"

    invoke-virtual {v2, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v7

    goto :goto_a

    :cond_b
    move v2, v8

    :goto_a
    sput-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_DISABLE_TOUCH:Z

    .line 160
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v8

    goto :goto_b

    :cond_c
    move v2, v7

    :goto_b
    sput-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_PINNED_EDGE:Z

    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    move v0, v7

    goto :goto_c

    :cond_d
    move v0, v8

    .line 162
    :goto_c
    sput-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SUBSCREEN:Z

    .line 181
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_BLUR:Z

    if-nez v0, :cond_e

    .line 182
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v7

    goto :goto_d

    :cond_e
    move v0, v8

    :goto_d
    sput-boolean v0, Lcom/android/systemui/BasicRune;->GLOBALACTIONS_CAPTURED_BLUR:Z

    const-string/jumbo v0, "ro.build.version.sep"

    .line 195
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/BasicRune;->SEP_VER:I

    const v2, 0x1d4c0

    if-le v0, v2, :cond_f

    move v0, v7

    goto :goto_e

    :cond_f
    move v0, v8

    .line 197
    :goto_e
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    .line 198
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOTTIE_ICON_ANIMATION:Z

    .line 199
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_PROVIDER_INFO:Z

    .line 200
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    .line 201
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS:Z

    if-eqz v0, :cond_10

    .line 202
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v7

    goto :goto_f

    :cond_10
    move v2, v8

    :goto_f
    sput-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_BLUR:Z

    if-eqz v0, :cond_11

    if-nez v2, :cond_11

    .line 203
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v7

    goto :goto_10

    :cond_11
    move v2, v8

    :goto_10
    sput-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_CAPTURED_BLUR:Z

    .line 204
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AOSP_BUGFIX:Z

    .line 205
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_USE_FULL_SCREEN_DETAIL_DIALOG:Z

    .line 206
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_ALLOW_BASIC_ACTION_WHEN_LOCKED:Z

    .line 207
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_DEX_SUPPORT:Z

    .line 208
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_STATUS:Z

    .line 209
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_ADD:Z

    .line 210
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_REMOVE:Z

    .line 211
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_UNRESTRICTED_SUGGESTION:Z

    .line 212
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_SHADOW_BG:Z

    .line 213
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

    .line 214
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_SERVICES_INFO_ORDERING:Z

    .line 215
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz v0, :cond_12

    .line 216
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_12

    move v2, v7

    goto :goto_11

    :cond_12
    move v2, v8

    :goto_11
    sput-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_TABLET:Z

    if-eqz v0, :cond_13

    .line 217
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v7

    goto :goto_12

    :cond_13
    move v1, v8

    :goto_12
    sput-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    .line 218
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SMARTTHINGS_UNBIND:Z

    .line 219
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_DYNAMIC_ORDERING:Z

    .line 220
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LAYOUT_TYPE:Z

    .line 221
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    .line 222
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SMALL_TYPE_NEW_STRUCTURE_ORDER_FIRST:Z

    .line 223
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CARD_REORDER_DIM:Z

    .line 225
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOADING_DEVICES:Z

    if-eqz v0, :cond_14

    .line 226
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFbeSupported()Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v7

    goto :goto_13

    :cond_14
    move v1, v8

    :goto_13
    sput-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_BLOCK_START_BEFORE_SECURE_BOOT_UNLOCK:Z

    .line 227
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    .line 228
    sput-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 239
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_14

    :cond_15
    move v0, v8

    goto :goto_15

    :cond_16
    :goto_14
    move v0, v7

    :goto_15
    sput-boolean v0, Lcom/android/systemui/BasicRune;->ENHANCEMENT_DUMP_HELPER:Z

    .line 241
    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->ENHANCEMENT_HEAP_DUMP_HELPER:Z

    .line 254
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_SupportAssistanceAppChooser"

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/BasicRune;->ASSIST_ASSISTANCE_APP_SETTING_POPUP:Z

    .line 260
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    const-string v2, "0.0"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/systemui/BasicRune;->ASSIST_STATUS_LAYOUT_CORNER_ROUND:F

    const/high16 v1, 0x40600000    # 3.5f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_17

    const/high16 v1, 0x40a00000    # 5.0f

    goto :goto_16

    :cond_17
    move v1, v0

    .line 262
    :goto_16
    sput v1, Lcom/android/systemui/BasicRune;->ASSIST_CONFIG_ROUND_DISCLOSURE:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    move v0, v7

    goto :goto_17

    :cond_18
    move v0, v8

    .line 264
    :goto_17
    sput-boolean v0, Lcom/android/systemui/BasicRune;->ASSIST_ASSISTANCE_ASSIST_ROUND_DISCLOSURE:Z

    .line 268
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FOLD:Z

    sput-boolean v0, Lcom/android/systemui/BasicRune;->ASSIST_INVOCATION_SWITCH:Z

    .line 274
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SIP_SUPPORT_EMOJI_SHORTCUT"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/BasicRune;->KEYBOARD_SUPPORT_EMOJI_SHORTCUT:Z

    .line 297
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWifiOnly()Z

    move-result v1

    xor-int/2addr v1, v7

    sput-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_CARRIERINFO_NO_SIM_INFO:Z

    .line 309
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_19

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    if-eqz v1, :cond_19

    .line 310
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v7

    goto :goto_18

    :cond_19
    move v1, v8

    :goto_18
    sput-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_MUM_LOCKSCREEN_BUTTON:Z

    .line 322
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    sput-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_DATA_5G_DSDS:Z

    .line 325
    sput-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    .line 352
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SUBSCREEN_SIGNAL_INFO:Z

    .line 367
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWifiOnly()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME_AS_PLMN:Z

    .line 372
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWifiOnly()Z

    move-result v1

    xor-int/2addr v1, v7

    sput-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_FLASHING:Z

    .line 402
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1a

    move v1, v8

    goto :goto_19

    :cond_1a
    move v1, v7

    :goto_19
    sput-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE:Z

    const-string v1, "debug.statbar_jam_trigger"

    .line 410
    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_TEST_JAM_TRIGGER:Z

    .line 412
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_STATUSBAR_CONTAINER_POSITION"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SPECIAL_ALGORITHM:Ljava/lang/String;

    const-string v3, "SidelingCenterCutout"

    .line 416
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 420
    sput-boolean v8, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE_FOLDABLE_SIDELING_CUTOUT:Z

    .line 422
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_DATE:Z

    if-nez v0, :cond_1c

    .line 424
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FLIP:Z

    if-eqz v0, :cond_1b

    goto :goto_1a

    :cond_1b
    move v0, v8

    goto :goto_1b

    :cond_1c
    :goto_1a
    move v0, v7

    :goto_1b
    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SUPPORT_INDICATOR_PADDING_FOLDABLE:Z

    if-nez v1, :cond_1e

    .line 429
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportRealTimeNetworkSpeed"

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1c

    :cond_1d
    move v7, v8

    :cond_1e
    :goto_1c
    sput-boolean v7, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    return-void
.end method

.method public static isLDUSKU()Z
    .locals 5

    const-string/jumbo v0, "ril.product_code"

    const-string v1, ""

    .line 186
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ge v1, v3, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xa

    .line 188
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

.method public static refreshMultiUserFeature()V
    .locals 2

    .line 439
    invoke-static {}, Lcom/android/systemui/Rune;->refreshMultiUserFeature()V

    .line 440
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_MUM_LOCKSCREEN_BUTTON:Z

    .line 441
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_MUM:Z

    .line 442
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_ENHANCEMENT_PERFORMANCE_AT_USER_SWITCHING:Z

    .line 443
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    sput-boolean v0, Lcom/android/systemui/QpRune;->QUICK_RESTRICT_DIALOG_DISMISS_AT_USER_SWITCHING:Z

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshMultiUserFeature SYSUI_MULTI_USER = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasicRune"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final supportSamsungGesturalModeAsDefault()Z
    .locals 6

    .line 165
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigNavigationBarPolicy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 167
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "DefaultBottomGesture"

    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
