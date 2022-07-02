.class public Lcom/android/systemui/screenshot/ScreenshotCaptureSound;
.super Ljava/lang/Object;
.source "ScreenshotCaptureSound.java"


# static fields
.field private static final SOUND_FILES:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ScreenshotCaptureSound"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForcedSoundIds:[I

.field private mForcedSoundPool:Landroid/media/SoundPool;

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/system/media/audio/ui/Screen_Capture.ogg"

    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->createSoundPool(Z)Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->createSoundPool(Z)Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    .line 53
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    move v0, p1

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    array-length v2, v1

    const/4 v3, -0x1

    if-ge v0, v2, :cond_0

    .line 55
    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    .line 59
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 60
    aput v3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createSoundPool(Z)Landroid/media/SoundPool;
    .locals 2

    .line 65
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSoundPool : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x4

    .line 69
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/4 v0, 0x5

    .line 70
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 72
    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    :goto_0
    const-string p1, "CAMERA"

    .line 76
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    const-string/jumbo p1, "stv_shutter"

    .line 77
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    .line 78
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    .line 80
    new-instance p1, Landroid/media/SoundPool$Builder;

    invoke-direct {p1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 81
    invoke-virtual {p1, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1, p0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .locals 6

    monitor-enter p0

    if-ltz p1, :cond_2

    .line 89
    :try_start_0
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    aget v2, v1, p1

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    aget-object v5, v0, p1

    invoke-virtual {v2, v5, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, p1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    aget v2, v1, p1

    if-ne v2, v4, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    aget-object v0, v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    aput v0, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    monitor-exit p0

    return-void

    .line 90
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized play(IZ)V
    .locals 8

    monitor-enter p0

    if-ltz p1, :cond_4

    .line 101
    :try_start_0
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_4

    .line 105
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    .line 106
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    aget v3, v2, p1

    if-eqz p2, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    .line 110
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    aget v4, v4, p1

    move v7, v4

    move-object v4, v3

    move v3, v7

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 115
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    aput v0, p2, p1

    goto :goto_2

    .line 117
    :cond_1
    aget-object p2, v0, p1

    invoke-virtual {v1, p2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p2

    aput p2, v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    goto :goto_1

    .line 124
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const-string v0, "g_volume_situation_key;type=3;device=0"

    .line 125
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p2, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 130
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v4

    move v1, v3

    move v2, p2

    move v3, p2

    move v4, p1

    .line 136
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :goto_2
    monitor-exit p0

    return-void

    .line 102
    :cond_4
    :try_start_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sound requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
