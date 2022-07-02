.class final Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotationLockDetailAdapter"
.end annotation


# instance fields
.field private mButtonOnNavigationBarOption:Landroid/view/View;

.field private mButtonOnNavigationBarSwitch:Landroid/widget/Switch;

.field private mCallScreenOption:Landroid/view/View;

.field private mHomeScreenOption:Landroid/view/View;

.field private mLockScreenOption:Landroid/view/View;

.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;Lcom/android/systemui/qs/tiles/RotationLockTile$1;)V
    .locals 0

    .line 379
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    .line 379
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setHomeScreenRotationAllowed(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    .line 379
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setLockScreenRotationAllowed(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    .line 379
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setCallScreenRotationAllowed(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)Landroid/widget/Switch;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method private setCallScreenRotationAllowed(Z)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1200(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setHomeScreenRotationAllowed(Z)V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$800(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setLockScreenRotationAllowed(Z)V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1000(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateButtonOnNavigationBarOption(Z)V
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 620
    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 642
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 643
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 645
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 648
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 652
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 457
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1300(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->sec_qs_detail_rotation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 458
    sget p2, Lcom/android/systemui/R$id;->rotation_summary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 459
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/android/systemui/R$string;->quick_settings_rotation_lock_two_toggle_detail_summary_for_tablet:I

    goto :goto_0

    .line 460
    :cond_0
    sget p3, Lcom/android/systemui/R$string;->quick_settings_rotation_lock_two_toggle_detail_summary:I

    .line 459
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const-string p2, "QPD102"

    .line 463
    invoke-static {p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 466
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    const/16 p3, 0x8

    if-eqz p2, :cond_3

    .line 467
    sget p2, Lcom/android/systemui/R$id;->button_on_navigation_bar_option_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 468
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p2, v1}, Lcom/android/systemui/qs/QSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSSwitchPreference;

    move-result-object p2

    .line 469
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 470
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 471
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 472
    sget v1, Lcom/android/systemui/R$string;->quick_settings_manual_rotation_button_on_navigation_bar_title:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 474
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 475
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/systemui/R$string;->quick_settings_manual_rotation_button_on_navigation_bar_summary_for_tablet:I

    goto :goto_1

    .line 476
    :cond_1
    sget v1, Lcom/android/systemui/R$string;->quick_settings_manual_rotation_button_on_navigation_bar_summary:I

    .line 475
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 477
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroid/widget/Switch;

    .line 479
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 480
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 481
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 484
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    goto :goto_2

    .line 486
    :cond_3
    sget p2, Lcom/android/systemui/R$id;->quick_settings_manual_rotation_category_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 487
    sget p2, Lcom/android/systemui/R$id;->button_on_navigation_bar_option_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p2

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p2, v1}, Lcom/android/systemui/qs/QSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSSwitchPreference;

    move-result-object p2

    .line 491
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 492
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    .line 494
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/android/systemui/qs/QSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSSwitchPreference;

    move-result-object p2

    .line 495
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 496
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    .line 498
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1700(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/android/systemui/qs/QSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSSwitchPreference;

    move-result-object p2

    .line 499
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 500
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    .line 501
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 502
    sget p2, Lcom/android/systemui/R$id;->quick_settings_rotation_category_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    .line 509
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 510
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1800(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->quick_settings_rotation_detail_home_screen:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    .line 512
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isHomeScreenRotationAllowed()Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 513
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 514
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 516
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;

    invoke-direct {v4, p0, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Landroid/widget/Switch;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    new-instance v3, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {p2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 530
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2000(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 533
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 534
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2100(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p3

    sget v3, Lcom/android/systemui/R$string;->quick_settings_rotation_detail_lock_screen:I

    invoke-virtual {p3, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Switch;

    .line 536
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 537
    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 539
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 540
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2200(Lcom/android/systemui/qs/tiles/RotationLockTile;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 541
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$6;

    invoke-direct {v3, p0, p3}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$6;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Landroid/widget/Switch;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    new-instance p2, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$7;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {p3, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 555
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 557
    invoke-virtual {p3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 558
    invoke-virtual {p3, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    const p3, 0x3ecccccd    # 0.4f

    .line 559
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .line 562
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 565
    :goto_3
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 566
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$string;->quick_settings_rotation_detail_call_screen:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    .line 568
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 569
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 571
    :cond_9
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isCallScreenRotationAllowed()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 572
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Landroid/widget/Switch;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    new-instance p3, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$9;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$9;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7b

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 391
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$300(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_rotation_lock_auto_rotate:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 4

    .line 595
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isRotationLockTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2600(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2700(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 602
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPDE1008"

    const-string v2, "location"

    const-string v3, "auto rotate"

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    .line 606
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    return-void
.end method
