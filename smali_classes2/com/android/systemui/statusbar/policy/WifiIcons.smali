.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field public static final UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

.field static final WIFI_FULL_ICONS:[I

.field static final WIFI_LEVEL_COUNT:I

.field private static final WIFI_NO_INTERNET_ICONS:[I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 25
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    new-array v1, v0, [I

    .line 33
    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    new-array v11, v5, [[I

    new-array v1, v0, [I

    .line 41
    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_0:I

    aput v2, v1, v3

    sget v8, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_1:I

    aput v8, v1, v4

    sget v9, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_2:I

    aput v9, v1, v5

    sget v10, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_3:I

    aput v10, v1, v6

    sget v12, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_full:I

    aput v12, v1, v7

    aput-object v1, v11, v3

    new-array v0, v0, [I

    aput v2, v0, v3

    aput v8, v0, v4

    aput v9, v0, v5

    aput v10, v0, v6

    aput v12, v0, v7

    aput-object v0, v11, v4

    sput-object v11, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 54
    sput-object v11, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 60
    aget-object v0, v11, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 62
    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v12, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v17, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v9, "Wi-Fi Icons"

    const v13, 0x10805b0

    const v14, 0x10805b0

    const v15, 0x10805b0

    const v16, 0x10805b0

    move-object v8, v0

    move-object v10, v11

    invoke-direct/range {v8 .. v17}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void

    :array_0
    .array-data 4
        0x10805b0
        0x10805b1
        0x10805b2
        0x10805b3
        0x10805b4
    .end array-data
.end method
