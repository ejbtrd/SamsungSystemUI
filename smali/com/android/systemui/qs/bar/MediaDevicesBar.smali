.class public Lcom/android/systemui/qs/bar/MediaDevicesBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "MediaDevicesBar.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field private static final EMERGENCY_MODE_URI:Landroid/net/Uri;


# instance fields
.field mBarBottomMargin:I

.field mBarTopMargin:I

.field private mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

.field private mDevicesContainer:Landroid/widget/LinearLayout;

.field private mDevicesIcon:Landroid/widget/ImageView;

.field private mDevicesTitleText:Landroid/widget/TextView;

.field private mIsAllowedOnPanel:Z

.field private mIsAllowedOnTop:Z

.field private mMediaContainer:Landroid/widget/LinearLayout;

.field private mMediaIcon:Landroid/widget/ImageView;

.field private mMediaTitleText:Landroid/widget/TextView;

.field mOldOrientation:I

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method public static synthetic $r8$lambda$6QMXqJi0S_bxmf7wMi-fHUj5dUY(Lcom/android/systemui/qs/bar/MediaDevicesBar;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->lambda$startActivity$3(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6ly8_9XcizSPDz9bQwvXHyO5uUs(Lcom/android/systemui/qs/bar/MediaDevicesBar;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->lambda$startActivity$2(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IotehZyA_ur8KRhpM3hzrVl45nQ(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$nHkgJLigf6yFP4ammjLEOKqmQO0(Lcom/android/systemui/qs/bar/MediaDevicesBar;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emergency_mode"

    .line 93
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/controls/controller/CustomDeviceControlsController;)V
    .locals 4

    .line 102
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOldOrientation:I

    const/4 v1, 0x0

    .line 85
    iput v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBarTopMargin:I

    .line 86
    iput v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBarBottomMargin:I

    .line 94
    new-instance v2, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 105
    iput-object p3, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    const/4 p1, 0x1

    new-array p3, p1, [Landroid/net/Uri;

    .line 106
    sget-object v3, Lcom/android/systemui/qs/bar/MediaDevicesBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    aput-object v3, p3, v1

    invoke-virtual {p2, v2, p3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 107
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    const-string p3, "qspanel_media_quickcontrol_bar_available"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 108
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "qspanel_media_quickcontrol_bar_available_on_top"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnPanel:Z

    .line 110
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p2, v2, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_1

    move v1, p1

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    .line 123
    new-instance p1, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    .line 140
    const-class p2, Lcom/android/systemui/qp/QSBackupRestoreManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qp/QSBackupRestoreManager;

    const-string p3, "MediaDevices"

    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/qp/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qp/QSBackupRestoreManager$Callback;)V

    .line 143
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    new-instance p2, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/controls/controller/CustomDeviceControlsController;->setCallback(Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/bar/MediaDevicesBar;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->startActivity(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/bar/MediaDevicesBar;)Lcom/android/systemui/controls/controller/CustomDeviceControlsController;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    return-object p0
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mCustomDeviceControlsController:Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    invoke-interface {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsController;->removeCallback()V

    return-void
.end method

.method private synthetic lambda$startActivity$2(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x10000000

    .line 243
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$startActivity$3(Landroid/content/Intent;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;Landroid/content/Intent;)V

    const-wide/16 p0, 0x170

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startActivity(I)V
    .locals 5

    .line 224
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_STYLE_MEDIA_PLAYER_MEDIA_OUTPUT_POPUP:Z

    const-string v3, "com.samsung.android.mdx.quickboard"

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendBroadcast() : QUICK_STYLE_MEDIA_PLAYER_MEDIA_OUTPUT_POPUP"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.mdx.quickboard.ACTION_OPEN_MEDIA_PANEL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "extra_from"

    .line 228
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    .line 234
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 235
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_1

    const-string v3, "com.samsung.android.mdx.quickboard.action.OPEN_MEDIA_PANEL_V2"

    goto :goto_0

    :cond_1
    const-string v3, "com.samsung.android.mdx.quickboard.action.OPEN_DEVICE_PANEL_V2"

    .line 237
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 239
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 240
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 241
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ShadeController;

    new-instance v1, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/MediaDevicesBar$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;Landroid/content/Intent;)V

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 247
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    goto :goto_1

    .line 249
    :cond_2
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v2, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :goto_1
    return-void

    :cond_3
    if-nez p1, :cond_4

    const-string v0, "com.samsung.android.mdx.quickboard.action.OPEN_MEDIA_PANEL"

    goto :goto_2

    :cond_4
    const-string v0, "com.samsung.android.mdx.quickboard.action.OPEN_DEVICE_PANEL"

    .line 254
    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v2, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void

    .line 260
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t start activity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6

    const-string p1, "MEDIA"

    goto :goto_3

    :cond_6
    const-string p1, "DEVICE"

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    .line 151
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 152
    const-class v0, Lcom/android/systemui/qp/QSBackupRestoreManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/QSBackupRestoreManager;

    const-string v1, "MediaDevices"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qp/QSBackupRestoreManager;->removeCallback(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public disable(Z)V
    .locals 0

    .line 443
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->disable(Z)V

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    return-void
.end method

.method public getBackupData(Z)Ljava/lang/String;
    .locals 2

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TAG::"

    .line 412
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "show_media_divices"

    .line 413
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::"

    .line 414
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    if-eqz p1, :cond_1

    .line 417
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {p1, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 418
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 420
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "builder : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBarHeight()I
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaDeviceBarHeight(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBarTopMargin:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBarBottomMargin:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected getBarLayout()I
    .locals 0

    .line 163
    sget p0, Lcom/android/systemui/R$layout;->qspanel_media_devices_bar_layout:I

    return p0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->getBarLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 169
    sget v0, Lcom/android/systemui/R$id;->media_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 170
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->media_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaIcon:Landroid/widget/ImageView;

    .line 171
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->quickcontrol_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    .line 172
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->quickcontrol_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesIcon:Landroid/widget/ImageView;

    .line 173
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->media_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaContainer:Landroid/widget/LinearLayout;

    .line 174
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->quickcontrol_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesContainer:Landroid/widget/LinearLayout;

    .line 175
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->qspanel_media_quickcontrol_side_padding_tablet:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v0, p1, v2, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$3;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    .line 210
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isValidData()Z
    .locals 3

    .line 400
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "qspanel_media_quickcontrol_bar_available"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v1, 0x0

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showMediaDevices : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " valid : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaDevices"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 290
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOldOrientation:I

    if-eq v0, v1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateHeightMargins()V

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    .line 297
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOldOrientation:I

    :cond_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTuningChanged() : key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "qspanel_media_quickcontrol_bar_available"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnPanel:Z

    goto :goto_2

    :cond_2
    const-string v0, "qspanel_media_quickcontrol_bar_available_on_top"

    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 275
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    .line 278
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateResources()V

    return-void
.end method

.method public setRestoreData(Ljava/lang/String;)V
    .locals 5

    .line 430
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 431
    aget-object v1, p1, v0

    const-string/jumbo v2, "show_media_divices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 432
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 433
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showMediaDevices : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "   Integer.parseInt(sp[1]) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MediaDevices"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v3, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_2

    .line 436
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public updateBackground()Landroid/graphics/drawable/RippleDrawable;
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaDeviceBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->notification_panel_theme_ripple_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 382
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 383
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$color;->sec_media_devices_buttons_background_fill_color:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p0, v0

    .line 384
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 387
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([FF)V

    .line 388
    new-instance p0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 389
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 390
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    new-instance p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method protected updateBarVisibility()V
    .locals 5

    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mDisabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 215
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 216
    :goto_2
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    .line 217
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$bool;->hide_media_device_bar_on_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    .line 220
    :cond_4
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnPanel:Z

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mIsAllowedOnTop:Z

    if-eqz v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    return-void
.end method

.method public updateHeightMargins()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaDeviceBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 305
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaDevicesBarTopMargin(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mBarTopMargin:I

    .line 307
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 308
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateResources()V

    return-void
.end method

.method public updateResources()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->sec_media_devices_buttons_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBackground()Landroid/graphics/drawable/RippleDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBackground()Landroid/graphics/drawable/RippleDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method
