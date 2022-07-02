.class public Lcom/android/systemui/keyguard/SecLifecycle;
.super Ljava/lang/Object;
.source "SecLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mIsDispatching:Z

.field private mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    return-void
.end method

.method private checkPrecondition(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 84
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    if-nez p0, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do not add or remove a observer on dispatching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getLogKey()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    if-nez v0, :cond_0

    .line 76
    const-class v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iput-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method public addObserver(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->checkPrecondition(Ljava/lang/Object;)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatch(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    .line 54
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/keyguard/SecLifecycle;->getLogKey()I

    move-result v2

    .line 57
    iget-object v3, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 58
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-ltz v2, :cond_0

    const/16 v4, 0x14

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "LooperSlow"

    invoke-static {v2, v4, v6, v3, v5}, Lcom/android/systemui/util/LogUtil;->endTime(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 64
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 65
    iget-object v2, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    return-void
.end method

.method public removeObserver(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->checkPrecondition(Ljava/lang/Object;)V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
