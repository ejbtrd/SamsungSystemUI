.class public Lcom/android/systemui/qs/buttons/QSMoreButton;
.super Landroid/widget/FrameLayout;
.source "QSMoreButton.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field private mDismissReceiver:Landroid/content/BroadcastReceiver;

.field private mIsMenuShown:Z

.field private mIsQsLayoutBadgeShown:Z

.field private mMoreButton:Landroid/widget/ImageButton;

.field private mMoreButtonBadge:Landroid/widget/TextView;

.field private mMoreButtonContainer:Landroid/view/View;

.field private mMorePopupMenu:Landroid/widget/PopupMenu;

.field private mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mMorePopupMenuQsLayout:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mNewCustomTileCount:Ljava/lang/String;

.field private mOrientation:I

.field private mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

.field mQsAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

.field private mQsButtonBadgeText:Ljava/lang/String;

.field private mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public static synthetic $r8$lambda$imgZ-CqfcpVyu1kdJSxVeZK2EWU(Lcom/android/systemui/qs/buttons/QSMoreButton;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/buttons/QSMoreButton;->lambda$onCustomTileListChanged$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJQ3xXSSUJMhKLG1RjDYrR0hTis(Lcom/android/systemui/qs/buttons/QSMoreButton;Landroid/widget/PopupMenu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->lambda$showMorePopupMenu$0(Landroid/widget/PopupMenu;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "0"

    .line 72
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mNewCustomTileCount:Ljava/lang/String;

    const/4 p2, -0x1

    .line 77
    iput p2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mOrientation:I

    .line 83
    new-instance p2, Lcom/android/systemui/qs/buttons/QSMoreButton$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/buttons/QSMoreButton$1;-><init>(Lcom/android/systemui/qs/buttons/QSMoreButton;)V

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 93
    new-instance p2, Lcom/android/systemui/qs/buttons/QSMoreButton$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/buttons/QSMoreButton$2;-><init>(Lcom/android/systemui/qs/buttons/QSMoreButton;)V

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    .line 107
    const-class p2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 108
    const-class p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 109
    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/multisim/MultiSIMController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/buttons/QSMoreButton;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mIsMenuShown:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/buttons/QSMoreButton;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mIsMenuShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/buttons/QSMoreButton;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->dismissMorePopupMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/buttons/QSMoreButton;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->showMorePopupMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/buttons/QSMoreButton;)Landroid/widget/ImageButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/buttons/QSMoreButton;)Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/buttons/QSMoreButton;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mIsQsLayoutBadgeShown:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/buttons/QSMoreButton;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mIsQsLayoutBadgeShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/buttons/QSMoreButton;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/buttons/QSMoreButton;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->launchNotiSettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/buttons/QSMoreButton;Landroid/content/Context;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->launchContactUsApp(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/buttons/QSMoreButton;)Lcom/android/systemui/qs/QSButtonGridController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    return-object p0
.end method

.method private dismissMorePopupMenu()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    :cond_0
    return-void
.end method

.method private initQsLayoutDetailStatusLog()V
    .locals 9

    .line 390
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "quick_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 398
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string v4, "brightness_on_top"

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    const-string v5, "1"

    const-string v6, "0"

    if-eqz v2, :cond_3

    move-object v2, v5

    goto :goto_1

    :cond_3
    move-object v2, v6

    :goto_1
    const-string v7, "QPPS1023"

    .line 399
    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 401
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 402
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string v7, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {v2, v7, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    move-object v2, v5

    goto :goto_3

    :cond_5
    move-object v2, v6

    :goto_3
    const-string v7, "QPPS1024"

    .line 403
    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const/4 v7, -0x1

    const-string v8, "qspanel_media_quickcontrol_bar_available_on_top"

    invoke-virtual {v2, v8, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    if-eqz v2, :cond_7

    move-object v2, v5

    goto :goto_5

    :cond_7
    move-object v2, v6

    :goto_5
    const-string v7, "QPPS1026"

    .line 406
    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 410
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->isMultiSIMMenuAvailable()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 411
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "multi_sim_bar_show_on_qspanel"

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_9

    move v3, v4

    :cond_9
    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move-object v5, v6

    :goto_6
    const-string p0, "QPPS1025"

    .line 412
    invoke-interface {v1, p0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    :cond_b
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private isMultiSIMMenuAvailable()Z
    .locals 2

    .line 419
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BARCONTROLLER_MULTISIM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isMultiSimReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/tuner/TunerService;

    .line 421
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "multi_sim_bar_hide_by_knox_restrictions"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isNotSupportEdit()Z
    .locals 2

    .line 203
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    .line 204
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isHomeHubMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private isSupportContactUs(Landroid/content/Context;)Z
    .locals 3

    const-string p0, "com.samsung.android.voc"

    .line 341
    invoke-static {p1, p0}, Lcom/android/systemui/util/DeviceState;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 345
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 346
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 345
    invoke-virtual {p1, p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 347
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0xa220268

    if-ge p0, p1, :cond_0

    move v0, v1

    :cond_0
    move v1, v0

    :catch_0
    return v1

    :cond_1
    const-string p0, "QSMoreButton"

    const-string p1, "contact us not installed."

    .line 354
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private synthetic lambda$onCustomTileListChanged$1(Ljava/lang/String;I)V
    .locals 0

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/buttons/QSMoreButton;->updateCustomTileBadgeState(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$showMorePopupMenu$0(Landroid/widget/PopupMenu;)V
    .locals 0

    const/4 p1, 0x0

    .line 298
    iput-boolean p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mIsMenuShown:Z

    return-void
.end method

.method private launchContactUsApp(Landroid/content/Context;)Z
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "voc://view/contactUs"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "packageName"

    const-string v3, "com.android.systemui.quickpanel"

    .line 323
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appId"

    const-string v3, "3l25p17305"

    .line 324
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appName"

    .line 325
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "feedbackType"

    const-string v2, "ask"

    .line 326
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x1

    invoke-interface {p0, v1, p1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p0, "QSMoreButton"

    const-string p1, "Don\'t find samsung members packcage."

    .line 333
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private launchNotiSettings()V
    .locals 2

    .line 312
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.STATUS_BAR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private showMorePopupMenu()V
    .locals 4

    .line 208
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->Theme_SystemUI_LightWallpaper:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    .line 209
    sget v1, Lcom/android/systemui/R$menu;->sec_qspanel_more_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_edit:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->isNotSupportEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 217
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isQuickSettingEditEnabled()Z

    move-result v1

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mNewCustomTileCount:Ljava/lang/String;

    const-string v1, ", "

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsButtonBadgeText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->sec_more_button_menu_edit:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->sec_accessibility_qs_button_badge_text:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$id;->qspanel_layout:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenuQsLayout:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 231
    iget-boolean v2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mIsQsLayoutBadgeShown:Z

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsButtonBadgeText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->sec_more_button_menu_qspanel_layout:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_accessibility_qs_button_badge_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenuQsLayout:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->noti_settings:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->contact_us:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/buttons/QSMoreButton;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    if-eqz v0, :cond_4

    .line 248
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$id;->button_grid:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSButtonGridController;->updateMenuItemVisibility(Landroid/view/MenuItem;)V

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSMoreButton$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSMoreButton$4;-><init>(Lcom/android/systemui/qs/buttons/QSMoreButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setGravity(I)V

    .line 296
    iput-boolean v2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mIsMenuShown:Z

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/systemui/qs/buttons/QSMoreButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSMoreButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/buttons/QSMoreButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 300
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private updateCustomTileBadgeState(Ljava/lang/String;I)V
    .locals 0

    .line 368
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mNewCustomTileCount:Ljava/lang/String;

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->updateMoreButtonBadgeVisibility()V

    return-void
.end method

.method private updateResources()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->dismissMorePopupMenu()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->initQsLayoutDetailStatusLog()V

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->updateResources()V

    .line 145
    iget v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 146
    iput p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mOrientation:I

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->updateMoreButtonBadgeVisibility()V

    :cond_0
    return-void
.end method

.method public onCustomTileListChanged(Ljava/lang/String;I)V
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCustomTileListChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSMoreButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v0, Lcom/android/systemui/qs/buttons/QSMoreButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/buttons/QSMoreButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/buttons/QSMoreButton;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 177
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "QSMoreButton"

    const-string/jumbo v1, "removeCustomTileListCallback"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCustomTileListCallback(Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 186
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 114
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 115
    sget v0, Lcom/android/systemui/R$id;->more_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButton:Landroid/widget/ImageButton;

    .line 116
    sget v0, Lcom/android/systemui/R$id;->more_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButtonContainer:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 119
    sget v0, Lcom/android/systemui/R$id;->more_button_badge:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButtonBadge:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_qs_button_badge_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsButtonBadgeText:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    const-string v1, "QsLayoutNewBadge"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mIsQsLayoutBadgeShown:Z

    .line 123
    new-instance v0, Lcom/android/systemui/qs/buttons/QSMoreButton$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSMoreButton$3;-><init>(Lcom/android/systemui/qs/buttons/QSMoreButton;)V

    .line 137
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->updateResources()V

    return-void
.end method

.method public setAnimattionStateProvider(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    return-void
.end method

.method public setQSButtonGridController(Lcom/android/systemui/qs/QSButtonGridController;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanelController;)V
    .locals 1

    .line 190
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "QSMoreButton"

    const-string v0, "addCustomTileListCallback"

    .line 192
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCustomTileListCallback(Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;)V

    :cond_0
    return-void
.end method

.method public updateMoreButtonBadgeVisibility()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButtonBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mNewCustomTileCount:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->isNotSupportEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mIsQsLayoutBadgeShown:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 375
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->sec_accessibility_quick_settings_more_option:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButtonBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButtonBadge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mQsButtonBadgeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->sec_accessibility_qs_button_badge_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButtonBadge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
