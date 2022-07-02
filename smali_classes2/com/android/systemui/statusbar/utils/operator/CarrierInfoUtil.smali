.class public Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;
.super Ljava/lang/Object;
.source "CarrierInfoUtil.java"


# static fields
.field private static sPrimarySimSlotId:I


# instance fields
.field private final mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

.field private final mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getPrimarySimSlot()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->sPrimarySimSlotId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    return-void
.end method

.method private getConfigRuleForShowPlmn()Ljava/lang/String;
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 191
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    sget v0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->sPrimarySimSlotId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 192
    sget p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->sPrimarySimSlotId:I

    goto :goto_0

    :cond_0
    move p0, v2

    .line 194
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v3, "CarrierFeature_SystemUI_ConfigRuleForShowPlmn"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 199
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_SystemUI_ConfigRuleForShowPlmn"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNoSimNotiText(Ljava/lang/String;)I
    .locals 0

    const-string p0, "VZW"

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 231
    sget p0, Lcom/android/systemui/R$string;->no_sim_notification_text_vzw:I

    return p0

    :cond_0
    const-string p0, "TMB"

    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 233
    sget p0, Lcom/android/systemui/R$string;->no_sim_notification_text:I

    return p0

    :cond_1
    const-string p0, "CCT"

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 235
    sget p0, Lcom/android/systemui/R$string;->no_sim_notification_text_cct:I

    return p0

    .line 237
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->no_sim_notification_text:I

    return p0
.end method

.method private getNoSimNotiTitle(Ljava/lang/String;)I
    .locals 0

    const-string p0, "VZW"

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 218
    sget p0, Lcom/android/systemui/R$string;->no_sim_notification_title_vzw:I

    return p0

    :cond_0
    const-string p0, "TMB"

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 220
    sget p0, Lcom/android/systemui/R$string;->no_sim_notification_title_tmo:I

    return p0

    :cond_1
    const-string p0, "CCT"

    .line 221
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 222
    sget p0, Lcom/android/systemui/R$string;->no_sim_notification_title_cct:I

    return p0

    .line 224
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->no_sim_notification_title:I

    return p0
.end method

.method private getOperatorMccMncForCarrierLogo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "SKT"

    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "45005"

    return-object p0

    :cond_0
    const-string p0, "KTT"

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "45008"

    return-object p0

    :cond_1
    const-string p0, "LGT"

    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "45006"

    return-object p0

    :cond_2
    const-string p0, "OPEN"

    return-object p0
.end method

.method private isKTTLogo(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "KTT"

    .line 319
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isLGTLogo(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "LGT"

    .line 323
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isORANGELogo(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ORANGE"

    .line 307
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSINGTELLogo(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "SIN"

    .line 311
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSKTLogo(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "SKT"

    .line 315
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCarrierInfoLogo()Ljava/lang/String;
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    sget v0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->sPrimarySimSlotId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 145
    sget p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->sPrimarySimSlotId:I

    goto :goto_0

    :cond_0
    move p0, v2

    .line 147
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v3, "CarrierFeature_SystemUI_ConfigPolicyDisplayOpLogo"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_SystemUI_ConfigPolicyDisplayOpLogo"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoSimNotiBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 6

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 243
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getNoSimNotiText(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->NO_SIM:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 246
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 247
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getNoSimNotiTitle(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 248
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$drawable;->stat_notify_no_sim:I

    .line 249
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    .line 250
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 251
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getNoSimNotiTitle(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 252
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string v0, "VZW"

    .line 254
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 255
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.setupwizard.NO_SIM_POPUP"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "SIM_TYPE"

    const-string v1, "NO_SIM"

    .line 256
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {p1, v3, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 259
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    const-string v0, "CCT"

    .line 260
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 261
    new-instance p2, Landroid/content/Intent;

    sget v0, Lcom/android/systemui/R$string;->url_activation_needed_cct:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {p2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 262
    invoke-static {p1, v3, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 264
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p2, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 265
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getPrimarySimSlotId()I
    .locals 0

    .line 137
    sget p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->sPrimarySimSlotId:I

    return p0
.end method

.method public getResourceIdOfHomescreenCarrierLogo(Ljava/lang/String;)I
    .locals 1

    .line 286
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isORANGELogo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_org:I

    return p0

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isSINGTELLogo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_singtel:I

    return p0

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isSKTLogo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_skt:I

    return p0

    .line 292
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isKTTLogo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_kt:I

    return p0

    .line 294
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isLGTLogo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 295
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_lgu:I

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public getResourceIdOfLockscreenCarrierLogo(Ljava/lang/String;)I
    .locals 1

    .line 271
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isORANGELogo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_org:I

    return p0

    .line 273
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isSINGTELLogo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_singtel:I

    return p0

    .line 275
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isSKTLogo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_sktelcom:I

    return p0

    .line 277
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isKTTLogo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_kt:I

    return p0

    .line 279
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->isLGTLogo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 280
    sget p0, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_lgu:I

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public isMultiLinePanelCarrierLabelView(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ZVV"

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSIMandOperatorMatched(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORANGE"

    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "isSIMandOperatorMatched() simNumeric:"

    const/4 v4, 0x1

    const-string v5, "CarrierInfoUtil"

    const/4 v6, 0x3

    if-eqz v2, :cond_4

    const-string p0, "gsm.sim.operator.alpha"

    const-string/jumbo p1, "unknown"

    .line 63
    invoke-static {p0, v0, p1}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", spn:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "20801"

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "20802"

    const-string v9, "Orange F"

    if-nez v7, :cond_0

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSIMandOperatorMatched SIM is matched for Orange - plmnNumeric = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 75
    :goto_0
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 76
    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {p0, v4, p1}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 79
    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSIMandOperatorMatched SIM2 is matched for Orange - plmnNumeric = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1

    :cond_4
    const-string v2, "SIN"

    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string p0, "52501"

    .line 91
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "52502"

    if-nez p1, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 92
    :cond_5
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",  SIM is matched for singtel - plmnNumeric = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 95
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_6
    move p1, v0

    .line 101
    :goto_1
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    .line 102
    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 104
    :cond_7
    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object p0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", SIM2 is matched for singtel - plmnNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 107
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :cond_8
    return p1

    :cond_9
    if-eqz v1, :cond_a

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getOperatorMccMncForCarrierLogo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", SIM is matched!!!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_a
    return v0
.end method

.method public isThereSettingMenuForCarrierInformationVisibility(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ORANGE"

    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public needToApplyConfigRuleForShowPlmn()Z
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->getConfigRuleForShowPlmn()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LcdOn_3sec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public needToDisplayWifiApNameAsPlmn(Landroid/content/Context;)Z
    .locals 0

    .line 161
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public needToShowEmptyPlmnIfNoActiveSim(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "CHU"

    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public refreshCarrierFeatures(I)V
    .locals 0

    .line 54
    sput p1, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->sPrimarySimSlotId:I

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "refreshCarrierFeatures sPrimarySimSlotId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->sPrimarySimSlotId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarrierInfoUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public support5GAccessText(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "KDI"

    .line 328
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public supportTwoPhone()Z
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/CarrierInfoUtil;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;->isTwoPhoneTestModeEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    .line 302
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

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
