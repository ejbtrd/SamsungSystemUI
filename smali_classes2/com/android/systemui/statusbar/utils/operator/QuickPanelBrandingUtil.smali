.class public Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;
.super Ljava/lang/Object;
.source "QuickPanelBrandingUtil.java"


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

.field private static final QUICK_IS_XNX_BRANDING:Z

.field private static final sQsTileBranding:Ljava/lang/String;

.field private static final smartManagerPackageName:Ljava/lang/String;


# instance fields
.field public final QPANEL_CHN_SMART_MANAGER:Z

.field private final mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

.field private final sIsSupportESim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigQuickSettingPopup"

    const-string v2, ""

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->sQsTileBranding:Ljava/lang/String;

    const-string v1, "VZW"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_VZW_BRANDING:Z

    const-string v1, "ATT"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_ATT_BRANDING:Z

    const-string v1, "AIO"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_AIO_BRANDING:Z

    const-string v1, "TMB"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_TMB_BRANDING:Z

    const-string v1, "MTR"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_MTR_BRANDING:Z

    const-string v1, "SPR"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_SPR_BRANDING:Z

    const-string v1, "VMU"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_VMU_BRANDING:Z

    const-string v1, "BST"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_BST_BRANDING:Z

    const-string v1, "XAS"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_XAS_BRANDING:Z

    const-string v1, "USC"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_USC_BRANDING:Z

    const-string v1, "LRA"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_LRA_BRANDING:Z

    const-string v1, "TFN"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_TFN_BRANDING:Z

    const-string v1, "CCT"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_CCT_BRANDING:Z

    const-string v1, "CHA"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_CHA_BRANDING:Z

    const-string v1, "ACG"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_ACG_BRANDING:Z

    const-string v1, "CSP"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_CSP_BRANDING:Z

    const-string v1, "XAR"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_XAR_BRANDING:Z

    const-string v1, "XAA"

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_XAA_BRANDING:Z

    const-string v1, "XNX"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_XNX_BRANDING:Z

    const-string v1, "OJT"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_OJT_BRANDING:Z

    const-string v1, "PAP"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_LDU_BRANDING:Z

    const-string v1, "CHM"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_CHM_BRANDING:Z

    const-string v1, "CTC"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_CTC_BRANDING:Z

    const-string v1, "CHC"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_CHC_BRANDING:Z

    const-string v1, "CHU"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_CHU_BRANDING:Z

    const-string v1, "SKT"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_SKT_BRANDING:Z

    const-string v1, "KTT"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_KTT_BRANDING:Z

    const-string v1, "LGT"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_LGT_BRANDING:Z

    const-string v1, "KOO"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_KOO_BRANDING:Z

    const-string v1, "DCM"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_DCM_BRANDING:Z

    const-string v1, "KDI"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_KDI_BRANDING:Z

    const-string v1, "SBM"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_SBM_BRANDING:Z

    const-string v1, "XJP"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_XJP_BRANDING:Z

    const-string v1, "RKT"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QUICK_IS_RKT_BRANDING:Z

    .line 88
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.sm"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->smartManagerPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.sm"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sm_cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->QPANEL_CHN_SMART_MANAGER:Z

    .line 98
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->sIsSupportESim:Z

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/QuickPanelBrandingUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    return-void
.end method
