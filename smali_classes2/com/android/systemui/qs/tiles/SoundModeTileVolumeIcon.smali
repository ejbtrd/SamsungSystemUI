.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;
.super Landroid/widget/FrameLayout;
.source "SoundModeTileVolumeIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMediaIconState:I

.field private mIcon:Landroid/view/View;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mIconType:I

.field private mIsAnimatedType:Z

.field private mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

.field private mMuteIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldUpdateIcon:Z

.field private mStream:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    .line 52
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    const/4 p2, -0x1

    .line 57
    iput p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mCurrentMediaIconState:I

    .line 65
    iput p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconType:I

    .line 70
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    .line 71
    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    .line 73
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_sound_ringtone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->tw_ic_audio_media_note:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mtrl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mtrl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$drawable;->tw_ic_audio_call_mtrl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$drawable;->tw_ic_audio_bixby_mtrl:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$drawable;->tw_ic_audio_accessibility_mtrl:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v10, Lcom/android/systemui/R$drawable;->tw_ic_audio_mute_mtrl:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_media_mute_mtrl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mute_mtrl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mute_mtrl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->qs_detail_item_active_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 89
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->qs_detail_secondary_text_color:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 91
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/android/systemui/R$color;->tw_ic_audio_sound_icon_earshock_color_default:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 93
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    if-nez p2, :cond_0

    .line 96
    sget p2, Lcom/android/systemui/R$color;->tw_ic_audio_sound_icon_color_default:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 97
    sget p2, Lcom/android/systemui/R$color;->tw_ic_audio_sound_icon_muted_color_default:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 386
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getIconState(II)I
    .locals 6

    int-to-double v0, p1

    int-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v2

    cmpl-double p0, v0, v4

    if-lez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getIconType()I
    .locals 2

    .line 406
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :cond_2
    :goto_0
    return v1
.end method

