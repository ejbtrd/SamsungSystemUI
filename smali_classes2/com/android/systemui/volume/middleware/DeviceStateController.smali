.class public Lcom/android/systemui/volume/middleware/DeviceStateController;
.super Ljava/lang/Object;
.source "DeviceStateController.java"

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

.field private mIsCoverClosed:Z

.field private mPanelShowing:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
    .locals 8

    .line 21
    sget-object v0, Lcom/android/systemui/volume/middleware/DeviceStateController$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 97
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    .line 98
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 99
    invoke-virtual {v0, p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 92
    :pswitch_1
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    invoke-interface {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 87
    :pswitch_2
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v2, v2, [Ljava/lang/Object;

    .line 88
    invoke-interface {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 80
    :pswitch_3
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v1, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v4, v2, [Ljava/lang/Object;

    .line 81
    invoke-interface {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v1, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v4, v2, [Ljava/lang/Object;

    .line 82
    invoke-interface {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_DISPLAY_TYPE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DISPLAY_TYPE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    invoke-interface {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 73
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_STANDALONE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 74
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_5
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    invoke-interface {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 54
    :pswitch_6
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object v0

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result v0

    .line 55
    iget-object v3, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ZEN_MODE_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v3

    .line 56
    iget-object v4, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ZEN_MODE_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v4, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v4

    .line 57
    iget-object v5, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ZEN_MODE_NONE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-interface {v5, v6, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v0

    .line 58
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 59
    invoke-virtual {v1, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 60
    invoke-virtual {p1, v1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_ZEN_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 61
    invoke-virtual {p1, v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    invoke-interface {p0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_LCD_OFF:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mIsCoverClosed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 37
    :cond_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 38
    iget-boolean v3, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mPanelShowing:Z

    if-nez v3, :cond_5

    .line 39
    iput-boolean v1, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mPanelShowing:Z

    .line 40
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v3, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v4, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v2, [Ljava/lang/Object;

    .line 41
    invoke-interface {v4, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v4, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->TIMEOUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v6, v2, [Ljava/lang/Object;

    .line 42
    invoke-interface {v4, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v4, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->TIMEOUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    new-array v6, v2, [Ljava/lang/Object;

    .line 43
    invoke-interface {v4, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v4, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_KEYGUARD_STATE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v2, [Ljava/lang/Object;

    .line 44
    invoke-interface {v4, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SHADE_LOCKED_STATE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v2, [Ljava/lang/Object;

    .line 45
    invoke-interface {v4, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p1, v3, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 47
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCaptionsComponentState(Z)V

    .line 49
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 28
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DEX_MODE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 29
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 32
    :cond_4
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_8
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mIsCoverClosed:Z

    :cond_5
    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/DeviceStateController;->apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0
.end method

.method public applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 108
    sget-object v0, Lcom/android/systemui/volume/middleware/DeviceStateController$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_CAPTION_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setCaptionEnabled(Z)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeVolumeDialogShowing(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->mPanelShowing:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic applyState(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/DeviceStateController;->applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method
