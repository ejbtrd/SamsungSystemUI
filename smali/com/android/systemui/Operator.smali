.class public Lcom/android/systemui/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# static fields
.field private static final QUICK_IS_ACG_BRANDING:Z

.field private static final QUICK_IS_AIO_BRANDING:Z

.field private static final QUICK_IS_ATT_BRANDING:Z

.field private static final QUICK_IS_BRI_BRANDING:Z

.field private static final QUICK_IS_BST_BRANDING:Z

.field private static final QUICK_IS_CCT_BRANDING:Z

.field private static final QUICK_IS_CHA_BRANDING:Z

.field private static final QUICK_IS_CHC_BRANDING:Z

.field private static final QUICK_IS_CHM_BRANDING:Z

.field private static final QUICK_IS_CHU_BRANDING:Z

.field private static final QUICK_IS_CSP_BRANDING:Z

.field private static final QUICK_IS_CTC_BRANDING:Z

.field private static final QUICK_IS_DCM_BRANDING:Z

.field private static final QUICK_IS_KDI_BRANDING:Z

.field private static final QUICK_IS_KOO_BRANDING:Z

.field private static final QUICK_IS_KTT_BRANDING:Z

.field private static final QUICK_IS_LDU_BRANDING:Z

.field private static final QUICK_IS_LGT_BRANDING:Z

.field private static final QUICK_IS_LRA_BRANDING:Z

.field private static final QUICK_IS_MTR_BRANDING:Z

.field private static final QUICK_IS_OJT_BRANDING:Z

.field private static final QUICK_IS_RKT_BRANDING:Z

.field private static final QUICK_IS_SBM_BRANDING:Z

.field private static final QUICK_IS_SKT_BRANDING:Z

.field private static final QUICK_IS_SPR_BRANDING:Z

.field private static final QUICK_IS_TFN_BRANDING:Z

.field private static final QUICK_IS_TGY_BRANDING:Z

.field private static final QUICK_IS_TMB_BRANDING:Z

.field private static final QUICK_IS_USC_BRANDING:Z

.field private static final QUICK_IS_VMU_BRANDING:Z

.field private static final QUICK_IS_VZW_BRANDING:Z

.field private static final QUICK_IS_XAA_BRANDING:Z

.field private static final QUICK_IS_XAR_BRANDING:Z

.field private static final QUICK_IS_XAS_BRANDING:Z

.field private static final QUICK_IS_XJP_BRANDING:Z

.field private static final QUICK_IS_XNX_BRANDING:Z

.field public static final VZW_PCO_FEATURE:Ljava/lang/String;

.field private static final sIsSupportESim:Z

.field private static final sQsTileBranding:Ljava/lang/String;

.field private static final smartManagerPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigQuickSettingPopup"

    const-string v2, ""

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/Operator;->sQsTileBranding:Ljava/lang/String;

    const-string v1, "VZW"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    const-string v1, "ATT"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    const-string v1, "AIO"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_AIO_BRANDING:Z

    const-string v1, "TMB"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TMB_BRANDING:Z

    const-string v1, "MTR"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_MTR_BRANDING:Z

    const-string v1, "SPR"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SPR_BRANDING:Z

    const-string v1, "VMU"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_VMU_BRANDING:Z

    const-string v1, "BST"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_BST_BRANDING:Z

    const-string v1, "XAS"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XAS_BRANDING:Z

    const-string v1, "USC"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_USC_BRANDING:Z

    const-string v1, "LRA"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_LRA_BRANDING:Z

    const-string v1, "TFN"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TFN_BRANDING:Z

    const-string v1, "CCT"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CCT_BRANDING:Z

    const-string v1, "CHA"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHA_BRANDING:Z

    const-string v1, "ACG"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_ACG_BRANDING:Z

    const-string v1, "CSP"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CSP_BRANDING:Z

    const-string v1, "XAR"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XAR_BRANDING:Z

    const-string v1, "XAA"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XAA_BRANDING:Z

    const-string v1, "XNX"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XNX_BRANDING:Z

    const-string v1, "OJT"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_OJT_BRANDING:Z

    const-string v1, "PAP"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_LDU_BRANDING:Z

    const-string v1, "CHM"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHM_BRANDING:Z

    const-string v1, "CTC"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CTC_BRANDING:Z

    const-string v1, "CHC"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHC_BRANDING:Z

    const-string v1, "CHU"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHU_BRANDING:Z

    const-string v1, "BRI"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_BRI_BRANDING:Z

    const-string v1, "TGY"

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TGY_BRANDING:Z

    const-string v1, "SKT"

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    const-string v1, "KTT"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    const-string v1, "LGT"

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    const-string v1, "KOO"

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KOO_BRANDING:Z

    const-string v1, "DCM"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    const-string v1, "KDI"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KDI_BRANDING:Z

    const-string v1, "SBM"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SBM_BRANDING:Z

    const-string v1, "XJP"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XJP_BRANDING:Z

    const-string v1, "RKT"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_RKT_BRANDING:Z

    .line 117
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.sm"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/Operator;->smartManagerPackageName:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Operator;->sIsSupportESim:Z

    .line 199
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigPco"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/Operator;->VZW_PCO_FEATURE:Ljava/lang/String;

    return-void
