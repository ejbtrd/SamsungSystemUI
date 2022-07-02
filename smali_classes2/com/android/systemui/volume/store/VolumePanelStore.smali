.class public Lcom/android/systemui/volume/store/VolumePanelStore;
.super Ljava/lang/Object;
.source "VolumePanelStore.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;"
    }
.end annotation


# instance fields
.field public mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field private mIsWorking:Z

.field private final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mMiddlewares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mReducer:Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;


# direct methods
.method public static synthetic $r8$lambda$gTWDv4C4voQaFuTBvu2nbxm7Ko0(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->lambda$onChanged$0(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mObservers:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 36
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    invoke-direct {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mReducer:Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/JSonLogger;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/DeviceStateController;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/DeviceStateController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/AudioManagerController;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/SmartViewInteractor;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/SmartViewInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/BluetoothInteractor;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/BluetoothInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/SALogger;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/SALogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method

.method private static synthetic lambda$onChanged$0(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;)V
    .locals 0

    .line 93
    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->applyState(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 1

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mIsWorking:Z

    .line 61
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 62
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mIsWorking:Z

    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 27
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    return-void
.end method

.method public getCurrentState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    return-object p0
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 5

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mIsWorking:Z

    if-nez v0, :cond_5

    .line 77
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    const-string v2, "]"

    const-string v3, "SecVolumeStore"

    if-eq v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatch ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] with ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    .line 82
    invoke-interface {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mReducer:Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;

    iget-object v4, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-interface {v0, p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;->reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p1

    .line 89
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    if-eq v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  > New State : ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/store/VolumePanelStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/store/VolumePanelStore$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto :goto_1

    .line 99
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    :goto_1
    return-void

    .line 71
    :cond_5
    new-instance p0, Lcom/android/systemui/volume/DispatchException;

    const-string/jumbo p1, "use handler!!"

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/DispatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
