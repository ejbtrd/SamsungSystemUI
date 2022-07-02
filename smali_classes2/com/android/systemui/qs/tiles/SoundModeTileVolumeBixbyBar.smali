.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBixbyBar;
.super Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.source "SoundModeTileVolumeBixbyBar.java"


# instance fields
.field protected mBroadcastReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBixbyBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBixbyBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBixbyBar;->mBroadcastReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const/4 p1, 0x6

    .line 47
    invoke-static {p1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    return-void
.end method


# virtual methods
.method protected getDefaultVolumeUri()Landroid/net/Uri;
    .locals 0

    const-string p0, "file:///system/media/audio/ui/Bixby_BOS.ogg"

    .line 67
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onAttachedToWindow()V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v1, Lcom/android/systemui/R$string;->volumepanel_bixby_voice:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBixbyBar;->mBroadcastReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->registerReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->onDetachedFromWindow()V

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBixbyBar;->mBroadcastReceiver:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$NotificationInterruptionReceiver;->unregisterReceiver()V

    return-void
.end method
