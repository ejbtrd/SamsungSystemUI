.class public Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;
.super Ljava/lang/Object;
.source "SlimIndicatorViewMediatorImpl.java"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;
.implements Lcom/android/systemui/slimindicator/SlimIndicatorManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;
    }
.end annotation


# instance fields
.field private mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

.field private mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

.field private mIsAddedTunable:Z

.field private mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;

.field private mSubscriberList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$G7RpTAOmh8gtNiX_fplDG7lsZpI(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->lambda$postUpdateAll$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    .line 61
    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 62
    iput-object p3, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 63
    new-instance p2, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;-><init>(Landroid/content/Context;Lcom/android/systemui/slimindicator/SlimIndicatorManager;)V

    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    .line 64
    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-direct {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    .line 66
    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$SettingsListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->postUpdateAll(Ljava/lang/String;)V

    return-void
.end method

.method private getSubscriberTicketList()Ljava/lang/String;
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string/jumbo p0, "nothing"

    return-object p0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubList:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 280
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isPluginConnected()Z
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->isPluginConnected()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$postUpdateAll$0(Ljava/lang/String;)V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postUpdateAll() [newValue]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [SettingsHelper]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-virtual {v0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->updateAllData(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->notifyNewsToSubscribers()V

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->notifyNewsToOperatorLogo()V

    return-void
.end method

.method private notifyNewsToOperatorLogo()V
    .locals 1

    .line 224
    const-class p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierLogoVisibilities()V

    .line 225
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->updateCarrierPlmnText()V

    return-void
.end method

.method private notifyNewsToSubscribers()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;

    if-eqz v2, :cond_2

    .line 211
    invoke-interface {v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;->updateQuickStarStyle()V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private postUpdateAll(Ljava/lang/String;)V
    .locals 2

    .line 240
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const-string p0, "[QuickStar]SlimIndicatorViewMediator"

    const-string v0, "SlimIndicatorViewMediatorImpl is initialized ! I am ready to connect SPlugin."

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isBlocked(Ljava/lang/String;)Z
    .locals 2

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isPluginConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isHiddenBatteryIcon()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isPluginConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "battery_icon"

    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeCarrierDisabled()Z
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->isHomeCarrierDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->isNetworkInformationHiddenBySetting(Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftClockPosition()Z
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isPluginConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "left_clock_position"

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "middle_clock_position"

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "right_clock_position"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method public isLockCarrierDisabled()Z
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->isLockCarrierDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMiddleClockPosition()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isPluginConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "middle_clock_position"

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPanelCarrierDisabled()Z
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->isPanelCarrierDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightClockPosition()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isPluginConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "right_clock_position"

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyPluginConnected()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    if-nez v0, :cond_0

    .line 82
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->notifyNewsToSubscribers()V

    :cond_0
    return-void
.end method

.method public notifyPluginDisconnected()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    if-eqz v0, :cond_0

    .line 94
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->notifyNewsToSubscribers()V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "icon_blacklist"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->postUpdateAll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerSubscriber("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->getSubscriberTicketList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;->updateQuickStarStyle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAmPmClock()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isPluginConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "slimindicator_show_ampm"

    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public unregisterSubscriber(Ljava/lang/String;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterSubscriber("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") From "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->getSubscriberTicketList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
