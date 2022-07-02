.class public Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;
.super Lcom/android/systemui/statusbar/policy/WifiIcons;
.source "SamsungWifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field public static final SAMSUNG_WIFI_SIGNAL_STRENGTH:[[I

.field public static final WIFI6E_SIGNAL_STRENGTH:[I

.field public static final WIFI6_SIGNAL_STRENGTH:[I

.field public static final WIFI_ACTIVITY_DEFAULT:[I

.field public static final WIFI_ACTIVITY_LGT:[I

.field public static final WIFI_ACTIVITY_VZW:[I

.field public static final WIFI_CALLING_SIGNAL_STRENGTH:[[I

.field public static final WIFI_SIGNAL_FLASH:I

.field public static final WIFI_SIGNAL_STRENGTH_KT:[[I

.field public static final WIFI_SIGNAL_STRENGTH_LGT:[[I

.field public static final WIFI_SIGNAL_STRENGTH_SPR:[[I

.field public static final WIFI_SIGNAL_STRENGTH_VZW:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 8
    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_no_inout:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_in:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_out:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_inout:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    new-array v1, v0, [I

    .line 15
    sget v2, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_no_inout:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_in:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_out:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_inout:I

    aput v2, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_ACTIVITY_LGT:[I

    new-array v1, v0, [I

    .line 22
    sget v2, Lcom/android/systemui/R$drawable;->sec_stat_sys_signal_vzw_no_inout:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->sec_stat_sys_signal_vzw_in:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->sec_stat_sys_signal_vzw_out:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->sec_stat_sys_signal_vzw_inout:I

    aput v2, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_ACTIVITY_VZW:[I

    new-array v1, v5, [[I

    const/4 v2, 0x5

    new-array v7, v2, [I

    .line 29
    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_wifi_captive_0:I

    aput v8, v7, v3

    sget v9, Lcom/android/systemui/R$drawable;->stat_sys_wifi_captive_1:I

    aput v9, v7, v4

    sget v10, Lcom/android/systemui/R$drawable;->stat_sys_wifi_captive_2:I

    aput v10, v7, v5

    sget v11, Lcom/android/systemui/R$drawable;->stat_sys_wifi_captive_3:I

    aput v11, v7, v6

    sget v12, Lcom/android/systemui/R$drawable;->stat_sys_wifi_captive_4:I

    aput v12, v7, v0

    aput-object v7, v1, v3

    new-array v7, v2, [I

    sget v13, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_0:I

    aput v13, v7, v3

    sget v13, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_1:I

    aput v13, v7, v4

    sget v13, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_2:I

    aput v13, v7, v5

    sget v13, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_3:I

    aput v13, v7, v6

    sget v13, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_4:I

    aput v13, v7, v0

    aput-object v7, v1, v4

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->SAMSUNG_WIFI_SIGNAL_STRENGTH:[[I

    new-array v1, v5, [[I

    new-array v7, v2, [I

    .line 42
    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_0:I

    aput v13, v7, v3

    sget v14, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_1:I

    aput v14, v7, v4

    sget v15, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_2:I

    aput v15, v7, v5

    sget v16, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_3:I

    aput v16, v7, v6

    sget v17, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_4:I

    aput v17, v7, v0

    aput-object v7, v1, v3

    new-array v7, v2, [I

    aput v13, v7, v3

    aput v14, v7, v4

    aput v15, v7, v5

    aput v16, v7, v6

    aput v17, v7, v0

    aput-object v7, v1, v4

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    new-array v1, v5, [[I

    new-array v7, v2, [I

    .line 55
    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_0:I

    aput v13, v7, v3

    sget v14, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_1:I

    aput v14, v7, v4

    sget v15, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_2:I

    aput v15, v7, v5

    sget v16, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_3:I

    aput v16, v7, v6

    sget v17, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_4:I

    aput v17, v7, v0

    aput-object v7, v1, v3

    new-array v7, v2, [I

    aput v13, v7, v3

    aput v14, v7, v4

    aput v15, v7, v5

    aput v16, v7, v6

    aput v17, v7, v0

    aput-object v7, v1, v4

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    new-array v1, v5, [[I

    new-array v7, v2, [I

    .line 68
    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_0:I

    aput v13, v7, v3

    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_1:I

    aput v13, v7, v4

    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_2:I

    aput v13, v7, v5

    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_3:I

    aput v13, v7, v6

    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_4:I

    aput v13, v7, v0

    aput-object v7, v1, v3

    new-array v7, v2, [I

    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_0_pure:I

    aput v13, v7, v3

    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_1_pure:I

    aput v13, v7, v4

    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_2_pure:I

    aput v13, v7, v5

    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_3_pure:I

    aput v13, v7, v6

    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_4_pure:I

    aput v13, v7, v0

    aput-object v7, v1, v4

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_SPR:[[I

    new-array v1, v5, [[I

    new-array v7, v2, [I

    .line 81
    sget v13, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_0:I

    aput v13, v7, v3

    sget v14, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_1:I

    aput v14, v7, v4

    sget v15, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_2:I

    aput v15, v7, v5

    sget v16, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_3:I

    aput v16, v7, v6

    sget v17, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_4:I

    aput v17, v7, v0

    aput-object v7, v1, v3

    new-array v7, v2, [I

    aput v13, v7, v3

    aput v14, v7, v4

    aput v15, v7, v5

    aput v16, v7, v6

    aput v17, v7, v0

    aput-object v7, v1, v4

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    new-array v1, v5, [[I

    new-array v7, v2, [I

    aput v8, v7, v3

    aput v9, v7, v4

    aput v10, v7, v5

    aput v11, v7, v6

    aput v12, v7, v0

    aput-object v7, v1, v3

    new-array v7, v2, [I

    .line 94
    sget v8, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_0:I

    aput v8, v7, v3

    sget v8, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_1:I

    aput v8, v7, v4

    sget v8, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_2:I

    aput v8, v7, v5

    sget v8, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_3:I

    aput v8, v7, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_4:I

    aput v8, v7, v0

    aput-object v7, v1, v4

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_VZW:[[I

    new-array v1, v2, [I

    .line 108
    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6_signal_0:I

    aput v7, v1, v3

    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6_signal_1:I

    aput v7, v1, v4

    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6_signal_2:I

    aput v7, v1, v5

    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6_signal_3:I

    aput v7, v1, v6

    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6_signal_4:I

    aput v7, v1, v0

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI6_SIGNAL_STRENGTH:[I

    new-array v1, v2, [I

    .line 117
    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6e_signal_0:I

    aput v7, v1, v3

    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6e_signal_1:I

    aput v7, v1, v4

    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6e_signal_2:I

    aput v7, v1, v5

    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6e_signal_3:I

    aput v7, v1, v6

    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_wifi6e_signal_4:I

    aput v7, v1, v0

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI6E_SIGNAL_STRENGTH:[I

    .line 126
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_checking_flash:I

    sput v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_FLASH:I

    new-array v1, v5, [[I

    new-array v7, v2, [I

    .line 129
    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_captive_0:I

    aput v8, v7, v3

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_captive_1:I

    aput v8, v7, v4

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_captive_2:I

    aput v8, v7, v5

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_captive_3:I

    aput v8, v7, v6

    sget v8, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_captive_4:I

    aput v8, v7, v0

    aput-object v7, v1, v3

    new-array v2, v2, [I

    sget v7, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_0:I

    aput v7, v2, v3

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_1:I

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_2:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_3:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_nwbooster_wifi_4:I

    aput v3, v2, v0

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    return-void
.end method
