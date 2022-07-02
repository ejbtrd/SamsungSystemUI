.class public Lcom/android/systemui/statusbar/utils/operator/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field public static final SALES_CODE:Ljava/lang/String;

.field public static final VZW_PCO_FEATURE:Ljava/lang/String;

.field public static final sAdditionalSystemIcon:Ljava/lang/String;

.field private static final sIconBranding:Ljava/lang/String;

.field private static final singleSKU:Z

.field private static final unified:Z


# instance fields
.field private overrideIconBranding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 21
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->SALES_CODE:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->sIconBranding:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigDefIndicatorAdditionalSystemIcon"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->sAdditionalSystemIcon:Ljava/lang/String;

    const-string/jumbo v0, "mdc.singlesku"

    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->singleSKU:Z

    const-string/jumbo v0, "mdc.unified"

    .line 28
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->unified:Z

    .line 113
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigPco"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->VZW_PCO_FEATURE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->overrideIconBranding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountryISOString()Ljava/lang/String;
    .locals 2

    .line 36
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CountryISO"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconBranding(I)Ljava/lang/String;
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->overrideIconBranding:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->overrideIconBranding:Ljava/lang/String;

    return-object p0

    .line 48
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->sIconBranding:Ljava/lang/String;

    return-object p0
.end method

.method public getIconBrandingFromCarrierFeature(I)Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v0, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconBrandingFromCscFeature()Ljava/lang/String;
    .locals 0

    .line 60
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->sIconBranding:Ljava/lang/String;

    return-object p0
.end method

.method public getOverrideIconBranding()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->overrideIconBranding:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemIconList(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 72
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v1, 0x0

    const-string v3, "CarrierFeature_SystemUI_ConfigDefIndicatorAdditionalSystemIcon"

    const-string v4, ""

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 77
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->sAdditionalSystemIcon:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public isChinaNation(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "CHC"

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CHM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CHU"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CTC"

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

.method public isKoreaNation(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "SKT"

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "KTT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "LGT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "KOO"

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

.method public isSlotIdAvailable(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p0, 0x2

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUS()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->getCountryISOString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUSASprintOperatorGroup(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "SPR"

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "VMU"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "BST"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "XAS"

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

.method public isUSATMobile(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "TMB"

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUSAVerizon(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "VZW"

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isVerizonBrandedTablet()Z
    .locals 1

    .line 121
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->VZW_PCO_FEATURE:Ljava/lang/String;

    const-string v0, "VZW_TABLET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setOverrideIconBranding(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->overrideIconBranding:Ljava/lang/String;

    return-void
.end method

.method public supportTSS20()Z
    .locals 0

    .line 126
    sget-boolean p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->singleSKU:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->unified:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportsBackgroundDataRestrictionByPco()Z
    .locals 1

    .line 117
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->VZW_PCO_FEATURE:Ljava/lang/String;

    const-string v0, "COMMON"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
