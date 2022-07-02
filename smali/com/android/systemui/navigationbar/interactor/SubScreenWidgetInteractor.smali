.class public Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;
.super Ljava/lang/Object;
.source "SubScreenWidgetInteractor.java"


# instance fields
.field private mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static synthetic $r8$lambda$OwzpfNAcTGlMqeEv_n2bOHf6shI(Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;Ljava/util/function/Consumer;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->lambda$addCallback$0(Ljava/util/function/Consumer;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string p2, "display"

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private handleSubScreenNavigationBar()V
    .locals 2

    .line 50
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isShowNavigationForSubscreen()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 51
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->onDisplayReady(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->onDisplayRemoved(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$addCallback$0(Ljava/util/function/Consumer;Landroid/net/Uri;)V
    .locals 2

    .line 35
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 38
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->handleSubScreenNavigationBar()V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 34
    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 41
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/net/Uri;

    const/4 v4, 0x0

    const-string/jumbo v5, "show_navigation_for_subscreen"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 43
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 45
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->handleSubScreenNavigationBar()V

    return-void
.end method
