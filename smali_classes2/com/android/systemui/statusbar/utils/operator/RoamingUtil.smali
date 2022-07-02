.class public Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;
.super Ljava/lang/Object;
.source "RoamingUtil.java"


# static fields
.field private static final sFemtoCellIconConfig:Z

.field private static final sRoamingIconType:Ljava/lang/String;


# instance fields
.field private final mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_SupportFemToCellIcon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->sFemtoCellIconConfig:Z

    .line 20
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigRoamingIconType"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->sRoamingIconType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    return-void
.end method


# virtual methods
.method public needToApplyFemtoCellIcon(I)Z
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 32
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v0, "CarrierFeature_SystemUI_SupportFemToCellIcon"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    return p0

    .line 35
    :cond_0
    sget-boolean p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->sFemtoCellIconConfig:Z

    return p0
.end method

.method public supportRoamingAtPSOnly(Ljava/lang/String;)Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isUSASprintOperatorGroup(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public supportRoamingIcon(Ljava/lang/String;I)Z
    .locals 3

    .line 40
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->sRoamingIconType:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->supportTSS20()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->mCommonUtil:Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;->isSlotIdAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 42
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v0, "CarrierFeature_SystemUI_ConfigRoamingIconType"

    const-string v1, ""

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p0, "NONE"

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "USC"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public supportRoamingIconAtGSMNetwork(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ATT"

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AIO"

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TMB"

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TMK"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ASR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "MTR"

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TMB_OPEN"

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TMK_OPEN"

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

.method public useOnlyCDMARoamingIcon()Z
    .locals 1

    .line 72
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->sRoamingIconType:Ljava/lang/String;

    const-string v0, "CDMA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public useOnlyGSMRoamingIcon()Z
    .locals 1

    .line 67
    sget-object p0, Lcom/android/systemui/statusbar/utils/operator/RoamingUtil;->sRoamingIconType:Ljava/lang/String;

    const-string v0, "GSM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
