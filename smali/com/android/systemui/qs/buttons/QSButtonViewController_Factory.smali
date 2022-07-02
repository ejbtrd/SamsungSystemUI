.class public final Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;
.super Ljava/lang/Object;
.source "QSButtonViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/buttons/QSButtonViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final multiUserSwitchControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationRankingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final qSButtonGridControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSButtonGridController;",
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

.field private final qsPanelModeChangeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/PanelModeController;",
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

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/buttons/QSButtonView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/buttons/QSButtonView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/PanelModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSButtonGridController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->notificationRankingManagerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->qsPanelModeChangeControllerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->multiUserSwitchControllerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->qSButtonGridControllerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p8, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->stateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/buttons/QSButtonView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/PanelModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSButtonGridController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;)",
            "Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;"
        }
    .end annotation

    .line 70
    new-instance v9, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newInstance(Lcom/android/systemui/qs/buttons/QSButtonView;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)Lcom/android/systemui/qs/buttons/QSButtonViewController;
    .locals 10

    .line 78
    new-instance v9, Lcom/android/systemui/qs/buttons/QSButtonViewController;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/buttons/QSButtonViewController;-><init>(Lcom/android/systemui/qs/buttons/QSButtonView;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/buttons/QSButtonViewController;
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/buttons/QSButtonView;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->notificationRankingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/qs/QSPanelController;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->qsPanelModeChangeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/qs/PanelModeController;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->multiUserSwitchControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->qSButtonGridControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/qs/QSButtonGridController;

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->stateProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->newInstance(Lcom/android/systemui/qs/buttons/QSButtonView;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)Lcom/android/systemui/qs/buttons/QSButtonViewController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonViewController_Factory;->get()Lcom/android/systemui/qs/buttons/QSButtonViewController;

    move-result-object p0

    return-object p0
.end method
