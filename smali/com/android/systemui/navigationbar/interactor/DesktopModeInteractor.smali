.class public Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;
.super Ljava/lang/Object;
.source "DesktopModeInteractor.java"


# instance fields
.field private mCallback:Lcom/android/systemui/util/DesktopManager$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 14
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->mCallback:Lcom/android/systemui/util/DesktopManager$Callback;

    if-eqz v1, :cond_0

    .line 15
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->mCallback:Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 17
    :cond_0
    new-instance v1, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$1;-><init>(Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->mCallback:Lcom/android/systemui/util/DesktopManager$Callback;

    .line 23
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->mCallback:Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-virtual {v1, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 24
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
