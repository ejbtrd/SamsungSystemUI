.class public Lcom/android/settingslib/SignalIcon$MobileState;
.super Lcom/android/settingslib/SignalIcon$State;
.source "SignalIcon.java"


# instance fields
.field public airplaneMode:Z

.field public bluetoothTethered:Z

.field public ca:Z

.field public callState:I

.field public cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public carrierNetworkChangeMode:Z

.field public cdmaEriIconIndex:I

.field public cdmaEriIconMode:I

.field public dataConnected:Z

.field public dataSim:Z

.field public defaultDataOff:Z

.field public emergencyModeActivated:Z

.field public fiveGAvailable:Z

.field public isDefault:Z

.field public isEmergency:Z

.field public isLTEFemtoCell:Z

.field public isLimitedStateForCTCSlaveVoLTE:Z

.field public mmWave:Z

.field public mobileDataSettingEnabled:Z

.field public mpTCPEnabled:Z

.field public networkName:Ljava/lang/String;

.field public networkNameData:Ljava/lang/String;

.field public nwBoosterRilEnabled:Z

.field public nwBoosterSettingEnabled:Z

.field public optionalRadioTech:I

.field public roaming:Z

.field public showDisabledDataIcon:Z

.field public simCardActivated:I

.field public simState:Ljava/lang/String;

.field public swRoaming:Z

.field public userSetup:Z

.field public voWifiConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/android/settingslib/SignalIcon$State;-><init>()V

    .line 216
    sget-object v0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->OTHERS:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    iput-object v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/settingslib/SignalIcon$State;)V
    .locals 1

    .line 221
    invoke-super {p0, p1}, Lcom/android/settingslib/SignalIcon$State;->copyFrom(Lcom/android/settingslib/SignalIcon$State;)V

    .line 222
    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileState;

    .line 223
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    .line 224
    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 225
    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 226
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    .line 227
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    .line 228
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    .line 229
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    .line 230
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    .line 231
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    .line 232
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    .line 233
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    .line 235
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    .line 236
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    .line 237
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    .line 238
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    .line 239
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    .line 240
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isLimitedStateForCTCSlaveVoLTE:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isLimitedStateForCTCSlaveVoLTE:Z

    .line 241
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterRilEnabled:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterRilEnabled:Z

    .line 242
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterSettingEnabled:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterSettingEnabled:Z

    .line 243
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->swRoaming:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->swRoaming:Z

    .line 244
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    .line 245
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    .line 246
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->emergencyModeActivated:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->emergencyModeActivated:Z

    .line 247
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->bluetoothTethered:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->bluetoothTethered:Z

    .line 248
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->mpTCPEnabled:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mpTCPEnabled:Z

    .line 249
    iget v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    iput v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    .line 250
    iget v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    iput v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    .line 251
    iget v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconMode:I

    iput v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconMode:I

    .line 252
    iget v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconIndex:I

    iput v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconIndex:I

    .line 253
    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    .line 254
    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    iput-object v0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 255
    iget p1, p1, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    iput p1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 304
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/SignalIcon$MobileState;

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->isLimitedStateForCTCSlaveVoLTE:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isLimitedStateForCTCSlaveVoLTE:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterRilEnabled:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterRilEnabled:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterSettingEnabled:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterSettingEnabled:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->swRoaming:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->swRoaming:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->emergencyModeActivated:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->emergencyModeActivated:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->bluetoothTethered:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->bluetoothTethered:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->mpTCPEnabled:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mpTCPEnabled:Z

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    iget v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    iget v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconMode:I

    iget v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconMode:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconIndex:I

    iget v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconIndex:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    .line 322
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    iget-object v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    iget v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 326
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/SignalIcon$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    .line 327
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    .line 328
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    if-ne p1, v2, :cond_1

    iget-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-ne p1, v2, :cond_1

    iget-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    if-ne p1, v2, :cond_1

    iget-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-ne p1, v2, :cond_1

    iget-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    if-ne p1, v2, :cond_1

    iget-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    if-ne p1, v2, :cond_1

    iget-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    if-ne p1, v2, :cond_1

    iget-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-ne p1, v2, :cond_1

    iget-boolean p1, v0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    iget-boolean p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    if-ne p1, p0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 261
    invoke-super {p0, p1}, Lcom/android/settingslib/SignalIcon$State;->toString(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x2c

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataSim="

    .line 263
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataSim:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkName="

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkNameData="

    .line 265
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataConnected="

    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "roaming="

    .line 267
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isDefault="

    .line 268
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isDefault:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isEmergency="

    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isEmergency:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "airplaneMode="

    .line 270
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "carrierNetworkChangeMode="

    .line 271
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->carrierNetworkChangeMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userSetup="

    .line 273
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->userSetup:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "defaultDataOff="

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->defaultDataOff:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ca="

    .line 276
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->ca:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "fiveGAvailable="

    .line 277
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->fiveGAvailable:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "mmWave="

    .line 278
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mmWave:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "voWifiConnected="

    .line 279
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showDisabledDataIcon="

    .line 280
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isLimitedStateForCTCSlaveVoLTE="

    .line 281
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isLimitedStateForCTCSlaveVoLTE:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "nwBoosterRilEnabled="

    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterRilEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "nwBoosterSettingEnabled="

    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->nwBoosterSettingEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "swRoaming="

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->swRoaming:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isLTEFemtoCell="

    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "mobileDataSettingEnabled="

    .line 286
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mobileDataSettingEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "emergencyModeActivated="

    .line 287
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->emergencyModeActivated:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "bluetoothTethered="

    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->bluetoothTethered:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "mpTCPEnabled="

    .line 289
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->mpTCPEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "callState="

    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "optionalRadioTech="

    .line 291
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->optionalRadioTech:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "cdmaEriIconMode="

    .line 292
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconMode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "cdmaEriIconIndex="

    .line 293
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "simState="

    .line 294
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->simState:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "cardOperator="

    .line 295
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/SignalIcon$MobileState;->cardOperator:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "simCardActivated="

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settingslib/SignalIcon$MobileState;->simCardActivated:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
