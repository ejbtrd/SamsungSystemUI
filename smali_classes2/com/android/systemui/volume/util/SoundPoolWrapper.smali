.class public Lcom/android/systemui/volume/util/SoundPoolWrapper;
.super Ljava/lang/Object;
.source "SoundPoolWrapper.java"


# static fields
.field private static final HOME_HUB_FILES:[Ljava/lang/String;

.field private static final SOUND_THEME_FILES:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mSoundID:I

.field private mSoundIDs:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public static synthetic $r8$lambda$-pTH_RS3w08e0OtvfDpjPdWZEPE(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->lambda$playSound$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$7xWbyi5NfP3f0DPQYddzL3VbfkI(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->lambda$initSound$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jQod3a3Hhqk64lJOenqQjt8Fcu0(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->lambda$playSound$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p0uU6Iz08I3t68NqEXNBm8O3xrs(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->lambda$makeSound$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "system/media/audio/ui/TW_Volume_control.ogg"

    const-string/jumbo v1, "system/media/audio/ui/TW_Volume_control_Calm.ogg"

    const-string/jumbo v2, "system/media/audio/ui/TW_Volume_control_Fun.ogg"

    const-string/jumbo v3, "system/media/audio/ui/TW_Volume_control_Retro.ogg"

    .line 18
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    const-string/jumbo v0, "system/media/audio/ui/HC_Volume_down.ogg"

    const-string/jumbo v1, "system/media/audio/ui/HC_Volume_up.ogg"

    const-string/jumbo v2, "system/media/audio/ui/HC_Volume_min.ogg"

    const-string/jumbo v3, "system/media/audio/ui/HC_Volume_max.ogg"

    .line 32
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/util/HandlerWrapper;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundID:I

    .line 48
    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 50
    sget-boolean p1, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 51
    sget-object p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundIDs:[I

    move p1, p2

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundIDs:[I

    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 53
    aput v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    if-eqz p1, :cond_1

    .line 57
    sget-object p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundIDs:[I

    .line 58
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundIDs:[I

    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 59
    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getDefaultStream()I
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110180

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 99
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    return p0

    .line 101
    :cond_0
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    return p0
.end method

.method private getSoundThemeIndex()I
    .locals 3

    .line 137
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Open_theme"

    .line 140
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "prev_system_sound"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string p0, "Calm"

    .line 145
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "Fun"

    .line 147
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string p0, "Retro"

    .line 149
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initSound$1(I)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, p1}, Landroid/media/SoundPool;->semSetStreamType(I)V

    return-void
.end method

.method private synthetic lambda$makeSound$0()V
    .locals 5

    .line 66
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    .line 67
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    .line 70
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v0, v2

    .line 71
    :goto_0
    sget-object v1, Lcom/android/systemui/volume/util/SoundPoolWrapper;->HOME_HUB_FILES:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundIDs:[I

    iget-object v4, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    aget-object v1, v1, v0

    invoke-virtual {v4, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    if-eqz v1, :cond_1

    move v0, v2

    .line 75
    :goto_1
    sget-object v1, Lcom/android/systemui/volume/util/SoundPoolWrapper;->SOUND_THEME_FILES:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundIDs:[I

    iget-object v4, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    aget-object v1, v1, v0

    invoke-virtual {v4, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "system/media/audio/ui/TW_Volume_control.ogg"

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundID:I

    :cond_2
    return-void
.end method

.method private synthetic lambda$playSound$2()V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 107
    sget-boolean v1, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundIDs:[I

    invoke-direct {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->getSoundThemeIndex()I

    move-result v2

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundID:I

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->releaseSound()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$playSound$3(I)V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundIDs:[I

    aget v1, v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->releaseSound()V

    :cond_0
    return-void
.end method


# virtual methods
.method public initSound(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 86
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NONE:I

    if-ne p1, v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->getDefaultStream()I

    move-result p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/volume/util/SoundPoolWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->makeSound()V

    :goto_0
    return-void
.end method

.method public makeSound()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/volume/util/SoundPoolWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playSound()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/volume/util/SoundPoolWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playSound(I)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/volume/util/SoundPoolWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releaseSound()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method
