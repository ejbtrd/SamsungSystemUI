.class public Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;
.super Ljava/lang/Object;
.source "TelephonyServiceManager.java"


# static fields
.field public static CALL_STATE_IDLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSprDisplayRoam(Landroid/telephony/ServiceState;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getSprDisplayRoam()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVoiceNetworkType(Landroid/telephony/ServiceState;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    return p0
.end method

.method public hasDataService(Landroid/telephony/ServiceState;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasVolteCall()Z
    .locals 1

    .line 24
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    const-string/jumbo v0, "volte"

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCallingState(Lcom/android/settingslib/SignalIcon$MobileState;)Z
    .locals 1

    .line 29
    iget p0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->callState:I

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public isCdmaVoiceNetwork(Landroid/telephony/ServiceState;)Z
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const/16 p1, 0xc

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCsRegCDMA(Landroid/telephony/ServiceState;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public isDataStateInService(Landroid/telephony/ServiceState;)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public isDataStateOutOfService(Landroid/telephony/ServiceState;)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public isEmergencyOnly(Landroid/telephony/ServiceState;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPsOnlyReg(Landroid/telephony/ServiceState;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isPsOnlyReg()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRadioTech5Ge(I)Z
    .locals 0

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRadioTechDC(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRadioTechFourPointFiveG(I)Z
    .locals 0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRadioTechFourPointFiveGPlus(I)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
