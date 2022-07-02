.class public Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "SoundModeTileTemporaryMuteBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;
    }
.end annotation


# instance fields
.field private mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

.field private mDivider:Landroid/view/View;

.field private mRemainingTime:Landroid/widget/TextView;

.field private mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsValueList:[Landroid/net/Uri;

.field private mSummaryText:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$OIfAnuD6kSYgRBSKt9iTwpNY2Rk(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->lambda$updateModelValues$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$QHKBpYNgeBgbb6ZBDkGA1Ofj8jQ(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y07nGNVbt4nzLcx8wcmf-Mn_j8U(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->lambda$onFinishInflate$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string/jumbo v0, "mode_ringer_time_on"

    .line 60
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    .line 62
    new-instance p1, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/net/Uri;

    const-string/jumbo v0, "mode_ringer_time_on"

    .line 60
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    .line 62
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 77
    invoke-static {p1, p0}, Lcom/android/systemui/qs/QSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSSwitchPreference;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 80
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const/4 p0, 0x0

    .line 81
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string/jumbo p2, "mode_ringer_time_on"

    .line 60
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    .line 62
    new-instance p1, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/widget/Switch;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method private getRemainTimeString()Ljava/lang/String;
    .locals 12

    .line 166
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRemainingMuteIntervalMs()I

    move-result v0

    const-string v1, "SoundModeTileTemporaryMuteBoard"

    if-gtz v0, :cond_0

    const-string p0, "AudioManager.getRemainingMuteIntervalMs() is wrong!!"

    .line 168
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v2, 0x36ee80

    .line 171
    div-int v3, v0, v2

    const v4, 0xea60

    .line 172
    div-int v5, v0, v4

    rem-int/lit8 v5, v5, 0x3c

    mul-int/2addr v2, v3

    int-to-long v6, v2

    mul-int/2addr v4, v5

    int-to-long v8, v4

    .line 178
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 179
    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v4

    .line 180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemainTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", refine(h/m)=("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "), str(h/m)=("

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v3, :cond_1

    if-gtz v5, :cond_2

    :cond_1
    if-lez v3, :cond_4

    if-nez v5, :cond_4

    :cond_2
    const-string v5, "%s"

    if-nez v3, :cond_3

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 184
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 186
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    if-lez v3, :cond_5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    aput-object v4, v3, v1

    const-string v2, "%s %s"

    .line 189
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v2, ""

    .line 191
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$string;->quick_settings_sound_mode_detail_mute_remaining:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mSwitch.setOnCheckedChangeListener() mSwitch.isChecked()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundModeTileTemporaryMuteBoard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->updateModelValues(Z)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .locals 1

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "this.setOnClickListener() mSwitch.isChecked()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundModeTileTemporaryMuteBoard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateModelValues$2()V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;->refreshParentDetailView()V

    return-void
.end method

.method private updateModelValues(Z)V
    .locals 2

    .line 154
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setTempMuteSettingValue(I)V

    if-eqz p1, :cond_1

    .line 157
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->updateTempMuteMuteInterval()V

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

    if-eqz p1, :cond_2

    .line 161
    new-instance p1, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private updateSummaryText()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_sound_mode_detail_temporary_mute_summary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 110
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 111
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->refreshAllView(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 116
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    sget v0, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    .line 92
    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mTitleText:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->quick_settings_sound_mode_detail_temporary_mute_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v0, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/android/systemui/R$id;->soundmode_temporary_mute_remainging_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/android/systemui/R$id;->soundmode_temporary_mute_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public refreshAllView(I)V
    .locals 5

    .line 128
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshAllView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") mode_ringer_time_on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundModeTileTemporaryMuteBoard"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->updateSummaryText()V

    .line 135
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    if-eqz v1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getRemainTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_1
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v3}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method public setBoardToTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

    return-void
.end method
