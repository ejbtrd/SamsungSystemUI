.class Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;
.super Ljava/lang/Object;
.source "CarrierInformationNetworkHelper.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierSettingsListener"
.end annotation


# instance fields
.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsValueList:[Landroid/net/Uri;

.field private registered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;)V
    .locals 2

    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->this$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string/jumbo v0, "status_bar_show_network_information"

    .line 151
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;-><init>(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->registerListenerIfNecessary()V

    return-void
.end method

.method public isNetworkInformationHiddenBySetting()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->this$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    .line 182
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->access$100(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;)Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->isNetworkInformationHiddenBySetting(Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->this$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->requestUpdateCarrierInformationToNetwork()V

    return-void
.end method

.method public registerListenerIfNecessary()V
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerListenerIfNecessary, registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->registered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->this$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    .line 161
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->access$100(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;)Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportCarrierInfoSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierInformationNetworkHelper"

    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->registered:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->this$0:Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    .line 164
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->access$100(Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;)Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportCarrierInfoSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper$CarrierSettingsListener;->registered:Z

    const-string p0, "Registered carrier info setting listener"

    .line 168
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Already registered"

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
