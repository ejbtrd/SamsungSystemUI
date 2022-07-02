.class public Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;
.super Ljava/lang/Object;
.source "GestureNavigationSettingsInteractor.java"


# instance fields
.field mButtonForcedVisible:Z

.field mCallback:Ljava/util/function/Consumer;

.field mContext:Landroid/content/Context;

.field mObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method public static synthetic $r8$lambda$P-K5X-P8GvSnTrjE_foTUr7EKgY(Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->onNavigationSettingsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mContext:Landroid/content/Context;

    .line 17
    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 19
    invoke-virtual {p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mButtonForcedVisible:Z

    return-void
.end method

.method private onNavigationSettingsChanged()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mCallback:Ljava/util/function/Consumer;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mButtonForcedVisible:Z

    if-eq v2, v0, :cond_0

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mButtonForcedVisible:Z

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mCallback:Ljava/util/function/Consumer;

    .line 25
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->register()V

    return-void
.end method

.method public isButtonForcedVisible()Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->mButtonForcedVisible:Z

    return p0
.end method
