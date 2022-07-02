.class public Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;
.super Ljava/lang/Object;
.source "OperatorInfraMediatorImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBatteryStateUtil:Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;

.field private final mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

.field private final mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

.field private final mContext:Landroid/content/Context;

.field private final mDualStateUtil:Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

.field private final mFakeNetworkConditionProvider:Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

.field private final mLatinFeatureUtil:Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;

.field private final mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

.field private final mRoamingUtil:Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

.field private final mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

.field private final mWifiControlUtil:Lcom/android/systemui/statusbar/utils/operator/WifiControlUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OperatorInfraMediatorImpl"

    .line 22
    iput-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mContext:Landroid/content/Context;

    .line 39
    const-class p1, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    .line 40
    const-class p1, Lcom/android/systemui/statusbar/utils/operator/WifiControlUtil;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/operator/WifiControlUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mWifiControlUtil:Lcom/android/systemui/statusbar/utils/operator/WifiControlUtil;

    .line 41
    const-class p1, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    .line 42
    const-class p1, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    .line 43
    const-class p1, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mRoamingUtil:Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    .line 44
    const-class p1, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    .line 45
    const-class p1, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mLatinFeatureUtil:Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;

    .line 46
    const-class p1, Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mDualStateUtil:Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

    .line 47
    const-class p1, Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mBatteryStateUtil:Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;

    .line 48
    const-class p1, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mFakeNetworkConditionProvider:Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    return-void
.end method

