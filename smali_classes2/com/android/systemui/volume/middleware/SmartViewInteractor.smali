.class public Lcom/android/systemui/volume/middleware/SmartViewInteractor;
.super Ljava/lang/Object;
.source "SmartViewInteractor.java"

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

.field private mSmartViewEnabledWhenShowing:Z

.field private mSupportTvVolumeControlWhenShowing:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
    .locals 9

    .line 31
    sget-object v0, Lcom/android/systemui/volume/middleware/SmartViewInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SMART_VIEW:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v0

    .line 42
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 44
    iget-boolean v4, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mPanelShowing:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 45
    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mSmartViewEnabledWhenShowing:Z

    :cond_1
    if-nez v0, :cond_2

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mSmartViewEnabledWhenShowing:Z

    if-eqz v0, :cond_9

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v0

    .line 50
    iget-object v4, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v4

    .line 52
    iget-boolean v5, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mPanelShowing:Z

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mSupportTvVolumeControlWhenShowing:Z

    :cond_3
    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_VALID_PLAYER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    if-nez v4, :cond_5

    .line 57
    iget-boolean v4, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mSupportTvVolumeControlWhenShowing:Z

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SCREEN_SHARING:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    if-nez v0, :cond_8

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    .line 60
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 61
    iget-object v6, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_AUDIO_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v6

    .line 62
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0, v7, v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 64
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {v2, v3, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v3

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_AUDIO_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 65
    invoke-virtual {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v3

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 66
    invoke-virtual {v3, v5, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 67
    invoke-virtual {v0, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 68
    invoke-virtual {v0, v3, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move v3, v1

    .line 71
    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_a

    .line 75
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {v2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 78
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    invoke-virtual {v2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 33
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mPanelShowing:Z

    if-nez v0, :cond_c

    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mPanelShowing:Z

    :cond_c
    :goto_3
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0
.end method

.method public applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 88
    sget-object v0, Lcom/android/systemui/volume/middleware/SmartViewInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mPanelShowing:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mSmartViewEnabledWhenShowing:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mSupportTvVolumeControlWhenShowing:Z

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SMART_VIEW:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->toggleWifiDisplayMute()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic applyState(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/SmartViewInteractor;->applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method
