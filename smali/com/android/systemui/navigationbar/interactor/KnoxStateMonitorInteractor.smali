.class public Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;
.super Ljava/lang/Object;
.source "KnoxStateMonitorInteractor.java"


# instance fields
.field mKnoxStateMonitorCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 13
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->mKnoxStateMonitorCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 14
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->mKnoxStateMonitorCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 16
    :cond_0
    new-instance v1, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$1;-><init>(Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->mKnoxStateMonitorCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 28
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->mKnoxStateMonitorCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 33
    const-class p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isNavigationBarHidden()Z

    move-result p0

    return p0
.end method
