.class public abstract Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.super Landroid/widget/LinearLayout;
.source "SoundModeTileVolumeBar.java"

# interfaces
.implements Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

.field protected mContext:Landroid/content/Context;

.field private mMuted:Z

.field public mSeekBar:Landroid/widget/SeekBar;

.field protected final mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field protected mStream:I

.field public mTitleView:Landroid/widget/TextView;

.field protected mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

.field protected mVolumeChangeReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

.field protected mVolumeIcon:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;

.field protected mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method public static synthetic $r8$lambda$I8AjyNTm1rtl7gitk2x5qi38KcQ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->lambda$initResources$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    .line 100
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    .line 127
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 143
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

    .line 431
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

    .line 191
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->requestAudioFocus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mMuted:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mMuted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mZenMuted:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mZenMuted:Z

    return p1
.end method

.method private initResources()V
    .locals 7

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void

    .line 216
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    if-nez v0, :cond_1

    const-string v0, "No stream found, or Voice calling...... not binding volumizer"

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-nez v0, :cond_2

    .line 223
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    .line 224
    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->getCurrentUserContextForSample()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getDefaultVolumeUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->registerReceiver()V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/16 v1, 0xd9c

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isSettingAllSoundMute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 243
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-eqz v0, :cond_4

    .line 246
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 253
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 258
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onPanelModeChanged()V

    return-void
.end method

.method private static synthetic lambda$initResources$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 251
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result p0

    return p0
.end method

.method private requestAudioFocus()Z
    .locals 7

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isVoiceCalling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "isVoIP and isVoiceCall is true so can not request audioFocus"

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    .line 287
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method


# virtual methods
.method protected getDefaultVolumeUri()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleUpdateBarViews()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeIcon:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 377
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->updateLayout(Z)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeIcon:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isEnableSeekBarForVolume()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->updateEnableState(Z)V

    return-void
.end method

.method protected handleUpdateDualColorSeekbar()V
    .locals 0

    return-void
.end method

.method protected isEnableSeekBarForVolume()Z
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

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
    .locals 0

    .line 206
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->initResources()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 263
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 271
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeChangeBroadcastReceiver;->unregisterReceiver()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 197
    sget v0, Lcom/android/systemui/R$id;->soundmode_tile_volume_bar_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    .line 198
    sget v0, Lcom/android/systemui/R$id;->soundmode_tile_volume_bar_seekbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 199
    sget v0, Lcom/android/systemui/R$id;->qs_volume_bar_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeIcon:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;

    .line 200
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->initialize(I)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public onPanelModeChanged()V
    .locals 1

    .line 465
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeIcon:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->updateLayout(Z)V

    :cond_0
    return-void
.end method

.method protected printLog(Ljava/lang/String;)V
    .locals 0

    .line 306
    sget-boolean p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoundModeTileVolumeBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setVolumeBarCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    return-void
.end method
