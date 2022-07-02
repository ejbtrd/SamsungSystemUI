.class public Lcom/android/systemui/volume/VolumePanelImpl;
.super Ljava/lang/Object;
.source "VolumePanelImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;
.implements Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;"
    }
.end annotation


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private final mContext:Landroid/content/Context;

.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private final mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

.field private mSubDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

.field private mTimeOutCallback:Ljava/lang/Runnable;

.field private mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

.field private mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

.field private final mVolumeRuneWrapper:Lcom/android/systemui/volume/util/VolumeRuneWrapper;

.field private mVolumeStarVersion:I


# direct methods
.method public static synthetic $r8$lambda$GD91EKXjZ6zhrvDkaKoBcBRrN40(Lcom/android/systemui/volume/VolumePanelImpl;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f14FqPwQee2XK7vEj73KVCnW7Wo(Lcom/android/systemui/volume/VolumePanelImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeStarVersion:I

    .line 149
    new-instance v1, Lcom/android/systemui/volume/VolumePanelImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanelImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/VolumePanelImpl;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mTimeOutCallback:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 55
    const-class p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p2, p1}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 56
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class p2, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-interface {p1, p2}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 57
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class p2, Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    invoke-interface {p1, p2}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeRuneWrapper:Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    .line 58
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class p2, Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-interface {p1, p2}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/view/VolumePanelView;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    .line 59
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class p2, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-interface {p1, p2}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mSoundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->volumeStarEnable(Z)V

    return-void
.end method

.method private synthetic lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 74
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 149
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 150
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/VolumePanelImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/VolumePanelImpl;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 79
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 34
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public getVolumePanelCurrentState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->getCurrentState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p0

    return-object p0
.end method

.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 3

    .line 213
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ACCESSIBILITY_MODE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 215
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onAllSoundOff(Z)V
    .locals 2

    .line 255
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ALL_SOUND_OFF_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 256
    invoke-virtual {v0, v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 257
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onCaptionComponentStateChanged(Ljava/lang/Boolean;)V
    .locals 3

    .line 322
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CAPTION_COMPONENT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_CAPTION_COMPONENT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 324
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 86
    sget-object v0, Lcom/android/systemui/volume/VolumePanelImpl$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 134
    :pswitch_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class v0, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mSubDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    .line 136
    invoke-virtual {p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->setStore()V

    goto/16 :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mSubDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dismiss()V

    .line 140
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mSubDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    invoke-virtual {p1}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;->dispose()V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mSubDisplayVolumePanelPresentation:Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startHearingEnhancementsActivity()V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startVolumeSettingsActivity()V

    goto :goto_0

    .line 122
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelImpl;->recreateVolumePanelForNewConfig()V

    goto :goto_0

    .line 113
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startSettingsActivity()V

    .line 114
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->TYPE_CLEAR_COVER:I

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 115
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 116
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendSystemDialogsCloseAction()V

    goto :goto_0

    .line 108
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    goto :goto_0

    .line 102
    :pswitch_6
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->rescheduleTimeout(I)V

    goto :goto_0

    .line 95
    :pswitch_7
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->rescheduleTimeout(I)V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    goto :goto_0

    .line 88
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .line 232
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onCoverStateChanged(ZI)V
    .locals 3

    .line 274
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_COVER_STATE_CHAGNED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 276
    invoke-virtual {v0, v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 277
    invoke-virtual {p1, v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 199
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class v0, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-interface {p0, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeStarInteractor;->stop()V

    return-void
.end method

.method public onDismiss()V
    .locals 3

    .line 226
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_REQUESTED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 227
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onDualPlayModeChanged()V
    .locals 3

    .line 329
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DUAL_PLAY_MODE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 330
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onFolderStateChanged(Ljava/lang/Boolean;)V
    .locals 3

    .line 302
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_FOLDER_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 303
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FOLDER_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 304
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onInitialize()V
    .locals 7

    .line 159
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class v1, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeStarInteractor;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/volume/VolumeStarInteractor;->start(Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class v1, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 162
    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 163
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/VolumePanelView;->setStore()V

    .line 167
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_INIT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 169
    invoke-interface {v2, v3, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v2

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v5, v4, [Ljava/lang/Object;

    .line 171
    invoke-interface {v2, v3, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v2

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v5, v4, [Ljava/lang/Object;

    .line 173
    invoke-interface {v2, v3, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v2

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v5, v4, [Ljava/lang/Object;

    .line 175
    invoke-interface {v2, v3, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v2

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 177
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_SMART_VIEW_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->VOLUME_SMART_VIEW_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v5, v4, [Ljava/lang/Object;

    .line 179
    invoke-interface {v2, v3, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v2

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_WARNING_POPUP_WALLET_MINI:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->VOLUME_WARNING_POPUP_WALLET_MINI:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v4, [Ljava/lang/Object;

    .line 181
    invoke-interface {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v3

    .line 180
    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_WARNING_POPUP_SIDE_VIEW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->VOLUME_WARNING_POPUP_SIDE_VIEW:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v4, [Ljava/lang/Object;

    .line 183
    invoke-interface {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v3

    .line 182
    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_BUDS_TOGETHER:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->VOLUME_BUDS_TOGETHER:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v4, [Ljava/lang/Object;

    .line 185
    invoke-interface {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v3

    .line 184
    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOLUME_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->VOLUME_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v6, v4, [Ljava/lang/Object;

    .line 187
    invoke-interface {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v3

    .line 186
    invoke-virtual {v1, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 189
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onMirrorLink()V
    .locals 3

    .line 262
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_MIRROR_LINK_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onPlaySound(IZ)V
    .locals 2

    .line 238
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 239
    invoke-virtual {v0, v1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 240
    invoke-virtual {p2, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onPlaySound(IZI)V
    .locals 2

    .line 246
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 247
    invoke-virtual {v0, v1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 248
    invoke-virtual {p2, v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 249
    invoke-virtual {p1, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onScreenOff()V
    .locals 3

    .line 220
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SCREEN_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onSetupWizardComplete()V
    .locals 3

    .line 315
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SETUP_WIZARD_COMPLETE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 316
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onShow(I)V
    .locals 2

    .line 193
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PANEL_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 194
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 3

    .line 283
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_SHOW_CSD_100_WARNINGS:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SHOW_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    goto :goto_0

    .line 286
    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 288
    :goto_0
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 289
    invoke-virtual {v1, v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 290
    invoke-virtual {v0, v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .locals 3

    .line 268
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onStateChanged(Lcom/samsung/systemui/splugins/volume/VolumeState;)V
    .locals 5

    .line 203
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    .line 204
    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setVolumeState(Lcom/samsung/systemui/splugins/volume/VolumeState;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 208
    invoke-interface {v1, v2, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v1

    .line 207
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 3

    .line 295
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 295
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public onUserSwitchComplete()V
    .locals 3

    .line 309
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_USER_SWITCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v2, 0x1

    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public recreateVolumePanelForNewConfig()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/VolumePanelView;->dismiss()V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/VolumePanelView;->disposeActionObserver()V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/VolumePanelView;->disposeStateObservable()V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependencyBase;

    const-class v1, Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/VolumeDependencyBase;->getNewObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/VolumePanelView;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    .line 391
    invoke-virtual {v0}, Lcom/android/systemui/volume/view/VolumePanelView;->setStore()V

    return-void
.end method

.method rescheduleTimeout(I)V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mTimeOutCallback:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    return-void
.end method

.method public restoreToDefaultStore()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 364
    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_1

    .line 368
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 369
    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 373
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 374
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/VolumePanelView;->setStore()V

    .line 376
    iget v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeStarVersion:I

    if-lez v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mSoundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->volumeStarEnable(Z)V

    .line 378
    iput v1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeStarVersion:I

    :cond_2
    return-void
.end method

.method public setActionObserver(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/VolumePanelView;->disposeActionObserver()V

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanelImpl;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 355
    iget p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumeStarVersion:I

    if-lez p1, :cond_1

    .line 356
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mSoundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->volumeStarEnable(Z)V

    :cond_1
    return-void
.end method

.method public setStateObservable(Lcom/samsung/systemui/splugins/volume/VolumeObservable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ">;)V"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mVolumePanelView:Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/VolumePanelView;->disposeStateObservable()V

    .line 342
    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeObservable;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