.end method

.method private static getCountryISOString()Ljava/lang/String;
    .locals 3

    .line 177
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForDisabledSetDataRoaming(Z)Landroid/content/Intent;
    .locals 2

    .line 345
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ENABLED"

    .line 347
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMessageIdForMobileDataOnOffPopup(Z)I
    .locals 0

    if-eqz p0, :cond_3

    .line 310
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor_lgt:I

    goto :goto_0

    .line 311
    :cond_0
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMmsSupport()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 312
    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor_kt_mms_available:I

    goto :goto_0

    .line 313
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor_kt:I

    goto :goto_0

    .line 314
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor:I

    goto :goto_0

    .line 316
    :cond_3
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-eqz p0, :cond_4

    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_enable_kor_lgt:I

    goto :goto_0

    .line 317
    :cond_4
    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_enable_kor:I

    :goto_0
    return p0
.end method

.method public static getMessageIdMobileDataOff()I
    .locals 1

    .line 324
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataOffDontShowPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    if-eqz v0, :cond_0

    .line 326
    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_att:I

    goto :goto_0

    .line 328
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable:I

    goto :goto_0

    .line 331
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_dcm:I

    goto :goto_0

    .line 332
    :cond_2
    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_jpn:I

    :goto_0
    return v0
.end method

.method public static getMobileDataRoamingIntent()Landroid/content/Intent;
    .locals 3

    .line 338
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "root_key"

    const-string v2, "T_GLOBAL_ROAMING"

    .line 339
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 340
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getSummaryOfMobileData(Z)I
    .locals 2

    .line 354
    sget v0, Lcom/android/systemui/R$string;->quick_settings_mobile_data_detail_summary:I

    .line 355
    invoke-static {}, Lcom/android/systemui/Operator;->isUSAQsTileBranding()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 356
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    if-eqz p0, :cond_0

    .line 357
    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_att:I

    goto :goto_1

    .line 358
    :cond_0
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    if-eqz p0, :cond_1

    .line 359
    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_dcm:I

    goto :goto_1

    .line 361
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable:I

    goto :goto_1

    .line 363
    :cond_2
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p0, :cond_6

    .line 365
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-eqz p0, :cond_3

    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor_lgt:I

    :goto_0
    move v0, p0

    goto :goto_1

    .line 366
    :cond_3
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMmsSupport()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 367
    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor_kt_mms_available:I

    goto :goto_0

    .line 368
    :cond_4
    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor_kt:I

    goto :goto_0

    .line 369
    :cond_5
    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor:I

    goto :goto_0

    .line 371
    :cond_6
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-eqz p0, :cond_7

    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_enable_kor_lgt:I

    goto :goto_0

    .line 372
    :cond_7
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    if-eqz p0, :cond_8

    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_enable_kor_kt:I

    goto :goto_0

    .line 373
    :cond_8
    sget p0, Lcom/android/systemui/R$string;->mobile_data_show_popup_enable_kor:I

    goto :goto_0

    :cond_9
    :goto_1
    return v0
.end method

