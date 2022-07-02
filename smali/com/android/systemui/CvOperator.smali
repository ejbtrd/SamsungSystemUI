.class public Lcom/android/systemui/CvOperator;
.super Ljava/lang/Object;
.source "CvOperator.java"


# static fields
.field private static final QUICK_IS_ACG_BRANDING:Z

.field private static final QUICK_IS_AIO_BRANDING:Z

.field private static final QUICK_IS_ATT_BRANDING:Z

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

.field private static final QUICK_IS_TMB_BRANDING:Z

.field private static final QUICK_IS_USC_BRANDING:Z

.field private static final QUICK_IS_VMU_BRANDING:Z

.field private static final QUICK_IS_VZW_BRANDING:Z

.field private static final QUICK_IS_XAA_BRANDING:Z

.field private static final QUICK_IS_XAR_BRANDING:Z

.field private static final QUICK_IS_XAS_BRANDING:Z

.field private static final QUICK_IS_XJP_BRANDING:Z

.field private static final sIconBranding:Ljava/lang/String;

.field private static final sProductName:Ljava/lang/String;

.field private static final sQsTileBranding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.product.name"

    const-string v1, ""

    .line 34
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/CvOperator;->sProductName:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/CvOperator;->sIconBranding:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_SystemUI_ConfigQuickSettingPopup"

    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/CvOperator;->sQsTileBranding:Ljava/lang/String;

    const-string v1, "VZW"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_VZW_BRANDING:Z

    const-string v1, "ATT"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_ATT_BRANDING:Z

    const-string v1, "AIO"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_AIO_BRANDING:Z

    const-string v1, "TMB"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_TMB_BRANDING:Z

    const-string v1, "MTR"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_MTR_BRANDING:Z

    const-string v1, "SPR"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_SPR_BRANDING:Z

    const-string v1, "VMU"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_VMU_BRANDING:Z

    const-string v1, "BST"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_BST_BRANDING:Z

    const-string v1, "XAS"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_XAS_BRANDING:Z

    const-string v1, "USC"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_USC_BRANDING:Z

    const-string v1, "LRA"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_LRA_BRANDING:Z

    const-string v1, "TFN"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_TFN_BRANDING:Z

    const-string v1, "CCT"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_CCT_BRANDING:Z

    const-string v1, "CHA"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_CHA_BRANDING:Z

    const-string v1, "ACG"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_ACG_BRANDING:Z

    const-string v1, "CSP"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_CSP_BRANDING:Z

    const-string v1, "XAR"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_XAR_BRANDING:Z

    const-string v1, "XAA"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_XAA_BRANDING:Z

    const-string v1, "OJT"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_OJT_BRANDING:Z

    const-string v1, "PAP"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_LDU_BRANDING:Z

    const-string v1, "CHM"

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_CHM_BRANDING:Z

    const-string v1, "CTC"

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_CTC_BRANDING:Z

    const-string v1, "CHC"

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_CHC_BRANDING:Z

    const-string v1, "CHU"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_CHU_BRANDING:Z

    const-string v1, "SKT"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_SKT_BRANDING:Z

    const-string v1, "KTT"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_KTT_BRANDING:Z

    const-string v1, "LGT"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_LGT_BRANDING:Z

    const-string v1, "KOO"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_KOO_BRANDING:Z

    const-string v1, "DCM"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_DCM_BRANDING:Z

    const-string v1, "KDI"

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_KDI_BRANDING:Z

    const-string v1, "SBM"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_SBM_BRANDING:Z

    const-string v1, "XJP"

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/CvOperator;->QUICK_IS_XJP_BRANDING:Z

    const-string v1, "RKT"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_RKT_BRANDING:Z

    return-void
.end method

