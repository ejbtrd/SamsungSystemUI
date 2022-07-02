.class public Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;
.super Ljava/lang/Object;
.source "SoundAssistantManagerWrapper.java"


# instance fields
.field private final mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-void
.end method


# virtual methods
.method public getMultiSoundDevice()I
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDevice()I

    move-result p0

    return p0
.end method

.method public isMediaDefault()Z
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiSoundOn()Z
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result p0

    return p0
.end method

.method public volumeStarEnable(Z)V
    .locals 2

    .line 39
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "volumestar_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method
