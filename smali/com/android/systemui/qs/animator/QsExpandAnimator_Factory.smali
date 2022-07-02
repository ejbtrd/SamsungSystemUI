.class public final Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;
.super Ljava/lang/Object;
.source "QsExpandAnimator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/animator/QsExpandAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private final barControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BarController;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final qqsPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final qsPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final stateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->qqsPanelControllerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->barControllerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->stateProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;)",
            "Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;"
        }
    .end annotation

    .line 64
    new-instance v8, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Lcom/android/systemui/util/SettingsHelper;)Lcom/android/systemui/qs/animator/QsExpandAnimator;
    .locals 9

    .line 71
    new-instance v8, Lcom/android/systemui/qs/animator/QsExpandAnimator;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/animator/QsExpandAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Lcom/android/systemui/util/SettingsHelper;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/animator/QsExpandAnimator;
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/qs/QSPanelController;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->qqsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/qs/QuickQSPanelController;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->barControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/qs/bar/BarController;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->stateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/util/SettingsHelper;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Lcom/android/systemui/util/SettingsHelper;)Lcom/android/systemui/qs/animator/QsExpandAnimator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator_Factory;->get()Lcom/android/systemui/qs/animator/QsExpandAnimator;

    move-result-object p0

    return-object p0
.end method
