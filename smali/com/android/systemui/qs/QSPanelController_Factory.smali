.class public final Lcom/android/systemui/qs/QSPanelController_Factory;
.super Ljava/lang/Object;
.source "QSPanelController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/QSPanelController;",
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

.field private final brightnessControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final brightnessSliderFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final falsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final panelModeChangeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/PanelModeController;",
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

.field private final qsCustomizerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizerController;",
            ">;"
        }
    .end annotation
.end field

.field private final qsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final qsSecurityFooterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSSecurityFooter;",
            ">;"
        }
    .end annotation
.end field

.field private final qsTileRevealControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileRevealController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final qstileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
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

.field private final tunerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation
.end field

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final usingMediaPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSSecurityFooter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileRevealController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/PanelModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSButtonGridController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->viewProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qsSecurityFooterProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 86
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qstileHostProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qsCustomizerControllerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->usingMediaPlayerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->mediaHostProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 91
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qsTileRevealControllerFactoryProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 92
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 93
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 94
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 95
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qsLoggerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 96
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->brightnessControllerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 97
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->brightnessSliderFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 98
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 99
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 100
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->panelModeChangeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 101
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->barControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 102
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qSButtonGridControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 103
    iput-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->stateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSPanelController_Factory;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSSecurityFooter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileRevealController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/PanelModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSButtonGridController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/animator/QsAnimationStateProvider;",
            ">;)",
            "Lcom/android/systemui/qs/QSPanelController_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    .line 126
    new-instance v21, Lcom/android/systemui/qs/QSPanelController_Factory;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lcom/android/systemui/qs/QSPanelController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v21
.end method

.method public static newInstance(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizerController;ZLcom/android/systemui/media/MediaHost;Ljava/lang/Object;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)Lcom/android/systemui/qs/QSPanelController;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    .line 139
    new-instance v21, Lcom/android/systemui/qs/QSPanelController;

    move-object/from16 v0, v21

    move-object/from16 v8, p7

    check-cast v8, Lcom/android/systemui/qs/QSTileRevealController$Factory;

    invoke-direct/range {v0 .. v20}, Lcom/android/systemui/qs/QSPanelController;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/systemui/qs/QSTileRevealController$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V

    return-object v21
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/QSPanelController;
    .locals 22

    move-object/from16 v0, p0

    .line 108
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qsSecurityFooterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qstileHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qsCustomizerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->usingMediaPlayerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->mediaHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/media/MediaHost;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qsTileRevealControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/dump/DumpManager;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/internal/logging/UiEventLogger;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->brightnessControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->brightnessSliderFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->panelModeChangeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/qs/PanelModeController;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->barControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/qs/bar/BarController;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->qSButtonGridControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/qs/QSButtonGridController;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelController_Factory;->stateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-static/range {v2 .. v21}, Lcom/android/systemui/qs/QSPanelController_Factory;->newInstance(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizerController;ZLcom/android/systemui/media/MediaHost;Ljava/lang/Object;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)Lcom/android/systemui/qs/QSPanelController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController_Factory;->get()Lcom/android/systemui/qs/QSPanelController;

    move-result-object p0

    return-object p0
.end method
