.class Lcom/android/systemui/volume/SamsungVolumeDialogImpl$VolumeStateMapper;
.super Ljava/lang/Object;
.source "SamsungVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SamsungVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeStateMapper"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$FmPcUZu3zVAq7nn8vM8TUSlKQ1c(Landroid/util/Pair;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$VolumeStateMapper;->lambda$convertStreamStates$0(Landroid/util/Pair;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    move-result-object p0

    return-object p0
.end method

.method static convertSparseArray(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/plugins/VolumeDialogController$StreamState;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/plugins/VolumeDialogController$StreamState;",
            ">;>;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 285
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 286
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static convertState(Lcom/android/systemui/plugins/VolumeDialogController$State;)Lcom/samsung/systemui/splugins/volume/VolumeState;
    .locals 3

    .line 251
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 252
    invoke-static {v1}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$VolumeStateMapper;->convertSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$VolumeStateMapper;->convertStreamStates(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setStreamStates(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    iget v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    iget v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    iget-boolean v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->fixedSCOVolume:Z

    .line 255
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    iget-boolean v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->remoteMic:Z

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    iget v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    iget-boolean v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    iget-boolean v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    iget-boolean v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    .line 261
    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p0

    return-object p0
.end method

.method static convertStreamStates(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/plugins/VolumeDialogController$StreamState;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$VolumeStateMapper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$VolumeStateMapper$$ExternalSyntheticLambda0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 280
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$convertStreamStates$0(Landroid/util/Pair;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
    .locals 3

    .line 266
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;-><init>()V

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 267
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    .line 268
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTE_SUPPORT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    .line 271
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_APP_MIRRORING:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    .line 273
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    .line 277
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget-object p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    .line 279
    invoke-virtual {v0, v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;

    move-result-object p0

    .line 280
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumeStreamState;

    move-result-object p0

    return-object p0
.end method
