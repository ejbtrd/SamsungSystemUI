.class public Lcom/android/systemui/qs/buttons/QSSettingsButton;
.super Landroid/widget/FrameLayout;
.source "QSSettingsButton.java"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mQsButtonBadgeText:Ljava/lang/String;

.field private mSettingsBadgeCount:I

.field private mSettingsButton:Landroid/widget/ImageButton;

.field private mSettingsButtonBadge:Landroid/widget/TextView;

.field protected mSettingsContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsBadgeCount:I

    .line 36
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mContext:Landroid/content/Context;

    .line 37
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 38
    const-class p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/buttons/QSSettingsButton;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/buttons/QSSettingsButton;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/buttons/QSSettingsButton;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSSettingsButton;->startSettingsActivity()V

    return-void
.end method

.method private startSettingsActivity()V
    .locals 2

    const-string v0, "QSSettingsButton"

    const-string v1, "Click settings button."

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 44
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButton:Landroid/widget/ImageButton;

    .line 45
    sget v0, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsContainer:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsContainer:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->settings_button_badge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButtonBadge:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->sec_qs_button_badge_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mQsButtonBadgeText:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;-><init>(Lcom/android/systemui/qs/buttons/QSSettingsButton;)V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateSettingsBadge()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButtonBadge:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsBadgeCount:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButtonBadge:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mQsButtonBadgeText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 89
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateSettingsBadgeCount(I)V
    .locals 1

    .line 77
    iput p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsBadgeCount:I

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNotificationSumChanged() : mSettingsBadgeCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsBadgeCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSSettingsButton"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSSettingsButton;->updateSettingsBadge()V

    return-void
.end method
