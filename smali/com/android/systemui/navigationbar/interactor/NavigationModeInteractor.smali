.class public Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;
.super Ljava/lang/Object;
.source "NavigationModeInteractor.java"


# instance fields
.field mCallback:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->mContext:Landroid/content/Context;

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

    .line 23
    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->mCallback:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    if-eqz v1, :cond_0

    .line 24
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->mCallback:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    .line 27
    :cond_0
    new-instance v1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$1;-><init>(Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->mCallback:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    .line 42
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->mCallback:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-virtual {p2, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p0

    if-eqz p1, :cond_1

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setModeOverlay(IZ)V
    .locals 1

    .line 50
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 55
    invoke-static {p1}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.samsung.internal.systemui.navbar.sec_gestural"

    goto :goto_0

    :cond_1
    const-string p1, "com.android.internal.systemui.navbar.gestural"

    goto :goto_0

    .line 59
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.samsung.internal.systemui.navbar.sec_gestural_no_hint"

    goto :goto_0

    :cond_3
    const-string p1, "com.samsung.internal.systemui.navbar.gestural_no_hint"

    .line 63
    :goto_0
    const-class p2, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    sget-object v0, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_BY_SPLUGIN:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    invoke-virtual {p2, p1, p0, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
