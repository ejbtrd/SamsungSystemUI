.class public Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;
.super Ljava/lang/Object;
.source "OneHandModeInteractor.java"


# instance fields
.field private mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static synthetic $r8$lambda$gqc_XGJd68BExQsYC8jJSdu3SUU(Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;Ljava/util/function/Consumer;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->lambda$addCallback$0(Ljava/util/function/Consumer;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private synthetic lambda$addCallback$0(Ljava/util/function/Consumer;Landroid/net/Uri;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getOneHandModeRunningInfo()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    .line 20
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 22
    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "any_screen_running"

    .line 24
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "reduce_screen_running_info"

    .line 25
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 26
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getOneHandModeRunningInfo()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
