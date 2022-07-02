.class public Lcom/android/systemui/statusbar/utils/RoamingResource;
.super Ljava/lang/Object;
.source "RoamingResource.java"


# instance fields
.field private final mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private final mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    return-void
.end method

.method private getCdmaEriIcon(Lcom/android/settingslib/SignalIcon$MobileState;I)I
    .locals 5

    .line 123
    iget v0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconIndex:I

    .line 124
    iget v1, p1, Lcom/android/settingslib/SignalIcon$MobileState;->cdmaEriIconMode:I

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iconMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoamingResource"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v2, p1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_FEMTO_CELL_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p0, v2, p2, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_8

    .line 132
    iget-boolean p0, p1, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    if-eqz p0, :cond_1

    .line 133
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_femtocell:I

    return p0

    :cond_1
    if-eqz v0, :cond_7

    if-eq v0, p2, :cond_6

    const/4 p0, 0x2

    if-eq v0, p0, :cond_5

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 144
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_femtocell:I

    return p0

    :cond_3
    if-ne v1, p2, :cond_4

    .line 146
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_femtocell_flash_ani:I

    return p0

    .line 149
    :cond_4
    :goto_0
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_cdma:I

    return p0

    .line 141
    :cond_5
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_cdma_flash_ani:I

    return p0

    :cond_6
    return v3

    .line 139
    :cond_7
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_cdma:I

    return p0

    :cond_8
    if-ne v0, p2, :cond_9

    return v3

    :cond_9
    if-eqz v1, :cond_b

    if-eq v1, p2, :cond_a

    return v3

    .line 159
    :cond_a
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_cdma_flash_ani:I

    return p0

    .line 157
    :cond_b
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_cdma:I

    return p0
.end method

.method private getDataTypeIconAtRoamingIconArea(Lcom/android/settingslib/SignalIcon$MobileState;I)I
    .locals 3

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_CHINA_NATION:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, p2, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 194
    iget-object p0, p1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object p0, p0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "H+_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_0

    :sswitch_1
    const-string p2, "5G_Connected_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string p2, "4G_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string p2, "3G_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x6

    goto/16 :goto_0

    :sswitch_4
    const-string p2, "2G_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :sswitch_5
    const-string p2, "1X_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, v1

    goto :goto_0

    :sswitch_6
    const-string p2, "Unknown"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p1, 0xd

    goto :goto_0

    :sswitch_7
    const-string p2, "4G+_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p1, 0x9

    goto :goto_0

    :sswitch_8
    const-string p2, "5G_Available_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :sswitch_9
    const-string p2, "3G+_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :sswitch_a
    const-string p2, "H_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :sswitch_b
    const-string p2, "G_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :sswitch_c
    const-string p2, "E_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :sswitch_d
    const-string p2, "5G_OneShaped_CHN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p1, 0xb

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    return v1

    .line 220
    :pswitch_0
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_type_at_signal_area_5g_available:I

    return p0

    .line 218
    :pswitch_1
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_5G:I

    return p0

    .line 216
    :pswitch_2
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_type_at_signal_area_5g:I

    return p0

    .line 214
    :pswitch_3
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_4G_PLUS:I

    return p0

    .line 212
    :pswitch_4
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_4G:I

    return p0

    .line 210
    :pswitch_5
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_3G_PLUS:I

    return p0

    .line 208
    :pswitch_6
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_3G:I

    return p0

    .line 206
    :pswitch_7
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_H_PLUS:I

    return p0

    .line 204
    :pswitch_8
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_H:I

    return p0

    .line 202
    :pswitch_9
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_E:I

    return p0

    .line 200
    :pswitch_a
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_G:I

    return p0

    .line 198
    :pswitch_b
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_2G:I

    return p0

    .line 196
    :pswitch_c
    sget p0, Lcom/android/settingslib/mobile/TelephonyIcons;->DISABLED_AT_SIGNAL_1X:I

    return p0

    :cond_1
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x45f6a4ba -> :sswitch_d
        0x3f8898f -> :sswitch_c
        0x414b891 -> :sswitch_b
        0x422d012 -> :sswitch_a
        0x5900881 -> :sswitch_9
        0xfa39b26 -> :sswitch_8
        0x3a7643c2 -> :sswitch_7
        0x523e442a -> :sswitch_6
        0x58a1be91 -> :sswitch_5
        0x5967079f -> :sswitch_4
        0x5b1be03e -> :sswitch_3
        0x5cd0b8dd -> :sswitch_2
        0x79ede366 -> :sswitch_1
        0x7d67132d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private isNationalRoaming(ILandroid/telephony/ServiceState;)Z
    .locals 5

    .line 167
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p0, v2, p1, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simNumeric "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " plmnNumeric "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " iconBranding "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RoamingResource"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VAU"

    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    .line 173
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_0
    const-string p1, "XSA"

    .line 179
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "50503"

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_1
    const-string p1, "ACG"

    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    const-string p0, "1836"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "10009"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "10010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    return v2

    :cond_3
    const-string p0, "21902"

    .line 186
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "21901"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v3
.end method


