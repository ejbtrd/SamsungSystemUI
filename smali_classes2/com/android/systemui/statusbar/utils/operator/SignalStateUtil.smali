.class public Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;
.super Ljava/lang/Object;
.source "SignalStateUtil.java"


# static fields
.field private static final sDetermineSignalStateConfig:Ljava/lang/String;

.field private static final sMaxSignalLevel:I

.field private static final sRssiLevelConfig:Ljava/lang/String;


# instance fields
.field private final mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

.field private final mDualStateUtil:Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigMaxRssiLevel"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->sMaxSignalLevel:I

    .line 28
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigRuleRssiLevel"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->sRssiLevelConfig:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigDetermineSignalState"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->sDetermineSignalStateConfig:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mDualStateUtil:Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

    return-void
.end method


# virtual methods
.method public getDetermineSignalStateConfig(I)Ljava/lang/String;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "CarrierFeature_SystemUI_ConfigDetermineSignalState"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 82
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->sDetermineSignalStateConfig:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxSignalLevel(I)I
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 42
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "CarrierFeature_SystemUI_ConfigMaxRssiLevel"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result p0

    return p0

    .line 46
    :cond_0
    sget p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->sMaxSignalLevel:I

    return p0
.end method

.method public getRssiLevelConfig(I)Ljava/lang/String;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 57
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "CarrierFeature_SystemUI_ConfigRuleRssiLevel"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->sRssiLevelConfig:Ljava/lang/String;

    return-object p0
.end method

.method public isSginalFromDataRegStateInOpportunistic(I)Z
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->getDetermineSignalStateConfig(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "COMBINED_IN_OPPORTUNISTIC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSignalCombinedWithDataRegState(I)Z
    .locals 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->getDetermineSignalStateConfig(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COMBINED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->getDetermineSignalStateConfig(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "COMBINED_IN_OPPORTUNISTIC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isSupportSignalIconAtEmergencyOnly(I)Z
    .locals 2

    .line 90
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v0, "CarrierFeature_RIL_DisplayAntennaLimited"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public needToCheckOneLevelPerSec(I)Z
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->getRssiLevelConfig(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public shouldDisplayCTCOpSignalSpec(Ljava/lang/String;Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;)Z
    .locals 0

    const-string p0, "CTC"

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "CHC"

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "CHM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->CTC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public shouldDisplayNoServiceIconAtNoSimState()Z
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->getCountryISOString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->SALES_CODE:Ljava/lang/String;

    const-string v0, "ICE"

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public shouldLimitIconAtCTCSecondarySlot(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CHC"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->mDualStateUtil:Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;->isDualImsSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportMultiPathTCP(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "KTT"

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSupport5G()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const-string p0, "TUR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "THL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public supportNoSimNotification()Z
    .locals 2

    .line 140
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWifiOnly()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 141
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v1, "CscFeature_SystemUI_SupportNoSimNotification"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final supportSubScreenSignalInfo(Ljava/lang/String;)Z
    .locals 1

    .line 131
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "COVER"

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ATT"

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public useLevelZeroAtWFC(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "XFA"

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "TMB"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public useSimpleTypeNetworkBoosterConcept()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
