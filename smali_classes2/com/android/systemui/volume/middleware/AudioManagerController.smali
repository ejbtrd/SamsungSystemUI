.class public Lcom/android/systemui/volume/middleware/AudioManagerController;
.super Ljava/lang/Object;
.source "AudioManagerController.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeMiddleware<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field private mPanelShowing:Z


# direct methods
.method public static synthetic $r8$lambda$-Hk7X8pn_9BjeTDM3gqzx9AuEeE(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$applyState$3(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5Tm1zd_6ojBj-qPMGALxttlfJjY(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$applyState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GN1GKsC0THSQGlIsaZZKyLcbuN0(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$applyState$2(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Rq_-xWpZjOx4Q7o_Deh1I71_4Sk(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$applyState$0(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$S0zls1UObQiOYW9NBY2G8LExq9A(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$setStreamVolumeForDualAudio$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jEeibqsTDl78ftK-CSWUFMkpAL8(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->lambda$setStreamVolumeForDualAudio$4(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method

.method private checkMultiSoundStream(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;Ljava/util/List;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->DEVICES_FOR_STREAM_MUSIC:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    if-eqz p4, :cond_1

    .line 211
    :cond_0
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->DEVICE_NONE:I

    .line 214
    :cond_1
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 215
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->DEVICE_NONE:I

    if-eq v1, v0, :cond_2

    .line 218
    invoke-interface {p2, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object p4, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {p4, v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 220
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-interface {p0, v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 221
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 222
    invoke-virtual {p1, v0, p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p4

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 223
    invoke-virtual {p4, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    goto :goto_0

    .line 225
    :cond_2
    invoke-interface {p3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 229
    invoke-virtual {p0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 230
    invoke-virtual {p0, p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    return-void
.end method

.method private checkVoiceCallAndScoStream(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BLUETOOTH_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v2

    .line 184
    iget-object v3, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_USER_IN_CALL:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p0, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 187
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x1

    goto :goto_1

    .line 191
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 p0, 0x0

    .line 199
    :goto_1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 200
    invoke-virtual {p1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 201
    invoke-virtual {p1, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 203
    invoke-virtual {p0, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    return v4
.end method

.method private static synthetic lambda$applyState$0(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 110
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$applyState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 1

    .line 111
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$applyState$2(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 125
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$applyState$3(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Integer;
    .locals 1

    .line 126
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setStreamVolumeForDualAudio$4(ILcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 160
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setStreamVolumeForDualAudio$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 1

    .line 162
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private setIsSafeMediaVolumeDeviceOn(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    .line 171
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 172
    invoke-virtual {p1, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    return-void
.end method

.method private setStreamVolume(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)V
    .locals 2

    .line 148
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 149
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 150
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    :goto_0
    if-eq p2, v0, :cond_2

    :cond_1
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p2, v0, :cond_3

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setStreamVolumeForDualAudio(Ljava/util/List;II)V

    goto :goto_1

    .line 154
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolume(II)V

    :goto_1
    return-void
.end method

.method private setStreamVolumeForDualAudio(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;II)V"
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 160
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda2;

    .line 161
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 164
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 165
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p2, p3, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
    .locals 6

    .line 31
    sget-object v0, Lcom/android/systemui/volume/middleware/AudioManagerController$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mPanelShowing:Z

    if-nez v0, :cond_2

    .line 62
    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mPanelShowing:Z

    .line 64
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setIsSafeMediaVolumeDeviceOn(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;)V

    .line 67
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object p1

    .line 70
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->checkVoiceCallAndScoStream(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    .line 71
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/systemui/volume/middleware/AudioManagerController;->checkMultiSoundStream(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;Ljava/util/List;Ljava/util/List;Z)V

    .line 79
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1

    .line 40
    :cond_3
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 42
    iget-boolean v3, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mPanelShowing:Z

    if-eqz v3, :cond_4

    .line 43
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setIsSafeMediaVolumeDeviceOn(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;)V

    .line 47
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p1

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_MULTI_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v4, v2, [Ljava/lang/Object;

    .line 48
    invoke-interface {p1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 49
    iget-object p1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->DEVICES_FOR_STREAM_MUSIC:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 50
    iget-object v3, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_5

    .line 53
    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->DEVICE_NONE:I

    .line 55
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->MULTI_SOUND_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->DEVICE_BLUETOOTH:I

    if-ne p0, p1, :cond_6

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->DEVICE_NONE:I

    if-eq v3, p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    move v2, v1

    .line 58
    :cond_7
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {v0, p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 33
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->EAR_PROTECT_LIMIT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x64

    add-int/lit8 p0, p0, 0x9

    .line 35
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 36
    invoke-virtual {v0, p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0
.end method

.method public applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 4

    .line 92
    sget-object v0, Lcom/android/systemui/volume/middleware/AudioManagerController$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->disableSafeMediaVolume()V

    goto/16 :goto_0

    .line 123
    :cond_1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 124
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 125
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda0;

    .line 126
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 129
    iget-object v3, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    .line 130
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setStreamVolume(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    invoke-interface {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setRingerMode(IZ)V

    goto :goto_0

    .line 108
    :cond_2
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 109
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 110
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/volume/middleware/AudioManagerController$$ExternalSyntheticLambda1;

    .line 111
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 112
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 114
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    .line 115
    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v0, v3, :cond_3

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 119
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setStreamVolume(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)V

    goto :goto_0

    .line 98
    :cond_4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    if-eqz v0, :cond_5

    .line 99
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    .line 100
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound(I)V

    goto :goto_0

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound()V

    goto :goto_0

    .line 94
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->mPanelShowing:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic applyState(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method
