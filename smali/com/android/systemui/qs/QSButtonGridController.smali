.class public Lcom/android/systemui/qs/QSButtonGridController;
.super Ljava/lang/Object;
.source "QSButtonGridController.java"


# instance fields
.field private mButtonGridDialog:Lcom/android/systemui/qs/QSButtonGridDialog;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mContext:Landroid/content/Context;

.field private mQSExpandAnimatorLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mQSPanelControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mTunerListener:Lcom/android/systemui/tuner/TunerService$Tunable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/systemui/qs/QSButtonGridController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSButtonGridController$1;-><init>(Lcom/android/systemui/qs/QSButtonGridController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 53
    new-instance v0, Lcom/android/systemui/qs/QSButtonGridController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSButtonGridController$2;-><init>(Lcom/android/systemui/qs/QSButtonGridController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 69
    new-instance v0, Lcom/android/systemui/qs/QSButtonGridController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSButtonGridController$3;-><init>(Lcom/android/systemui/qs/QSButtonGridController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mTunerListener:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/qs/QSButtonGridController;->mQSPanelControllerLazy:Ldagger/Lazy;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/qs/QSButtonGridController;->mQSExpandAnimatorLazy:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/QSButtonGridDialog;)Lcom/android/systemui/qs/QSButtonGridDialog;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController;->mButtonGridDialog:Lcom/android/systemui/qs/QSButtonGridDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSButtonGridController;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSButtonGridController;)Ldagger/Lazy;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mQSPanelControllerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSButtonGridController;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSButtonGridController;I)F
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSButtonGridController;->getButtonWidthRatio(I)F

    move-result p0

    return p0
.end method

.method private getButtonWidthRatio(I)F
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const p0, 0x3f59999a    # 0.85f

    return p0

    :cond_1
    const/high16 p0, 0x3fa00000    # 1.25f

    return p0
.end method

.method private isQSButtonGridPopupEnabled()Z
    .locals 0

    .line 126
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onViewAttached()V
    .locals 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewAttached() Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSButtonGridController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/android/systemui/qs/QSButtonGridDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSButtonGridDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mButtonGridDialog:Lcom/android/systemui/qs/QSButtonGridDialog;

    .line 84
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 85
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridController;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "quickstar_qs_tile_layout_custom_matrix"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 86
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mTunerListener:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v1, "qs_button_grid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetached()V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewAttached() Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSButtonGridController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 92
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridController;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 93
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mTunerListener:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public showDialog()V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDialog() Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSButtonGridController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mButtonGridDialog:Lcom/android/systemui/qs/QSButtonGridDialog;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public updateExpandAnimForButtonGrid()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mQSExpandAnimatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->onTilesChanged()V

    :cond_0
    return-void
.end method

.method public updateMenuItemVisibility(Landroid/view/MenuItem;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "QSButtonGridController"

    const-string/jumbo v0, "updateMenuItemVisibility()"

    .line 111
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 112
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
