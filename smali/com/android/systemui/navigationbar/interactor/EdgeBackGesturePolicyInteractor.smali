.class public Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;
.super Ljava/lang/Object;
.source "EdgeBackGesturePolicyInteractor.java"


# instance fields
.field mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static synthetic $r8$lambda$OYbt8Z4EurkDrXMQIb00MZ1ILxI(Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;Ljava/util/function/Consumer;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->lambda$addCallback$0(Ljava/util/function/Consumer;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private synthetic lambda$addCallback$0(Ljava/util/function/Consumer;Landroid/net/Uri;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEdgeBackDisabledByPolicy()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_0

    .line 20
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setEdgeBackDisableByPolicy(Z)V

    .line 23
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 24
    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const-string v4, "navigation_bar_gesture_disabled_by_policy"

    .line 25
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    .line 24
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 26
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEdgeBackDisabledByPolicy()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEdgeBackDisabledByPolicy()Z

    move-result p0

    return p0
.end method
