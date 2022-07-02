.class public Lcom/android/systemui/volume/middleware/SALogger;
.super Ljava/lang/Object;
.source "SALogger.java"

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
.field public final mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
    .locals 2

    .line 29
    sget-object v0, Lcom/android/systemui/volume/middleware/SALogger$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I

    move-result v0

    .line 48
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v1, :cond_1

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 49
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SUB_VOLUME_PANEL_FINE_CONTROL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto/16 :goto_0

    .line 52
    :cond_1
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne v0, v1, :cond_2

    .line 53
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_RINGTONE:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 54
    :cond_2
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v0, v1, :cond_3

    .line 55
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_MEDIA:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 56
    :cond_3
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    if-ne v0, v1, :cond_4

    .line 57
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_NOTIFICATION:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 58
    :cond_4
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    if-ne v0, v1, :cond_5

    .line 59
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_SYSTEM:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 60
    :cond_5
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    if-ne v0, v1, :cond_6

    .line 61
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_BIXBY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 62
    :cond_6
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    if-ne v0, v1, :cond_b

    .line 63
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_ACCESSIBILITY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 43
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 39
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_SETTING:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 35
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 31
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_OK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    :cond_b
    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/SALogger;->apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0
.end method

.method public applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 74
    sget-object v0, Lcom/android/systemui/volume/middleware/SALogger$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_ON:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_OFF:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->EXPAND:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SHRINK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/SALogger;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object p1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SUB_VOLUME_PANEL_SHOW:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic applyState(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/SALogger;->applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method