.method public static getTileListFromFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "mdc.singlesku"

    .line 126
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mdc.unified"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CarrierFeature_SystemUI_ConfigDefQuickSettingItem"

    invoke-virtual {v0, v1, v2, p0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isATTPopup()Z
    .locals 1

    .line 214
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    return v0
.end method

.method public static isAnotherSlotCtcCard(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const-string v2, "gsm.sim.cdmaoperator.numeric"

    const-string v3, ""

    .line 155
    invoke-static {v2, p0, v3}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ril.simoperator"

    .line 157
    invoke-static {v4, p0, v3}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "CTC"

    .line 158
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CTCMO"

    .line 159
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "46003"

    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "46011"

    .line 161
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "45502"

    .line 162
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "45507"

    .line 163
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "46012"

    .line 164
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const-string p0, "SystemUI-Operator"

    const-string v1, "isAnotherSlotCtcCard "

    .line 165
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCHNBranding()Z
    .locals 1

    .line 253
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHM_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CTC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHU_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCMSSPopup()Z
    .locals 1

    .line 218
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHM_BRANDING:Z

    return v0
.end method

.method private static isChinaQsTileBranding()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHM_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CTC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHU_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isJapenQsTileBranding()Z
    .locals 1

    .line 111
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KDI_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SBM_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XJP_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_RKT_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isKoreaQsTileBranding()Z
    .locals 1

    .line 100
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KOO_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLDUBranding()Z
    .locals 1

    .line 248
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LDU_BRANDING:Z

    return v0
.end method

.method public static isOJTPopup()Z
    .locals 1

    .line 234
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_OJT_BRANDING:Z

    return v0
.end method

.method public static isSKTPopup()Z
    .locals 1

    .line 210
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    return v0
.end method

.method public static isSPRPopup()Z
    .locals 1

    .line 226
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SPR_BRANDING:Z

    return v0
.end method

.method public static isSupport5GTile()Z
    .locals 1

    .line 140
    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/Operator;->isTaiwanHkQsTileBranding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportESim()Z
    .locals 1

    .line 173
    sget-boolean v0, Lcom/android/systemui/Operator;->sIsSupportESim:Z

    return v0
.end method

.method public static isSupportNearByShareAsDefaultTile()Z
    .locals 1

    .line 136
    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isTMBPopup()Z
    .locals 1

    .line 230
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TMB_BRANDING:Z

    return v0
.end method

.method private static isTaiwanHkQsTileBranding()Z
    .locals 1

    .line 91
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_BRI_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TGY_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isUSAPopup()Z
    .locals 1

    .line 222
    invoke-static {}, Lcom/android/systemui/Operator;->isUSAQsTileBranding()Z

    move-result v0

    return v0
.end method

.method private static isUSAQsTileBranding()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_AIO_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TMB_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_MTR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SPR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VMU_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_BST_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XAS_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_USC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LRA_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TFN_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CCT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHA_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ACG_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CSP_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XAR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XAA_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isUsedChinaSmartManager()Z
    .locals 2

    .line 121
    sget-object v0, Lcom/android/systemui/Operator;->smartManagerPackageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.sm_cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVZWPopup()Z
    .locals 1

    .line 238
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    return v0
.end method

.method public static isVerizonBrandedTablet()Z
    .locals 2

    .line 242
    sget-object v0, Lcom/android/systemui/Operator;->VZW_PCO_FEATURE:Ljava/lang/String;

    const-string v1, "VZW_TABLET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static needLocationPopup()Z
    .locals 1

    .line 206
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    return v0
.end method

.method public static needMobileDeviceWaringPopup()Z
    .locals 1

    .line 384
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KOO_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static shouldFirstSimLock()Z
    .locals 1

    .line 188
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XNX_BRANDING:Z

    return v0
.end method

.method public static shouldShowRoamingEnabledPopup()Z
    .locals 1

    .line 263
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KOO_BRANDING:Z

    return v0
.end method

.method public static shouldSupportDataRoamingInMobileData()Z
    .locals 1

    .line 272
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v0

    return v0
.end method

.method public static shouldSupportMobileDataNotDisableVolteCall()Z
    .locals 1

    .line 280
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    return v0
.end method

.method public static shouldSupportMobileDataOffDontShowPopup()Z
    .locals 1

    .line 296
    invoke-static {}, Lcom/android/systemui/Operator;->isUSAQsTileBranding()Z

    move-result v0

    return v0
.end method

.method public static shouldSupportMobileDataOffPopup()Z
    .locals 1

    .line 304
    invoke-static {}, Lcom/android/systemui/Operator;->isJapenQsTileBranding()Z

    move-result v0

    return v0
.end method

.method public static shouldSupportMobileDataOnOffPopup()Z
    .locals 1

    .line 288
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v0

    return v0
.end method

.method public static shouldUseShowAllSimsString()Z
    .locals 1

    .line 194
    invoke-static {}, Lcom/android/systemui/Operator;->isChinaQsTileBranding()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/Operator;->isTaiwanHkQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static supportNetworkInfoAtMultisimBar()Z
    .locals 2

    .line 183
    invoke-static {}, Lcom/android/systemui/Operator;->getCountryISOString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/Operator;->getCountryISOString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static supportsBackgroundDataRestrictionByPco()Z
    .locals 2

    .line 202
    sget-object v0, Lcom/android/systemui/Operator;->VZW_PCO_FEATURE:Ljava/lang/String;

    const-string v1, "COMMON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