.method private isEarShockLevel()Z
    .locals 3

    .line 166
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x9

    .line 167
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    iget p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    invoke-virtual {v2, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-lez v0, :cond_0

    mul-int/lit8 p0, p0, 0x64

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isMediaType()Z
    .locals 1

    .line 397
    iget p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRingtoneType()Z
    .locals 1

    .line 401
    iget p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAnimatedIcon()V
    .locals 7

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->isMediaType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->isRingtoneType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getIconType()I

    move-result v2

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->volume_normal_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->volume_mute_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->volume_vibrate_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    .line 248
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->setIconResource(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    move-object v1, p0

    .line 249
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->setState(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getIconState(II)I

    move-result v0

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->isRingtoneType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getIconType()I

    move-result v1

    .line 238
    iget v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mCurrentMediaIconState:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->setSoundIconState(III)V

    goto :goto_1

    .line 240
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mCurrentMediaIconState:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->setMediaIconState(II)V

    :goto_1
    return-void
.end method

.method private setDefaultIcon()V
    .locals 3

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getIconType()I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 216
    :cond_1
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_bluetooth_mtrl:I

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 222
    :cond_3
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_vibrate_mtrl:I

    .line 223
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 224
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_vibrate_mtrl:I

    .line 228
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setIconResource(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 285
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mtrl:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mute_mtrl:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_vibrate_mtrl:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    .line 289
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mtrl:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mute_mtrl:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/16 p4, 0xa

    if-ne p1, p4, :cond_2

    .line 292
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/systemui/R$drawable;->tw_ic_audio_accessibility_mtrl:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setMediaIconState(II)V
    .locals 13

    if-ne p1, p2, :cond_0

    .line 352
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mShouldUpdateIcon:Z

    if-eqz v0, :cond_a

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    sub-int v0, p1, p2

    if-lez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p2, -0x1

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 365
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->volume_media_icon_mute:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    .line 366
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->volume_media_icon_note:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    .line 367
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->volume_media_icon_wave_l:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    .line 368
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->volume_media_icon_wave_s:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    const/4 v2, 0x3

    const/4 v12, 0x0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 371
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/4 v8, 0x0

    if-ne p2, p1, :cond_3

    move v10, v3

    goto :goto_1

    :cond_3
    move v10, v12

    :goto_1
    move v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_5

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 373
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/4 v8, 0x0

    if-ne p2, p1, :cond_5

    move v11, v3

    goto :goto_2

    :cond_5
    move v11, v12

    :goto_2
    move v3, v0

    move v4, p1

    move-object v10, v1

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_5

    :cond_6
    if-ne v0, v3, :cond_8

    .line 375
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/4 v8, 0x0

    if-ne p2, p1, :cond_7

    move v11, v3

    goto :goto_3

    :cond_7
    move v11, v12

    :goto_3
    move v3, v0

    move v4, p1

    move-object v10, v1

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_5

    .line 377
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/4 v8, 0x0

    if-ne p2, p1, :cond_9

    move v10, v3

    goto :goto_4

    :cond_9
    move v10, v12

    :goto_4
    move v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 379
    :goto_5
    iput-boolean v12, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mShouldUpdateIcon:Z

    .line 380
    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mCurrentMediaIconState:I

    :cond_a
    return-void
.end method

.method private setSoundIconState(III)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v11, p1

    move/from16 v1, p2

    move/from16 v12, p3

    if-ne v11, v1, :cond_0

    .line 312
    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mShouldUpdateIcon:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconType:I

    if-eq v2, v12, :cond_c

    :cond_0
    const/4 v2, -0x1

    const/4 v13, 0x0

    if-eq v1, v2, :cond_4

    if-eqz v11, :cond_4

    if-ne v11, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v12, :cond_2

    move v3, v13

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    sub-int v3, v11, v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v1, -0x1

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v11

    .line 324
    :goto_2
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Landroid/widget/ImageView;

    .line 325
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_mute_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Landroid/widget/ImageView;

    .line 326
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_normal_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    .line 327
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/ImageView;

    .line 328
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/ImageView;

    .line 329
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_vibrate_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    if-ne v1, v11, :cond_6

    .line 331
    :cond_5
    iget v1, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconType:I

    if-ne v1, v12, :cond_6

    move/from16 v22, v4

    goto :goto_3

    :cond_6
    move/from16 v22, v13

    :goto_3
    if-nez v11, :cond_8

    if-ne v12, v4, :cond_7

    .line 334
    iget-object v14, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iget v15, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    invoke-virtual/range {v14 .. v22}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    .line 336
    :cond_7
    iget-object v14, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    move-object/from16 v15, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v22

    invoke-virtual/range {v14 .. v21}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    :cond_8
    const/4 v1, 0x3

    if-ne v3, v1, :cond_9

    .line 339
    iget-object v14, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iget v15, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    invoke-virtual/range {v14 .. v22}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    :cond_9
    const/4 v1, 0x2

    if-ne v3, v1, :cond_a

    .line 341
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iget v2, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    move/from16 v3, p1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v10, v22

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_4

    :cond_a
    if-ne v3, v4, :cond_b

    .line 343
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    iget v2, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    move/from16 v3, p1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v10, v22

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    .line 345
    :cond_b
    :goto_4
    iput-boolean v13, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mShouldUpdateIcon:Z

    .line 346
    iput v11, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mCurrentMediaIconState:I

    .line 347
    iput v12, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconType:I

    :cond_c
    return-void
.end method

.method private setState(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconType:I

    if-eq p2, p1, :cond_3

    .line 267
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    invoke-virtual {p2, p5}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startSplashAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconType:I

    if-eq p2, p1, :cond_3

    .line 276
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mMotion:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;

    invoke-virtual {p2, p4}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startVibrationAnimation(Landroid/view/View;)V

    .line 280
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconType:I

    return-void
.end method

.method private shouldUpdateIconLayout(ZZ)Z
    .locals 0

    if-nez p1, :cond_1

    .line 172
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIsAnimatedType:Z

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mShouldUpdateIcon:Z

    return p1
.end method

.method private supportAnimatedIcon()Z
    .locals 2

    .line 390
    iget p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private updateIconLayout(Z)V
    .locals 2

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->supportAnimatedIcon()Z

    move-result v0

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->shouldUpdateIconLayout(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->isMediaType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->volume_animated_media_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_0

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->isRingtoneType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->volume_animated_ringtone_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->volume_animated_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    :goto_0
    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIsAnimatedType:Z

    goto :goto_1

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->volume_default_icon:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    const/4 p1, 0x0

    .line 193
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIsAnimatedType:Z

    .line 195
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private updateIconState()V
    .locals 1

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->supportAnimatedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIsAnimatedType:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->setAnimatedIcon()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->setDefaultIcon()V

    :goto_0
    return-void
.end method

.method private updateIconTintColor()V
    .locals 7

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getIconType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->supportAnimatedIcon()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->isMediaType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    .line 131
    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    .line 132
    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    .line 133
    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->isEarShockLevel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_media_icon_note:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 138
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->volume_media_icon_wave_l:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 139
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->volume_media_icon_wave_s:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 140
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_media_icon_mute:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 141
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 143
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 145
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_normal_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 149
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->volume_mute_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 150
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->volume_vibrate_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 151
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->isRingtoneType()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 153
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 154
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIcon:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 156
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 158
    :cond_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 159
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 160
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 161
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public initialize(I)V
    .locals 1

    .line 102
    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mStream:I

    .line 103
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mAudioManager:Landroid/media/AudioManager;

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->getIconType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->mIconType:I

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->updateLayout(Z)V

    return-void
.end method

.method public updateEnableState(Z)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 116
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public updateLayout(Z)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->updateIconLayout(Z)V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->updateIconState()V

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;->updateIconTintColor()V

    return-void
.end method
