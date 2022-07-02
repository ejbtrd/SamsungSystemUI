.class public Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;
.super Ljava/lang/Object;
.source "IndicatorRuneWrapper.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    const-string p1, "IndicatorRuneWrapper"

    .line 47
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public custom4GDataIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public custom5GDataIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public customDataIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public customLayout()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public customRoaming()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public customSignal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public customSystemIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public customWifi()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public customeNetwork()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-interface {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getOperatorInfraMediator()Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    return-object p0
.end method

.method public hideWiFiDuringSwitchToMobile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showSignalInEmergencyOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportCarrierInfo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportCarrierInfoLogo()Z
    .locals 3

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->CARRIER_INFO_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    .line 160
    invoke-interface {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public supportCarrierInfoPLMN()Z
    .locals 3

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_APPLY_CONFIG_RULE_FOR_SHOW_PLMN:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-interface {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportCarrierInfoSetting()Z
    .locals 3

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_THREE_SETTING_MENU_FOR_CARRIER_INFORMATION_VISIBILITY:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-interface {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportDisabledDataIcon(I)Z
    .locals 2

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 166
    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportLayoutScale()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportMultiPathTCPIcon()Z
    .locals 3

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_MULTI_PATH_TCP:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    .line 141
    invoke-interface {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportNetworkBooster()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportNetworkDebugInfo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportNoSimNotification()Z
    .locals 3

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NO_SIM_NOTIFICATION:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    .line 178
    invoke-interface {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportRoamingAtPSOnly(I)Z
    .locals 2

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_ROAMING_ICON_AT_PS_ONLY:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 135
    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportSignalInfoBackup()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportTSS20()Z
    .locals 3

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_TSS20:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    .line 172
    invoke-interface {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportTwoPhone()Z
    .locals 3

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_TWO_PHONE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    .line 196
    invoke-interface {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportWiFi6G()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportWiFiCaptiveNotLogin()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportWiFiFlashing()Z
    .locals 0

    .line 117
    sget-boolean p0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_FLASHING:Z

    return p0
.end method

.method public supportWifiGiga()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
