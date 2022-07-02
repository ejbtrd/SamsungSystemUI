.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelCarrierLabelWriter"
.end annotation


# instance fields
.field private final DUAL_SIM_TOKEN:Ljava/lang/String;

.field private final RTL_U200E:Ljava/lang/String;

.field private mCarrierTextBySimSlot:[Ljava/lang/String;

.field private mIsRtoL:Z

.field private mNumberOfActiveSim:I

.field private mPLMNIntents:[Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 5

    .line 2052
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "\u200e"

    .line 2045
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->RTL_U200E:Ljava/lang/String;

    const-string v0, " | "

    .line 2046
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->DUAL_SIM_TOKEN:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2047
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mIsRtoL:Z

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 2049
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mPLMNIntents:[Landroid/content/Intent;

    .line 2050
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mNumberOfActiveSim:I

    new-array v2, v1, [Ljava/lang/String;

    .line 2053
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2055
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x104064b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assembleDualSimPLMNandTOKEN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2259
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SIGNAL_FROM_DAT_REG_IN_OPPORTUNISTIC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, -0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 2260
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2261
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use a network name of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1

    .line 2267
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mIsRtoL:Z

    const-string v0, " | "

    if-eqz p0, :cond_3

    const-string/jumbo p0, "\u200e"

    if-eqz p2, :cond_2

    .line 2268
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2271
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p2, :cond_4

    .line 2274
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object p1

    .line 2277
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAirplaneModeCarrierText()Ljava/lang/String;
    .locals 10

    .line 2221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportCarrierInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_MULTI_LINE_PANEL_CARRIER_LABEL_VIEW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, -0x1

    .line 2222
    invoke-interface {v0, v1, v4, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2227
    :cond_0
    sput-boolean v2, Lcom/android/keyguard/CarrierTextManager;->sVoWifiConnected:Z

    .line 2229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_flight_mode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move v3, v1

    .line 2232
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const-string v6, "NetworkController"

    const/4 v7, 0x1

    if-ge v1, v5, :cond_2

    .line 2233
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 2234
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasVoWifiPlmn()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2236
    sput-boolean v7, Lcom/android/keyguard/CarrierTextManager;->sVoWifiConnected:Z

    .line 2239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSlotId()I

    move-result v5

    aget-object v0, v0, v5

    .line 2240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCarrierText : WFC PLMN by RIL = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v8, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_DUAL_IMS_SUPPORTED:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v9, v2, [Ljava/lang/Object;

    invoke-interface {v5, v8, v4, v9}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2248
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v5, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_DUAL_IMS_SUPPORTED:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-interface {v1, v5, v4, v8}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ne v3, v1, :cond_3

    .line 2250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    aget-object v1, v0, v2

    aget-object v0, v0, v7

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->assembleDualSimPLMNandTOKEN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCarrierText : DUAL WFC PLMN by RIL = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private setTextForCommon(Ljava/lang/String;)V
    .locals 1

    .line 2286
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2288
    :cond_0
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateCarrierTextInfo()V

    .line 2290
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;->setTextForCommon(Ljava/lang/String;)V

    return-void
.end method

.method private setTextForSlot1(Ljava/lang/String;)V
    .locals 1

    .line 2297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2298
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;->setTextForSlot1(Ljava/lang/String;)V

    return-void
.end method

.method private setTextForSlot2(Ljava/lang/String;)V
    .locals 1

    .line 2305
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2306
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;->setTextForSlot2(Ljava/lang/String;)V

    return-void
.end method

.method private shouldDisplayAirplaneModeCarrierText()Z
    .locals 6

    .line 2208
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME_AS_PLMN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .line 2210
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/settingslib/SignalIcon$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v0, :cond_0

    return v1

    .line 2213
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_DISPLAY_WIFI_AP_NAME_AS_PLMN:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v4, -0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 2214
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    aput-object v0, v5, v1

    .line 2213
    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    .line 2214
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SignalController;->getState()Lcom/android/settingslib/SignalIcon$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v0, :cond_1

    return v1

    .line 2217
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  NetworkControllerImpl.PanelCarrierLabelWriter - mIsRtoL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mIsRtoL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCarrierTextBySimSlot[SIM_1]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCarrierTextBySimSlot[SIM_2]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNumberOfActiveSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mNumberOfActiveSim:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public refreshPanelCarrierLabel()V
    .locals 6

    .line 2060
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME_AS_PLMN:Z

    if-eqz v0, :cond_0

    return-void

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_DISPLAY_WIFI_AP_NAME_AS_PLMN:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v3, -0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 2065
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 2064
    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2067
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getNumberSubscriptions()I

    move-result v0

    if-lez v0, :cond_3

    .line 2069
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 2070
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-eqz v0, :cond_2

    .line 2072
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshCarrierText()V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2076
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->sendPanelCarrierLabel(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public sendPanelCarrierLabel(Ljava/lang/String;I)V
    .locals 8

    .line 2111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_DISPLAY_WIFI_AP_NAME_AS_PLMN:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 2112
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, -0x1

    .line 2111
    invoke-interface {v1, v2, v0, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2114
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    .line 2115
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    aput-object p1, v2, p2

    .line 2116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendPanelCarrierLabel() carrierText:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", slotId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mNumberOfActiveSim:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mNumberOfActiveSim:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", airplane:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 2119
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", activeSimCount:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCarrierTextBySimSlot["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 2122
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NetworkController"

    .line 2116
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->shouldDisplayAirplaneModeCarrierText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->getAirplaneModeCarrierText()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    move v2, v3

    goto/16 :goto_1

    .line 2130
    :cond_2
    sget-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz v2, :cond_1

    .line 2131
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mNumberOfActiveSim:I

    if-nez v2, :cond_3

    .line 2132
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getMainStackSlotId()I

    move-result v2

    if-ne v2, p2, :cond_7

    .line 2134
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_SHOW_EMPTY_PLMN_IF_NO_ACTIVE_SIM:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, p2, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_3
    if-ne v2, v3, :cond_8

    if-nez p2, :cond_5

    .line 2141
    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 2142
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/systemui/util/DeviceState;->getSimState(Landroid/content/Context;I)I

    move-result v2

    if-eq v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 2143
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/systemui/util/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    if-ne p2, v3, :cond_7

    .line 2146
    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 2147
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/systemui/util/DeviceState;->getSimState(Landroid/content/Context;I)I

    move-result v2

    if-eq v2, v3, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 2148
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/systemui/util/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v2, v5

    goto :goto_1

    .line 2153
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_MULTI_LINE_PANEL_CARRIER_LABEL_VIEW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v2, :cond_1

    .line 2156
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/android/systemui/util/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result p1

    if-nez p1, :cond_a

    .line 2157
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    aget-object p1, p1, v3

    goto/16 :goto_0

    .line 2158
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/android/systemui/util/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result p1

    if-nez p1, :cond_b

    .line 2159
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    aget-object p1, p1, v5

    goto/16 :goto_0

    .line 2161
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mCarrierTextBySimSlot:[Ljava/lang/String;

    aget-object v2, p1, v5

    aget-object p1, p1, v3

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->assembleDualSimPLMNandTOKEN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :goto_1
    if-eqz v2, :cond_c

    .line 2172
    sput-object p1, Lcom/android/keyguard/CarrierTextManager;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    .line 2176
    :cond_c
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_CARRIERINFO_NO_SIM_INFO:Z

    if-eqz v4, :cond_e

    .line 2177
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mNumberOfActiveSim:I

    if-nez v4, :cond_e

    .line 2178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2179
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object p1

    sget v4, Lcom/android/systemui/R$string;->kg_missing_sim_message_short:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 2181
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$string;->kg_missing_sim_message_short:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_e
    :goto_2
    if-eqz v2, :cond_13

    .line 2189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_MULTI_LINE_PANEL_CARRIER_LABEL_VIEW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_12

    if-le v1, v3, :cond_10

    if-nez p2, :cond_f

    .line 2192
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->setTextForSlot1(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    if-ne p2, v3, :cond_13

    .line 2193
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->setTextForSlot2(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    if-ne v1, v3, :cond_11

    .line 2195
    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isSimCardInserted(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/util/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result p2

    if-eqz p2, :cond_13

    .line 2196
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->setTextForCommon(Ljava/lang/String;)V

    goto :goto_3

    .line 2199
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->setTextForCommon(Ljava/lang/String;)V

    goto :goto_3

    .line 2202
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->setTextForCommon(Ljava/lang/String;)V

    :cond_13
    :goto_3
    return-void
.end method

.method public updateApName(Ljava/lang/String;)V
    .locals 1

    .line 2311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->shouldDisplayAirplaneModeCarrierText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->getAirplaneModeCarrierText()Ljava/lang/String;

    move-result-object p1

    .line 2315
    :cond_0
    sput-object p1, Lcom/android/keyguard/CarrierTextManager;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    .line 2318
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->setTextForCommon(Ljava/lang/String;)V

    return-void
.end method

.method public updateNumberOfActiveSim(I)V
    .locals 1

    .line 2090
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mNumberOfActiveSim:I

    if-eq v0, p1, :cond_0

    .line 2091
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mNumberOfActiveSim:I

    .line 2092
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->refreshPanelCarrierLabel()V

    :cond_0
    return-void
.end method

.method public updatePLMNIntents(Landroid/content/Intent;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 2082
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mPLMNIntents:[Landroid/content/Intent;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    goto :goto_0

    .line 2084
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mPLMNIntents:[Landroid/content/Intent;

    const/4 p2, 0x1

    aput-object p1, p0, p2

    :goto_0
    return-void
.end method

.method public updateRtoL()V
    .locals 3

    .line 2097
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-nez v0, :cond_0

    return-void

    .line 2100
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mIsRtoL:Z

    .line 2101
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2102
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->mIsRtoL:Z

    if-eq v1, v0, :cond_2

    .line 2105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelWriter;->refreshPanelCarrierLabel()V

    :cond_2
    return-void
.end method