.method public static getHotspotStringID(I)I
    .locals 1

    .line 147
    sget v0, Lcom/android/systemui/R$string;->quick_settings_mobile_hotspot_label:I

    if-ne p0, v0, :cond_0

    .line 148
    invoke-static {}, Lcom/android/systemui/CvOperator;->isJapenQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p0, Lcom/android/systemui/R$string;->quick_settings_mobile_hotspot_label_jpn:I

    goto/16 :goto_0

    .line 149
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_detail_title:I

    if-ne p0, v0, :cond_1

    .line 150
    invoke-static {}, Lcom/android/systemui/CvOperator;->isJapenQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p0, Lcom/android/systemui/R$string;->mobile_hotspot_detail_title_jpn:I

    goto/16 :goto_0

    .line 151
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifi_off:I

    if-ne p0, v0, :cond_3

    .line 152
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifi_off_tmo:I

    goto/16 :goto_0

    .line 153
    :cond_2
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifi_off_vzw:I

    goto/16 :goto_0

    .line 154
    :cond_3
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off:I

    if-ne p0, v0, :cond_a

    .line 155
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_4

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_vzw:I

    goto/16 :goto_0

    .line 156
    :cond_4
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsSprBranding()Z

    move-result v0

    if-eqz v0, :cond_5

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_spr:I

    goto/16 :goto_0

    .line 157
    :cond_5
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_6

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_tmo:I

    goto/16 :goto_0

    .line 158
    :cond_6
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsAttBranding()Z

    move-result v0

    if-eqz v0, :cond_7

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_att:I

    goto/16 :goto_0

    .line 159
    :cond_7
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsMtrBranding()Z

    move-result v0

    if-eqz v0, :cond_8

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_mtr:I

    goto/16 :goto_0

    .line 160
    :cond_8
    invoke-static {}, Lcom/android/systemui/CvOperator;->isChinaQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_9

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_chn:I

    goto/16 :goto_0

    .line 161
    :cond_9
    invoke-static {}, Lcom/android/systemui/CvOperator;->isJapenQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_jpn:I

    goto/16 :goto_0

    .line 162
    :cond_a
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_smartview_off:I

    if-ne p0, v0, :cond_b

    goto/16 :goto_0

    .line 164
    :cond_b
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off:I

    if-ne p0, v0, :cond_10

    .line 165
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_c

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_vzw:I

    goto/16 :goto_0

    .line 166
    :cond_c
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_d

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_tmo:I

    goto/16 :goto_0

    .line 167
    :cond_d
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsSprBranding()Z

    move-result v0

    if-eqz v0, :cond_e

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_spr:I

    goto/16 :goto_0

    .line 168
    :cond_e
    invoke-static {}, Lcom/android/systemui/CvOperator;->isChinaQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_f

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_chn:I

    goto/16 :goto_0

    .line 169
    :cond_f
    invoke-static {}, Lcom/android/systemui/CvOperator;->isJapenQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_jpn:I

    goto/16 :goto_0

    .line 170
    :cond_10
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifidirect_off:I

    if-ne p0, v0, :cond_13

    .line 171
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 172
    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifidirect_off_vzw:I

    goto :goto_0

    .line 173
    :cond_11
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 174
    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifidirect_off_tmo:I

    goto :goto_0

    .line 175
    :cond_12
    invoke-static {}, Lcom/android/systemui/CvOperator;->isJapenQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifidirect_off_jpn:I

    goto :goto_0

    .line 176
    :cond_13
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off:I

    if-ne p0, v0, :cond_17

    .line 177
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_14

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off_vzw:I

    goto :goto_0

    .line 178
    :cond_14
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsSprBranding()Z

    move-result v0

    if-eqz v0, :cond_15

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off_spr:I

    goto :goto_0

    .line 179
    :cond_15
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsTmbBranding()Z

    move-result v0

    if-eqz v0, :cond_16

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off_tmo:I

    goto :goto_0

    .line 180
    :cond_16
    invoke-static {}, Lcom/android/systemui/CvOperator;->isJapenQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off_jpn:I

    goto :goto_0

    .line 181
    :cond_17
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_title:I

    if-ne p0, v0, :cond_18

    .line 182
    invoke-static {}, Lcom/android/systemui/CvOperator;->isJapenQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_title_jpn:I

    goto :goto_0

    .line 183
    :cond_18
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_message:I

    if-ne p0, v0, :cond_1a

    .line 184
    invoke-static {}, Lcom/android/systemui/CvOperator;->isJapenQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 185
    sget p0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_message_jpn:I

    goto :goto_0

    .line 186
    :cond_19
    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsCtcBranding()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 187
    sget p0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nousim_or_nosim_warning:I

    :cond_1a
    :goto_0
    return p0
.end method

.method public static getHotspotTileIcon()I
    .locals 1

    .line 137
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_VZW_BRANDING:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$drawable;->quick_panel_icon_vzw_mobilehotspot:I

    goto :goto_0

    .line 138
    :cond_0
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_SPR_BRANDING:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$drawable;->quick_panel_icon_spr_hotspot:I

    goto :goto_0

    .line 139
    :cond_1
    sget v0, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifihotspot:I

    :goto_0
    return v0
.end method

.method public static ignoreFirstPopup()Z
    .locals 1

    .line 132
    invoke-static {}, Lcom/android/systemui/CvOperator;->isUSAQsTileBranding()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/CvOperator;->isQuickIsSbmBranding()Z

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

.method private static isChinaQsTileBranding()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_CHM_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_CTC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_CHC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_CHU_BRANDING:Z

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

    .line 127
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_DCM_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_KDI_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_SBM_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_XJP_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_RKT_BRANDING:Z

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

    .line 112
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_SKT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_KTT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_LGT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_KOO_BRANDING:Z

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

.method public static isNoSimDialogNeeded()Z
    .locals 1

    .line 134
    invoke-static {}, Lcom/android/systemui/CvOperator;->isKoreaQsTileBranding()Z

    move-result v0

    return v0
.end method

.method private static isQuickIsAttBranding()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_ATT_BRANDING:Z

    return v0
.end method

.method private static isQuickIsCtcBranding()Z
    .locals 1

    .line 98
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_CTC_BRANDING:Z

    return v0
.end method

.method private static isQuickIsMtrBranding()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_MTR_BRANDING:Z

    return v0
.end method

.method private static isQuickIsSbmBranding()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_SBM_BRANDING:Z

    return v0
.end method

.method private static isQuickIsSprBranding()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_SPR_BRANDING:Z

    return v0
.end method

.method private static isQuickIsTmbBranding()Z
    .locals 1

    .line 69
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_TMB_BRANDING:Z

    return v0
.end method

.method private static isUSAQsTileBranding()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_VZW_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_ATT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_AIO_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_TMB_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_MTR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_SPR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_VMU_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_BST_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_XAS_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_USC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_LRA_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_TFN_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_CCT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_CHA_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_ACG_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_CSP_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_XAR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/CvOperator;->QUICK_IS_XAA_BRANDING:Z

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
