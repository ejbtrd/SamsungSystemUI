.class public Lcom/android/systemui/qs/buttons/QSButtonViewController;
.super Lcom/android/systemui/util/ViewController;
.source "QSButtonViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;
.implements Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/buttons/QSButtonView;",
        ">;",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;",
        "Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;"
    }
.end annotation


# instance fields
.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

.field private mMultiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

.field private final mNotificationRankingManager:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

.field private mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

.field private final mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/buttons/QSButtonView;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/net/Uri;

    const-string v0, "emergency_mode"

    .line 48
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 49
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_MANAGE_POWER_PLANNING_DOWNLOADABLE:Z

    const-string v1, "enable_reserve_max_mode"

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsValueList:[Landroid/net/Uri;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 67
    iput-object p3, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mNotificationRankingManager:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    .line 68
    iput-object p4, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 70
    iput-object p6, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mMultiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    .line 72
    iput-object p7, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    .line 74
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/buttons/QSButtonView;

    sget p3, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/buttons/QSSettingsButton;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 75
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/buttons/QSButtonView;

    sget p3, Lcom/android/systemui/R$id;->more_button_container:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/buttons/QSMoreButton;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

    .line 77
    invoke-virtual {p1, p8}, Lcom/android/systemui/qs/buttons/QSMoreButton;->setAnimattionStateProvider(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V

    .line 80
    new-instance p1, Lcom/android/systemui/qs/buttons/QSButtonViewController$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/buttons/QSButtonViewController$1;-><init>(Lcom/android/systemui/qs/buttons/QSButtonViewController;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 94
    invoke-virtual {p5, p0}, Lcom/android/systemui/qs/PanelModeController;->addPanelModeChangeListener(Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/buttons/QSButtonViewController;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/buttons/QSButtonViewController;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getView()Lcom/android/systemui/qs/buttons/QSButtonView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonView;

    return-object p0
.end method

.method protected onInit()V
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mMultiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public onNotificationSumChanged(I)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsButton:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/buttons/QSSettingsButton;->updateSettingsBadgeCount(I)V

    :cond_0
    return-void
.end method

.method public onPanelModeChanged()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonView;->onPanelModeChanged()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mNotificationRankingManager:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->setNotificationSumCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mNotificationRankingManager:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->getNotificationSum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/buttons/QSButtonViewController;->onNotificationSumChanged(I)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->setQSButtonGridController(Lcom/android/systemui/qs/QSButtonGridController;)V

    .line 115
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSButtonGridController;->onViewAttached()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mNotificationRankingManager:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->removeNotificationSumCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$NotificationSumCallback;)V

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSButtonGridController;->onViewDetached()V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 136
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mMoreButton:Lcom/android/systemui/qs/buttons/QSMoreButton;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->setQSPanel(Lcom/android/systemui/qs/QSPanelController;)V

    return-void
.end method

.method public setListening(ZZ)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/buttons/QSButtonView;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/buttons/QSButtonView;->updateState(ZZ)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/buttons/QSButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/buttons/QSButtonView;->setListening(Z)V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/buttons/QSButtonView;->setExpanded(Z)V

    return-void
.end method
