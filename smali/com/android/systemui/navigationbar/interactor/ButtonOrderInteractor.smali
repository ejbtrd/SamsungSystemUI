.class public Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;
.super Ljava/lang/Object;
.source "ButtonOrderInteractor.java"


# instance fields
.field mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static synthetic $r8$lambda$xPDP-tiEy3boQGyEPJuh56HkF3c(Ljava/lang/Runnable;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->lambda$addCallback$0(Ljava/lang/Runnable;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private static synthetic lambda$addCallback$0(Ljava/lang/Runnable;Landroid/net/Uri;)V
    .locals 0

    .line 21
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 21
    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const/4 v1, 0x0

    const-string v2, "navigationbar_key_order"

    .line 23
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p1, v1

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
