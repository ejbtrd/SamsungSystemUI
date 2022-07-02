.class public Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;
.super Ljava/lang/Object;
.source "CarrierInformationNetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;
    }
.end annotation


# instance fields
.field public mCachedCarrierLogoVisibility:Z

.field private mCachedCarrierPlmnText:Ljava/lang/String;

.field private final mCallbackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

.field private mSettingsListener:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;


# direct methods
.method public static synthetic $r8$lambda$5iTPBZWpa_oPx8ZDbmhrZ2x20hw(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->lambda$updateCarrierLogoVisibilities$0(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$C_unp2BEVGmJupaIj53jzw_7vho(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->lambda$updateCarrierPlmnText$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;-><init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mSettingsListener:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->init(Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;)Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    return-object p0
.end method

.method private handleUpdateCarrierLogoVisibilities(ZZ)V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->getOperatorInfraMediator()Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_SIM_AND_OPERATOR_MATCHED:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, -0x1

    .line 92
    invoke-interface {v0, v1, v4, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez p2, :cond_1

    .line 94
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    if-ne v1, v2, :cond_1

    return-void

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCarrierLogoVisibilities(logoVisible:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", forceUpdate:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") isSIMandOperatorMatched:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", disabledByQuickStar:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 98
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isHomeCarrierDisabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hiddenBySettings:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->isNetworkInformationHiddenBySetting()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", networkVisible("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ">>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarrierInformationNetworkHelper"

    .line 95
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    .line 102
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 106
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 108
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz p2, :cond_2

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->updateCarrierInformationVisibility(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleUpdateCarrierPlmnText(Ljava/lang/String;)V
    .locals 2

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierPlmnText:Ljava/lang/String;

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierPlmnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->updateCarrierPlmnText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateCarrierLogoVisibilities$0(ZZ)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->handleUpdateCarrierLogoVisibilities(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateCarrierPlmnText$1(Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->handleUpdateCarrierPlmnText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isNetworkInformationHiddenBySetting()Z
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mSettingsListener:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->isNetworkInformationHiddenBySetting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerInflaterCallback(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getInfoTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->updateCarrierInformationVisibility(Z)V

    return-void
.end method

.method public removeInflaterCallback(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getInfoTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getInfoTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getInfoTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public requestUpdateCarrierInformationToNetwork()V
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierLogoVisibilities()V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierPlmnText()V

    return-void
.end method

.method public updateCarrierLogoVisibilities()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierLogoVisibility:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierLogoVisibilities(ZZ)V

    return-void
.end method

.method public updateCarrierLogoVisibilities(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierLogoVisibilities(ZZ)V

    return-void
.end method

.method public updateCarrierLogoVisibilities(ZZ)V
    .locals 2

    .line 87
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCarrierPlmnText()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mCachedCarrierPlmnText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierPlmnText(Ljava/lang/String;)V

    return-void
.end method

.method public updateCarrierPlmnText(Ljava/lang/String;)V
    .locals 2

    .line 121
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCarrierSettingListener()V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->mSettingsListener:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->registerListenerIfNecessary()V

    return-void
.end method
