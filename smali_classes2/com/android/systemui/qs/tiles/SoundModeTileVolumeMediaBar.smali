.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMediaBar;
.super Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.source "SoundModeTileVolumeMediaBar.java"


# instance fields
.field protected mBroadcastReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;

.field private mEarProtectLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMediaBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMediaBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMediaBar;->mBroadcastReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const/4 p1, 0x3

    .line 56
    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    return-void
.end method


# virtual methods
.method protected getDefaultVolumeUri()Landroid/net/Uri;
    .locals 0

    const-string p0, "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

    .line 88
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected handleUpdateBarViews()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->handleUpdateBarViews()V

    return-void
.end method

.method protected handleUpdateDualColorSeekbar()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 109
    :try_start_0
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "SoundModeTileVolumeMediaBar"

    const-string v3, "TelecomManager threw Exception"

    .line 116
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    .line 123
    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    .line 124
    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    .line 125
    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "handleUpdateDualColorSeekbar set single"

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_1

    .line 126
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateDualColorSeekbar set dual. EarProtectLimitIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEarProtectLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMediaBar;->mEarProtectLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    iget p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMediaBar;->mEarProtectLevel:I

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected isEnableSeekBarForVolume()Z
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isEnableSeekBarForVolume()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isEnableZenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v1, Lcom/android/systemui/R$string;->volumepanel_media:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMediaBar;->mBroadcastReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->registerReceiver()V

    .line 75
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMediaBar;->mEarProtectLevel:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 80
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onDetachedFromWindow()V

    .line 81
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMediaBar;->mBroadcastReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->unregisterReceiver()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onFinishInflate()V

    .line 62
    sget v0, Lcom/android/systemui/R$id;->qs_volume_bar_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeIcon:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;

    return-void
.end method

.method public onPanelModeChanged()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onPanelModeChanged()V

    return-void
.end method
