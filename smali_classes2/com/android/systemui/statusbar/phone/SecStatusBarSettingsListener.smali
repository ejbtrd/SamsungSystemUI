.class public Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;
.super Ljava/lang/Object;
.source "SecStatusBarSettingsListener.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field private mPhoneStatusBarPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private final mSettingsValueList:[Landroid/net/Uri;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "emergency_mode"

    .line 64
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "white_lockscreen_statusbar"

    .line 65
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    .line 66
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_freeform_menuitem"

    .line 67
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_sort_order"

    .line 68
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->mPhoneStatusBarPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 56
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "emergency_mode"

    .line 84
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->onEmergencyModeChanged()V

    .line 98
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->mPhoneStatusBarPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz p0, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePowerSaver()V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "white_lockscreen_statusbar"

    .line 102
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    if-nez v0, :cond_4

    .line 103
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "notification_sort_order"

    .line 109
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationSort()V

    goto :goto_1

    .line 105
    :cond_4
    :goto_0
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 106
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAllNotificationColor()V

    :cond_5
    :goto_1
    return-void
.end method