# virtual methods
.method public getRoamingIcon(Landroid/telephony/ServiceState;Lcom/android/settingslib/SignalIcon$MobileState;ZIZI)I
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_ROAMING_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p6, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p2, Lcom/android/settingslib/SignalIcon$MobileState;->roaming:Z

    if-eqz v0, :cond_8

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_ONLY_GSM_ROAMING_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p6, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->APPLY_FEMTO_CELL_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    .line 53
    invoke-interface {p3, v0, p6, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    iget-boolean p3, p2, Lcom/android/settingslib/SignalIcon$MobileState;->isLTEFemtoCell:Z

    if-eqz p3, :cond_1

    .line 55
    invoke-direct {p0, p2, p6}, Lcom/android/systemui/statusbar/utils/RoamingResource;->getCdmaEriIcon(Lcom/android/settingslib/SignalIcon$MobileState;I)I

    move-result p3

    goto :goto_2

    .line 57
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_ROAMING_ICON_AT_GSM:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p3, v0, p6, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-boolean p3, p2, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-nez p3, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->USE_ONLY_CDMA_ROAMING_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p3, v0, p6, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    new-array v0, v2, [Ljava/lang/Object;

    .line 61
    invoke-interface {p3, v1, p6, v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    .line 62
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isCdmaVoiceNetwork(Landroid/telephony/ServiceState;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 66
    :cond_3
    invoke-direct {p0, p6, p1}, Lcom/android/systemui/statusbar/utils/RoamingResource;->isNationalRoaming(ILandroid/telephony/ServiceState;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 69
    :cond_4
    iget-boolean p3, p2, Lcom/android/settingslib/SignalIcon$MobileState;->swRoaming:Z

    if-eqz p3, :cond_5

    .line 71
    sget p3, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_sw_roam:I

    goto :goto_2

    .line 73
    :cond_5
    sget p3, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_gsm:I

    goto :goto_2

    .line 63
    :cond_6
    :goto_0
    sget p3, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_cdma:I

    goto :goto_2

    :cond_7
    :goto_1
    move p3, v2

    .line 80
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_ROAMING_ICON_AT_PS_ONLY:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p6, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    .line 81
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->isPsOnlyReg(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    if-ne p4, v0, :cond_9

    .line 83
    iget-object p4, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mTelephonyServiceManager:Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/utils/TelephonyServiceManager;->getSprDisplayRoam(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 84
    sget p3, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_gsm:I

    goto :goto_3

    :cond_8
    move p3, v2

    .line 89
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p4, p6, v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 90
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_cdma:I

    if-ne p3, p1, :cond_a

    .line 91
    sget p3, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_sprint:I

    goto :goto_4

    .line 92
    :cond_a
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_cdma_flash_ani:I

    if-ne p3, p1, :cond_b

    .line 93
    sget p3, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_sprint_flash_ani:I

    goto :goto_4

    .line 94
    :cond_b
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_gsm:I

    if-ne p3, p1, :cond_c

    .line 95
    sget p3, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_sprint:I

    .line 99
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_CHINA_NATION:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p4, p6, v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 100
    iget-boolean p1, p2, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz p1, :cond_e

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p4, p6, v0}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    if-nez p3, :cond_d

    .line 102
    iget-boolean p1, p2, Lcom/android/settingslib/SignalIcon$MobileState;->showDisabledDataIcon:Z

    if-eqz p1, :cond_d

    .line 103
    invoke-direct {p0, p2, p6}, Lcom/android/systemui/statusbar/utils/RoamingResource;->getDataTypeIconAtRoamingIconArea(Lcom/android/settingslib/SignalIcon$MobileState;I)I

    move-result p1

    move p3, p1

    :cond_d
    if-eqz p5, :cond_e

    .line 107
    sget p3, Lcom/android/systemui/R$drawable;->stat_sys_data_type_at_signal_area_limited:I

    .line 112
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/RoamingResource;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object p1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SHOULD_LIMIT_ICON_AT_CTC_SLAVE_SLOT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    new-array p4, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, p6, p4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 113
    iget-boolean p0, p2, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-eqz p0, :cond_f

    .line 114
    iget-boolean p0, p2, Lcom/android/settingslib/SignalIcon$MobileState;->isLimitedStateForCTCSlaveVoLTE:Z

    if-eqz p0, :cond_f

    .line 115
    sget p3, Lcom/android/systemui/R$drawable;->stat_sys_signal_roam_limited:I

    :cond_f
    return p3
.end method
