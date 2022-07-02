.class public Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;
.super Ljava/lang/Object;
.source "BixbyServiceInteractor.java"

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
.field private mBixbyStreamImportant:Z

.field private final mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field private mPanelShowing:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
    .locals 8

    .line 25
    sget-object v0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mBixbyStreamImportant:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_KIOSK_MODE_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v4, v1, [Ljava/lang/Object;

    .line 54
    invoke-interface {v0, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v3

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    sget v5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v5, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BIXBY_SERVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v5, v6, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mBixbyStreamImportant:Z

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :goto_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    .line 27
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mPanelShowing:Z

    if-nez v0, :cond_4

    .line 28
    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mPanelShowing:Z

    .line 30
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    move-result-object v3

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    sget v5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v5, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_KIOSK_MODE_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BIXBY_SERVICE_FOREGROUND:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    invoke-interface {v5, v6, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mBixbyStreamImportant:Z

    goto :goto_1

    .line 40
    :cond_3
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBixbyServiceState()V

    .line 44
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 46
    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0
.end method

.method public applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 80
    sget-object v0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mPanelShowing:Z

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->mBixbyStreamImportant:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic applyState(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;->applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method
