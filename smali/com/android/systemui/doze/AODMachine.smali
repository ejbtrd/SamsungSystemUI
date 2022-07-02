.class public Lcom/android/systemui/doze/AODMachine;
.super Lcom/android/systemui/doze/DozeMachine;
.source "AODMachine.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAOD$Callback;


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

.field private mAODUi:Lcom/android/systemui/doze/AODUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/AODMachine;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;)V
    .locals 0

    .line 65
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;)V

    return-void
.end method

.method private getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine;->mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 140
    instance-of v4, v3, Lcom/android/systemui/doze/AODScreenBrightness;

    if-eqz v4, :cond_0

    .line 141
    check-cast v3, Lcom/android/systemui/doze/AODScreenBrightness;

    iput-object v3, p0, Lcom/android/systemui/doze/AODMachine;->mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine;->mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

    return-object p0
.end method

.method private getAODUi()Lcom/android/systemui/doze/AODUi;
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    instance-of v4, v3, Lcom/android/systemui/doze/AODUi;

    if-eqz v4, :cond_0

    .line 117
    check-cast v3, Lcom/android/systemui/doze/AODUi;

    iput-object v3, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    return-object p0
.end method

.method private getState(I)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 164
    :pswitch_0
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 162
    :pswitch_1
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_DASHBOARD:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 160
    :pswitch_2
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 156
    :pswitch_3
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 158
    :pswitch_4
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 152
    :pswitch_5
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    .line 154
    :pswitch_6
    sget-object p0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/doze/AODMachine;->getAODUi()Lcom/android/systemui/doze/AODUi;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODUi;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public onFinishMOD(I)V
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public onRequestMOD(I)V
    .locals 1

    const/4 v0, 0x6

    .line 75
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/AODMachine;->getState(I)Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 76
    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    return-void
.end method

.method public onRequestState(I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/AODMachine;->getState(I)Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method public onSendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onUpdateDozeBrightness(II)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/doze/AODMachine;->getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/doze/AODScreenBrightness;->updateDozeBrightness(II)V

    :cond_0
    return-void
.end method

.method public onUpdateWindowLayoutParams()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/doze/AODMachine;->getAODUi()Lcom/android/systemui/doze/AODUi;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODUi;->updateWindowLayoutParams()V

    :cond_0
    return-void
.end method

.method public setAODParameter(Lcom/android/systemui/plugins/aod/PluginAODParameter;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/doze/AODMachine;->getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/AODScreenBrightness;->setAODParameter(Lcom/android/systemui/plugins/aod/PluginAODParameter;)V

    :cond_0
    return-void
.end method
