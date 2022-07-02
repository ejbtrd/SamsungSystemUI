.class public Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;
.super Ljava/lang/Object;
.source "CardOperatorUpdateUtil.java"


# instance fields
.field private final SIM_PROPERTIES:[Ljava/lang/String;

.field private cardUpdateHistory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v1, "ro.csc.omcnw_code2"

    .line 24
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->SIM_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method private getSimOperator(I)Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;
    .locals 1

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->SIM_PROPERTIES:[Ljava/lang/String;

    aget-object p0, p0, p1

    const-string/jumbo p1, "unknown"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "USC"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1
    const-string p1, "TMK"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string p1, "TMB"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string p1, "SPR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string p1, "DSH"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string p1, "ATT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    const-string p1, "ASR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string p1, "AIO"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 135
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->OTHERS:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0

    .line 129
    :pswitch_0
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->USC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0

    .line 125
    :pswitch_1
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->TMK:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0

    .line 123
    :pswitch_2
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->TMB:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0

    .line 127
    :pswitch_3
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->SPR:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0

    .line 131
    :pswitch_4
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->DSH:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0

    .line 119
    :pswitch_5
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->ATT:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0

    .line 133
    :pswitch_6
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->ASR:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0

    .line 121
    :pswitch_7
    sget-object p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->AIO:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfd27 -> :sswitch_7
        0xfe60 -> :sswitch_6
        0xfe81 -> :sswitch_5
        0x10999 -> :sswitch_4
        0x14195 -> :sswitch_3
        0x144e9 -> :sswitch_2
        0x144f2 -> :sswitch_1
        0x14965 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private isATOCardUsingLTEIcon(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "23203"

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "23207"

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

.method private isAirtel(I)Z
    .locals 0

    .line 96
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "airtel"

    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCmccCard(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "46000"

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "46002"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "46007"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "45412"

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

.method private isCtcCard(I)Z
    .locals 2

    const-string p0, "gsm.sim.cdmaoperator.numeric"

    const-string v0, ""

    .line 75
    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "ril.simoperator"

    .line 76
    invoke-static {v1, p1, v0}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CTC"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CTCMO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "46003"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "46011"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "45502"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "45507"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "46012"

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

.method private isGID1Matched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRJIOSimInserted(I)Z
    .locals 3

    .line 38
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x3

    .line 40
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object p0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    const-string v1, "405"

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "840"

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "854"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "855"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "856"

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "857"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "858"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "859"

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "860"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "861"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "862"

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "863"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "864"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "865"

    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "866"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "867"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "868"

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "869"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "870"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "871"

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "872"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "873"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "874"

    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "87"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "780"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "78"

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    :cond_2
    const-string v1, "406"

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "977"

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "978"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "981"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "994"

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "999"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0
.end method

.method private isReliance(I)Z
    .locals 0

    .line 106
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "jio"

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVisibleCard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "311480"

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "BAE1000000000000"

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isGID1Matched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVzwCard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "311480"

    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "20404"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "311270"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "312770"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "310004"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "BAE0000000000000"

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isGID1Matched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SIM card update history: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->cardUpdateHistory:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCardOperatorInfo(ILjava/lang/String;Ljava/lang/String;)Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;
    .locals 5

    .line 140
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->OTHERS:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isCtcCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->CTC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isCmccCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->CMCC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isATOCardUsingLTEIcon(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->ATOLTE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    goto :goto_0

    .line 149
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isRJIOSimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->RELIANCE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    goto :goto_0

    .line 151
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isAirtel(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->AIRTEL:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    goto :goto_0

    .line 153
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isReliance(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->RELIANCE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    goto :goto_0

    .line 155
    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isVzwCard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 156
    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->VZW:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    goto :goto_0

    .line 157
    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->isVisibleCard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 158
    sget-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->VISIBLE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    goto :goto_0

    .line 160
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->getSimOperator(I)Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    move-result-object v1

    .line 163
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cardOperator="

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", slotId="

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", numeric="

    .line 166
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", GID1="

    .line 167
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", from="

    .line 168
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CardOperatorUpdateUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/CardOperatorUpdateUtil;->cardUpdateHistory:Ljava/lang/String;

    return-object v1
.end method
