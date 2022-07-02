.class public Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;
.super Ljava/lang/Object;
.source "FakeVolumeInfraMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# static fields
.field private static final sConditionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private final mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public disableSafeMediaVolume()V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->disableSafeMediaVolume()V

    return-void
.end method

.method public varargs get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 47
    sget-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 50
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FakeVolumeInfraMediator"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getBixbyServiceState()V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBixbyServiceState()V

    return-void
.end method

.method public getCaptionsComponentState(Z)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCaptionsComponentState(Z)V

    return-void
.end method

.method public initSound(I)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    return-void
.end method

.method public varargs isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z
    .locals 2

    .line 35
    sget-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 38
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FakeVolumeInfraMediator"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public notifyVisible(Z)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    return-void
.end method

.method public playSound()V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound()V

    return-void
.end method

.method public playSound(I)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound(I)V

    return-void
.end method

.method public sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    return-void
.end method

.method public sendSystemDialogsCloseAction()V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendSystemDialogsCloseAction()V

    return-void
.end method

.method public setActiveStream(I)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    return-void
.end method

.method public setCaptionEnabled(Z)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setCaptionEnabled(Z)V

    return-void
.end method

.method public setRingerMode(IZ)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setRingerMode(IZ)V

    return-void
.end method

.method public setSafeVolumeDialogShowing(Z)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeVolumeDialogShowing(Z)V

    return-void
.end method

.method public setStreamVolume(II)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolume(II)V

    return-void
.end method

.method public setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    return-void
.end method

.method public startHearingEnhancementsActivity()V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startHearingEnhancementsActivity()V

    return-void
.end method

.method public startSettingsActivity()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startSettingsActivity()V

    return-void
.end method

.method public startVolumeSettingsActivity()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startVolumeSettingsActivity()V

    return-void
.end method

.method public toggleWifiDisplayMute()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->toggleWifiDisplayMute()V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->mVolumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    return-void
.end method
