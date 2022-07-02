.class public Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;
.super Ljava/lang/Object;
.source "MobileDataUtil.java"


# static fields
.field private static final s5GIconConfig:Ljava/lang/String;

.field private static final sLteWideBandIconConfig:Ljava/lang/String;

.field protected static final sOverrideDataIcon:Ljava/lang/String;


# instance fields
.field private final mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOverrideDataIcon"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->sOverrideDataIcon:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOpBrandingLTEWideBandIcon"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->sLteWideBandIconConfig:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOpBranding5GIcon"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->s5GIconConfig:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    return-void
.end method


# virtual methods
.method public applyAMXAdvancedLteIconConcept(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "AMX"

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CDR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "PCT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "TCE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CHL"

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

.method public applyAdvancedLteIconConcept(Ljava/lang/String;)Z
    .locals 1

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->applyAMXAdvancedLteIconConcept(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->applyTEFAdvancedLteIconConcept(Ljava/lang/String;)Z

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

.method public applyTEFAdvancedLteIconConcept(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "TEF"

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ZVV"

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

.method public get5GIconConfig(I)Ljava/lang/String;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 115
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "CarrierFeature_SystemUI_ConfigOpBranding5GIcon"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->s5GIconConfig:Ljava/lang/String;

    return-object p0
.end method

.method public getLteWideBandIcon(I)Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 75
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "CarrierFeature_SystemUI_ConfigOpBrandingLTEWideBandIcon"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->sLteWideBandIconConfig:Ljava/lang/String;

    return-object p0
.end method

.method public getOverrideDataIcon(I)Ljava/lang/String;
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 55
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "CarrierFeature_SystemUI_ConfigOverrideDataIcon"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->sOverrideDataIcon:Ljava/lang/String;

    return-object p0
.end method

.method public shouldCheckWifiStateForDisabledDataIcon(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "TGY"

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "BRI"

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

.method public supportDisabledDataIcon(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "CHM"

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CHU"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "VZW"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ZVV"

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ZTM"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "TGY"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "BRI"

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CHC"

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

.method public supportHSDPADataIcon(Ljava/lang/String;)Z
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isKoreaNation(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "OYB"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "VID"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "OYA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportLteWideBandIcon(I)Z
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->getLteWideBandIcon(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NONE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public use4GInstead4GPlus()Z
    .locals 1

    .line 124
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->SALES_CODE:Ljava/lang/String;

    const-string v0, "DOR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PCT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public use4GPlusInsteadOf4G(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "DCM"

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public use4HalfGInsteadOf4GPlus(I)Z
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->getLteWideBandIcon(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4.5G"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public use5GPlusDataIcon(I)Z
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->get5GIconConfig(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DoNotUse5GPlusIcon"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public useLteInsteadOf4G(I)Z
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->getOverrideDataIcon(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LTE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public useOneShaped5GDataIcon(I)Z
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/MobileDataUtil;->get5GIconConfig(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UseOneShapedIcon"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
