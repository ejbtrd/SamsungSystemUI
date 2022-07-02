.class public Lcom/android/systemui/qs/bar/BrightnessBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/settings/brightness/BrightnessSlider$ToggleDetail;


# static fields
.field private static final EMERGENCY_MODE_URI:Landroid/net/Uri;


# instance fields
.field private mBarBottomMargin:I

.field private mBarTopMargin:I

.field private mBrightenssDetail:Lcom/android/systemui/settings/brightness/BrightnessDetail;

.field private mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field private final mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

.field private mBrightnessDetailIcon:Landroid/widget/ImageView;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

.field private mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

.field private final mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

.field private mContext:Landroid/content/Context;

.field private mIsAllowedOnTop:Z

.field mOldOrientation:I

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method public static synthetic $r8$lambda$QCsWw8QK-w1sm6CCRhAFvlwDVTU(Lcom/android/systemui/qs/bar/BrightnessBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d-DbrWBMF3nVj1574egGhEotaHc(Lcom/android/systemui/qs/bar/BrightnessBar;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emergency_mode"

    .line 60
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/bar/BrightnessBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;)V
    .locals 5

    .line 69
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarTopMargin:I

    .line 56
    iput v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarBottomMargin:I

    const/4 v2, -0x1

    .line 58
    iput v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mOldOrientation:I

    .line 61
    new-instance v2, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 168
    new-instance v2, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    .line 72
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    .line 73
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string p2, "brightness_on_top"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 74
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object p3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/net/Uri;

    sget-object v4, Lcom/android/systemui/qs/bar/BrightnessBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    aput-object v4, v3, v1

    invoke-virtual {p1, p3, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 75
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    .line 78
    new-instance p1, Lcom/android/systemui/qs/bar/BrightnessBar$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$1;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    .line 95
    const-class p0, Lcom/android/systemui/qp/QSBackupRestoreManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/QSBackupRestoreManager;

    const-string p2, "BrightnessOnTop"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qp/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qp/QSBackupRestoreManager$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/brightness/BrightnessDetail;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightenssDetail:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    return-object p0
.end method

.method private initBrightnessDetailViews(Lcom/android/systemui/qs/QSPanel;)V
    .locals 3

    .line 233
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightenssDetail:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 234
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->brightness_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 235
    new-instance v0, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$2;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessDetail()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessDetail()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    return-void
.end method

.method private updateBrightnessDetail()V
    .locals 4

    .line 253
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrightnessDetail disabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_1

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateBrightnessDetail(Z)V

    :cond_1
    return-void
.end method

.method private updateBrightnessMirror()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setMirrorControllerAndMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method

.method private updateIconSize()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getPanelHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    .line 372
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/systemui/R$dimen;->sec_brightness_icon_size_ratio_tablet:I

    goto :goto_0

    .line 373
    :cond_0
    sget v2, Lcom/android/systemui/R$dimen;->sec_brightness_icon_size_ratio:I

    .line 372
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 375
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 376
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 377
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 378
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 381
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 382
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 383
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 384
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_1

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateIconSize(I)V

    :cond_1
    return-void
.end method

.method private updateVisibility()V
    .locals 1

    .line 163
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 164
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isBrightnessControllerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getOnCollapsedState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    .line 130
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->unregisterCallbacks()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setToggleDetailListener(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    .line 145
    :cond_2
    const-class v0, Lcom/android/systemui/qp/QSBackupRestoreManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/QSBackupRestoreManager;

    const-string v1, "BrightnessOnTop"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qp/QSBackupRestoreManager;->removeCallback(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_3

    .line 149
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_3
    return-void
.end method

.method public getBackupData(Z)Ljava/lang/String;
    .locals 2

    .line 310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TAG::"

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "brightness_on_top"

    .line 313
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    .line 314
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    if-eqz p1, :cond_1

    .line 317
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 318
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
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

    const-string v0, "BrightnessOnTop"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBarHeight()I
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarTopMargin:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarBottomMargin:I

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBrightnessSlider()Lcom/android/systemui/settings/brightness/BrightnessSlider;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    return-object p0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSlider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    .line 211
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->create(Lcom/android/systemui/settings/brightness/ToggleSlider;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setToggleDetailListener(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    .line 220
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mStatusBarLazy:Ldagger/Lazy;

    if-eqz v0, :cond_3

    .line 224
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBrightnessMirrorController()Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 226
    :cond_3
    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->initBrightnessDetailViews(Lcom/android/systemui/qs/QSPanel;)V

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility()V

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateHeightMargins()V

    .line 229
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    return-object p0
.end method

.method public isValidData()Z
    .locals 3

    .line 300
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "brightness_on_top"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 304
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightnessOnTop : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " valid : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BrightnessOnTop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    .line 156
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mOldOrientation:I

    if-eq v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateHeightMargins()V

    .line 158
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mOldOrientation:I

    :cond_0
    return-void
.end method

.method public onKnoxPolicychanged()V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 117
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

    const-string v0, "brightness_on_top"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility()V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTuningChanged() : BRIGHTNESS_ON_TOP = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onUiModeChanged()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateResources()V

    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 178
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    return-void
.end method

.method public setDetailViewClickable(Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->performClick()Z

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 202
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->setExpanded(Z)V

    .line 203
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->setListening(Z)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz p1, :cond_0

    .line 194
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-eqz p0, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    :cond_0
    return-void
.end method

.method public setRestoreData(Ljava/lang/String;)V
    .locals 5

    const-string v0, "::"

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 331
    aget-object v1, p1, v0

    const-string v2, "brightness_on_top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 332
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 333
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllowedOnTop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "   Integer.parseInt(sp[1]) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BrightnessOnTop"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    if-eq p1, v0, :cond_1

    .line 335
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    .line 336
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public updateHeightMargins()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 273
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 274
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getBrightnessBarTopMargin(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarTopMargin:I

    .line 276
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getBrightnessBarTopBottomMargin(Landroid/content/Context;)I

    move-result v0

    .line 279
    iput v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarTopMargin:I

    .line 280
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQSBottomMargin(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarBottomMargin:I

    .line 281
    iget v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarTopMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 282
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateIconSize()V

    return-void
.end method

.method public updateResources()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->tw_check_box_tint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ripple_drawable_20dp:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->onPanelColorChanged()V

    .line 355
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    if-eqz p0, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->onPanelColorChanged()V

    :cond_2
    return-void
.end method
