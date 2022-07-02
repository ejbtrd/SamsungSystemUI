.class public Lcom/android/systemui/qp/SubroomSoundSettingsView;
.super Landroid/widget/LinearLayout;
.source "SubroomSoundSettingsView.java"


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundBackground:Landroid/widget/LinearLayout;

.field private mSoundButton:Landroid/widget/ImageView;

.field private mSoundProfile:I


# direct methods
.method public static synthetic $r8$lambda$HSc1qZczhRotWLvOY0Q258dJAFo(Lcom/android/systemui/qp/SubroomSoundSettingsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->lambda$addClickListeners$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance p1, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;-><init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getSoundProfile()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qp/SubroomSoundSettingsView;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qp/SubroomSoundSettingsView;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundIcon(Z)V

    return-void
.end method

.method private addClickListeners()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getLastSoundIcon(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_011:I

    return p0

    .line 120
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_vibrate_015:I

    return p0

    .line 119
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_mute_008:I

    return p0
.end method

.method private getNextProfile(I)I
    .locals 0

    const/4 p0, 0x2

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private getSoundBackground(I)I
    .locals 0

    if-eqz p1, :cond_0

    .line 129
    sget p0, Lcom/android/systemui/R$drawable;->subroom_active_background:I

    return p0

    .line 128
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->subroom_inactive_background:I

    return p0
.end method

.method private getSoundIcon(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound:I

    return p0

    .line 111
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_vibrate:I

    return p0

    .line 110
    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_sound_mute:I

    return p0
.end method

.method private synthetic lambda$addClickListeners$0(Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getSoundProfile()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getNextProfile(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundProfile(I)V

    .line 49
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE2002"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSoundIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundIcon(Z)V

    return-void
.end method

.method private setSoundIcon(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getSoundProfile()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getSoundIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getSoundProfile()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getLastSoundIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getSoundProfile()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getSoundBackground(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setSoundProfile(I)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->setRingerModeInternal(I)V

    const/4 p1, 0x1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundIcon(Z)V

    return-void
.end method


# virtual methods
.method protected getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;
    .locals 0

    .line 81
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    return-object p0
.end method

.method public getSoundProfile()I
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getAudioHelper()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->getSoundProfile()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundIcon()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 77
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 39
    sget v0, Lcom/android/systemui/R$id;->sound_image_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    .line 40
    sget v0, Lcom/android/systemui/R$id;->sound_background:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundBackground:Landroid/widget/LinearLayout;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->addClickListeners()V

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundIcon()V

    return-void
.end method