.method private getPrimarySimIconBranding()Ljava/lang/String;
    .locals 4

    .line 338
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->PRIMARY_SIM_SLOT_ID:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 339
    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private varargs getValueUsingIconBranding(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z
    .locals 4

    .line 163
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_0

    .line 187
    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1

    return v2

    .line 183
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->support5GAccessText(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 180
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isMultiLinePanelCarrierLabelView(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 177
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->shouldCheckWifiStateForDisabledDataIcon(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 174
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isSIMandOperatorMatched(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 171
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->supportSubScreenSignalInfo(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 168
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->supportMultiPathTCP(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 165
    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isThereSettingMenuForCarrierInformationVisibility(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 248
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mLatinFeatureUtil:Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;->supportLatinDisabledIcon(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 245
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->needToShowEmptyPlmnIfNoActiveSim(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 242
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mRoamingUtil:Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->supportRoamingAtPSOnly(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 239
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mRoamingUtil:Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->supportRoamingIconAtGSMNetwork(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 236
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mRoamingUtil:Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->supportRoamingIcon(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 233
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->applyAMXAdvancedLteIconConcept(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 230
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->applyTEFAdvancedLteIconConcept(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 227
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->applyAdvancedLteIconConcept(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 224
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->use4GPlusInsteadOf4G(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 221
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->useLevelZeroAtWFC(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 218
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->supportHSDPADataIcon(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 215
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->supportDisabledDataIcon(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 212
    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    aget-object p1, p3, v2

    check-cast p1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->shouldDisplayCTCOpSignalSpec(Ljava/lang/String;Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;)Z

    move-result p0

    return p0

    .line 209
    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->shouldLimitIconAtCTCSecondarySlot(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 206
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mWifiControlUtil:Lcom/android/systemui/statusbar/utils/operator/WifiControlUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/WifiControlUtil;->isSupportWifiCallingIconAtWifiSlot(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 203
    :pswitch_16
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isUS()Z

    move-result p0

    return p0

    .line 200
    :pswitch_17
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isUSATMobile(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 197
    :pswitch_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isUSAVerizon(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 194
    :pswitch_19
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isUSASprintOperatorGroup(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 191
    :pswitch_1a
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isChinaNation(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "  - OperatorInfraMediatorImpl -----"

    .line 354
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  primarySimSlot: "

    .line 355
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->PRIMARY_SIM_SLOT_ID:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  salesCode: "

    .line 357
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 361
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supportMultiSims="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", numSlot="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - SIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    .line 366
    :goto_2
    invoke-static {}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->values()[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    move-result-object v4

    array-length v4, v4

    const-string v5, "="

    const-string v6, "    "

    if-ge v3, v4, :cond_1

    .line 367
    invoke-static {}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->values()[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    move-result-object v4

    aget-object v4, v4, v3

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :try_start_0
    new-array v5, v1, [Ljava/lang/Object;

    .line 370
    invoke-virtual {p0, v4, v0, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :catch_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v1

    .line 376
    :goto_3
    invoke-static {}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->values()[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 377
    invoke-static {}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->values()[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    move-result-object v4

    aget-object v4, v4, v3

    .line 378
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v7, v1, [Ljava/lang/Object;

    .line 379
    invoke-virtual {p0, v4, v0, v7}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public varargs get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 257
    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mFakeNetworkConditionProvider:Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 258
    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mFakeNetworkConditionProvider:Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    .line 259
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;->getFakeValues(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;)Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider$FakeValues;

    :cond_0
    const/4 p3, 0x0

    .line 266
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 314
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getResourceIdOfHomescreenCarrierLogo(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getResourceIdOfLockscreenCarrierLogo(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    .line 306
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getPrimarySimIconBranding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getNoSimNotiBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p3

    goto :goto_0

    .line 302
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getCarrierInfoLogo()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 298
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getPrimarySimSlotId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    .line 293
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->getMaxSignalLevel(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    .line 288
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->getSystemIconList(I)Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_0

    .line 284
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->getCountryISOString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 280
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->getOverrideIconBranding()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 276
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->getIconBrandingFromCarrierFeature(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 272
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->getIconBrandingFromCscFeature()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 268
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFakeNetworkConditions()Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mFakeNetworkConditionProvider:Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    return-object p0
.end method

.method public varargs isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mFakeNetworkConditionProvider:Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mFakeNetworkConditionProvider:Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    .line 55
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;->getFakeConditions(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;)Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider$FakeCondition;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Conditions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->getValueUsingIconBranding(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 153
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mBatteryStateUtil:Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/BatteryStateUtil;->isShowBatteryPercentDefaultOn()Z

    move-result p0

    return p0

    .line 147
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mLatinFeatureUtil:Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;->supportDisplayCBCH50()Z

    move-result p0

    return p0

    .line 144
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mLatinFeatureUtil:Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/LatinFeatureUtil;->isClaroBrazilPlmnBranding()Z

    move-result p0

    return p0

    .line 138
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->supportTwoPhone()Z

    move-result p0

    return p0

    .line 135
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->needToApplyConfigRuleForShowPlmn()Z

    move-result p0

    return p0

    .line 132
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->needToDisplayWifiApNameAsPlmn(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 126
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mRoamingUtil:Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->useOnlyCDMARoamingIcon()Z

    move-result p0

    return p0

    .line 123
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mRoamingUtil:Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->useOnlyGSMRoamingIcon()Z

    move-result p0

    return p0

    .line 120
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mRoamingUtil:Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->needToApplyFemtoCellIcon(I)Z

    move-result p0

    return p0

    .line 114
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->supportNoSimNotification()Z

    move-result p0

    return p0

    .line 111
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->supportLteWideBandIcon(I)Z

    move-result p0

    return p0

    .line 108
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->use5GPlusDataIcon(I)Z

    move-result p0

    return p0

    .line 105
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->useOneShaped5GDataIcon(I)Z

    move-result p0

    return p0

    .line 102
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->useLteInsteadOf4G(I)Z

    move-result p0

    return p0

    .line 99
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->use4HalfGInsteadOf4GPlus(I)Z

    move-result p0

    return p0

    .line 96
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mMobileDataUtil:Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->use4GInstead4GPlus()Z

    move-result p0

    return p0

    .line 93
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->shouldDisplayNoServiceIconAtNoSimState()Z

    move-result p0

    return p0

    .line 90
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->useSimpleTypeNetworkBoosterConcept()Z

    move-result p0

    return p0

    .line 87
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->isSupportSignalIconAtEmergencyOnly(I)Z

    move-result p0

    return p0

    .line 84
    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->isSginalFromDataRegStateInOpportunistic(I)Z

    move-result p0

    return p0

    .line 81
    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->isSignalCombinedWithDataRegState(I)Z

    move-result p0

    return p0

    .line 78
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mSignalStateUtil:Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/SignalStateUtil;->needToCheckOneLevelPerSec(I)Z

    move-result p0

    return p0

    .line 75
    :pswitch_16
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    return p0

    .line 72
    :pswitch_17
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isVerizonBrandedTablet()Z

    move-result p0

    return p0

    .line 69
    :pswitch_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportsBackgroundDataRestrictionByPco()Z

    move-result p0

    return p0

    .line 66
    :pswitch_19
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mDualStateUtil:Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/DualStateUtil;->isDualImsSupported()Z

    move-result p0

    return p0

    .line 63
    :pswitch_1a
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isFakeConditionEnabled()Z
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mFakeNetworkConditionProvider:Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/FakeNetworkConditionProvider;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public refreshCarrierFeature(I)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCarrierInfoUtil:Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->refreshCarrierFeatures(I)V

    return-void
.end method

.method public varargs set(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;[Ljava/lang/Object;)V
    .locals 1

    .line 324
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl$1;->$SwitchMap$com$android$systemui$statusbar$utils$operator$OperatorInfraMediator$Values:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediatorImpl;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    const/4 p1, 0x0

    aget-object p1, p2, p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->setOverrideIconBranding(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
