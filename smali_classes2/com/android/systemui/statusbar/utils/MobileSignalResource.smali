.class public Lcom/android/systemui/statusbar/utils/MobileSignalResource;
.super Ljava/lang/Object;
.source "MobileSignalResource.java"


# instance fields
.field private final mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    return-void
.end method

.method private getTelephonyNoServiceIcon(I)I
    .locals 5

    .line 100
    sget v0, Lcom/android/settingslib/mobile/TelephonyIcons;->NO_SERVICE_ICON:I

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, p1, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget v0, Lcom/android/settingslib/mobile/TelephonyIcons;->NO_SERVICE_ICON_SPRINT:I

    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, p1, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    sget v0, Lcom/android/settingslib/mobile/TelephonyIcons;->NO_SERVICE_ICON_VZW:I

    goto :goto_0

    .line 105
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_TMO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 106
    sget v0, Lcom/android/settingslib/mobile/TelephonyIcons;->NO_SERVICE_ICON_TMO:I

    :cond_2
    :goto_0
    return v0
.end method

.method private getTelephonySignalContentDesc(II)I
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalContentDesc(I)[I

    move-result-object p0

    aget p0, p0, p2

    return p0
.end method

.method private getTelephonySignalContentDesc(I)[I
    .locals 2

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->MAX_SIGNAL_LEVEL:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    .line 125
    sget-object p0, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_5LEVEL_SIGNAL_STRENGTH:[I

    return-object p0

    .line 127
    :cond_0
    sget-object p0, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    return-object p0
.end method

.method private getTelephonySignalStrength(III)I
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalStrength(I)[[I

    move-result-object p0

    aget-object p0, p0, p2

    aget p0, p0, p3

    return p0
.end method

.method private getTelephonySignalStrength(I)[[I
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SPR:[[I

    return-object p0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_CHINA_NATION:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CHN:[[I

    return-object p0

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->MAX_SIGNAL_LEVEL:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_2

    .line 89
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->TELEPHONY_5LEVEL_SIGNAL_STRENGTH:[[I

    return-object p0

    .line 91
    :cond_2
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    return-object p0
.end method

.method private isCallingState(Lcom/android/settingslib/SignalIcon$MobileState;)Z
    .locals 1

    .line 133
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


# virtual methods
.method public getCurrentSignalStrengthIcon(Lcom/android/settingslib/SignalIcon$MobileState;II)I
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p3, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    iget-boolean v1, p1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v1, :cond_3

    .line 38
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p2, v1, p3, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->isCallingState(Lcom/android/settingslib/SignalIcon$MobileState;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-boolean p2, p1, Lcom/android/settingslib/SignalIcon$MobileState;->dataConnected:Z

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    .line 40
    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->level:I

    invoke-direct {p0, p3, p2, p1}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalStrength(III)I

    move-result p0

    return p0

    .line 43
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_LEVEL_ZERO_AT_WFC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p2, v1, p3, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "XFA"

    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 45
    iget-boolean p2, p1, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    if-eqz p2, :cond_2

    .line 46
    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    invoke-direct {p0, p3, p1, v2}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalStrength(III)I

    move-result p0

    return p0

    .line 50
    :cond_2
    iget p2, p1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->level:I

    invoke-direct {p0, p3, p2, p1}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalStrength(III)I

    move-result p0

    return p0

    .line 51
    :cond_3
    iget-boolean v1, p1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v1, :cond_5

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_LEVEL_ZERO_AT_WFC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, p3, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "TMB"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x12

    if-ne p2, v0, :cond_4

    .line 55
    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    invoke-direct {p0, p3, p1, v2}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalStrength(III)I

    move-result p0

    return p0

    .line 58
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonyNoServiceIcon(I)I

    move-result p0

    return p0

    :cond_5
    return v2
.end method

.method public getCurrentSignalStrengthIconOneLevelPerSec(Lcom/android/settingslib/SignalIcon$MobileState;ZII)I
    .locals 2

    .line 66
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 68
    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    .line 69
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 68
    invoke-direct {p0, p4, p1, p2}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalStrength(III)I

    move-result p0

    return p0

    .line 71
    :cond_0
    iget p2, p1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->level:I

    invoke-direct {p0, p4, p2, p1}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalStrength(III)I

    move-result p0

    return p0

    .line 72
    :cond_1
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 74
    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    .line 75
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 74
    invoke-direct {p0, p4, p1, p2}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalStrength(III)I

    move-result p0

    return p0

    .line 77
    :cond_2
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonyNoServiceIcon(I)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public getSignalContentDescription(Lcom/android/settingslib/SignalIcon$MobileState;I)I
    .locals 1

    .line 112
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz v0, :cond_0

    .line 113
    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->level:I

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalContentDesc(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 115
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/utils/MobileSignalResource;->getTelephonySignalContentDesc(II)I

    move-result p0

    return p0
.end method
