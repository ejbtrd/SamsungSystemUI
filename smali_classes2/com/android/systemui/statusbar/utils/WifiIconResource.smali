.class public Lcom/android/systemui/statusbar/utils/WifiIconResource;
.super Ljava/lang/Object;
.source "WifiIconResource.java"


# static fields
.field private static final LGT_SSIDs:[Ljava/lang/String;


# instance fields
.field private final mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

.field private mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "U+zone"

    const-string v1, "U+ACN"

    const-string v2, "5G_U+zone"

    const-string v3, "U+zone_5G"

    .line 28
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->LGT_SSIDs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    return-void
.end method

.method private enableLGTWifiIcon(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 176
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    .line 177
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLGTWifiIcon: networkId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " eap = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " phase2 = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WifiIconResource"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    if-nez v0, :cond_0

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

.method private getDecidedInetCondition(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)I
    .locals 1

    .line 88
    iget p0, p1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    .line 89
    iget p1, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method private getWifi6Icon(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)Ljava/lang/Integer;
    .locals 0

    .line 99
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6EMode:Z

    if-eqz p0, :cond_0

    .line 100
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI6E_SIGNAL_STRENGTH:[I

    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->level:I

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 101
    :cond_0
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifi6Mode:Z

    if-eqz p0, :cond_1

    .line 102
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI6_SIGNAL_STRENGTH:[I

    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->level:I

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initCarrierWifiIconInfo(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;)V
    .locals 0

    const/4 p0, 0x0

    .line 139
    iput p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    const/4 p0, 0x0

    .line 140
    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    return-void
.end method

.method private isLGTWifi(Ljava/lang/String;)Z
    .locals 1

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->LGT_SSIDs:[Ljava/lang/String;

    .line 171
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/statusbar/utils/WifiIconResource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/utils/WifiIconResource$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateCarrierWifiIcon(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)V
    .locals 8

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/WifiIconResource;->initCarrierWifiIconInfo(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->PRIMARY_SIM_SLOT_ID:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, -0x1

    invoke-interface {v0, v1, v4, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v0, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    iget v3, p2, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    .line 115
    iget v4, p2, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 117
    iget-object v5, p0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v6, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_WIFI_CALLING_ICON_AT_WIFI_SLOT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v5, v6, v0, v7}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->epdgConnected:Z

    if-eqz v5, :cond_0

    .line 118
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_CALLING_SIGNAL_STRENGTH:[[I

    aget-object p0, p0, v3

    aget p0, p0, v4

    iput p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    .line 119
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    goto :goto_0

    :cond_0
    const-string v5, "VZW"

    .line 120
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_VZW:[[I

    aget-object p0, p0, v3

    aget p0, p0, v4

    iput p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    .line 122
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_ACTIVITY_VZW:[I

    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    goto :goto_0

    .line 123
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v6, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v5, v6, v0, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_SPR:[[I

    aget-object p0, p0, v3

    aget p0, p0, v4

    iput p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    const/4 p0, 0x0

    .line 125
    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    const-string v0, "KTT"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "WifiIconResource"

    const-string/jumbo v1, "updateKTWifiIconInfo"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isGigaAp:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/systemui/statusbar/utils/WifiIconResource;->updateKTWifiIconInfo(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;Ljava/lang/Boolean;II)V

    goto :goto_0

    :cond_3
    const-string v0, "LGT"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/systemui/statusbar/utils/WifiIconResource;->updateLGTWifiIconInfo(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateKTWifiIconInfo(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;Ljava/lang/Boolean;II)V
    .locals 0

    .line 145
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiIconResource"

    const-string/jumbo p2, "updateKTWifiIconInfo : KT AP and getFrequency is 5Ghz bandwidth"

    .line 146
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    aget-object p0, p0, p3

    aget p0, p0, p4

    iput p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    .line 148
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    :cond_0
    return-void
.end method

.method private updateLGTWifiIconInfo(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;II)V
    .locals 4

    .line 155
    iget v0, p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->networkId:I

    .line 156
    iget-object v1, p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLGTWifiIconInfo : getNetworkId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wifiConfiguration = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiIconResource"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/utils/WifiIconResource;->isLGTWifi(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/utils/WifiIconResource;->enableLGTWifiIcon(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 161
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    aget-object p0, p0, p3

    aget p0, p0, p4

    iput p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    .line 162
    sget-object p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_ACTIVITY_LGT:[I

    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public updateWifiIconInfo(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;[[I)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportWiFiFlashing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedConnectivityReport:Z

    if-nez v0, :cond_0

    const-string p0, "WifiIconResource"

    const-string p2, "Before receiving receivedConnectivityReport we show flashing icon."

    .line 50
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget p0, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_SIGNAL_FLASH:I

    iput p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    .line 52
    iput-object v1, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    return-void

    .line 57
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/utils/WifiIconResource;->getDecidedInetCondition(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)I

    move-result v0

    .line 58
    aget-object p3, p3, v0

    iget v2, p2, Lcom/android/settingslib/SignalIcon$State;->level:I

    aget p3, p3, v2

    iput p3, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    .line 59
    sget-object p3, Lcom/android/systemui/statusbar/policy/SamsungWifiIcons;->WIFI_ACTIVITY_DEFAULT:[I

    iput-object p3, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/utils/WifiIconResource;->getWifi6Icon(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 65
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    return-void

    .line 71
    :cond_1
    new-instance p3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;

    invoke-direct {p3}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;-><init>()V

    .line 72
    invoke-direct {p0, p3, p2}, Lcom/android/systemui/statusbar/utils/WifiIconResource;->updateCarrierWifiIcon(Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)V

    .line 73
    iget v2, p3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    if-eqz v2, :cond_2

    .line 75
    iput v2, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->iconID:I

    .line 76
    iget-object p3, p3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    iput-object p3, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    .line 79
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/WifiIconResource;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportWiFiCaptiveNotLogin()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v0, :cond_3

    .line 80
    iget p0, p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->receivedInetCondition:I

    if-nez p0, :cond_4

    .line 82
    :cond_3
    iput-object v1, p1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiIconInfo;->activityIconSet:[I

    :cond_4
    return-void
.end method
