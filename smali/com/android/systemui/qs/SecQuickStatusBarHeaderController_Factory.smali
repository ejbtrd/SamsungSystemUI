.class public final Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;
.super Ljava/lang/Object;
.source "SecQuickStatusBarHeaderController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final colorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private final demoModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
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

.field private final privacyDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyItemControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/logging/PrivacyLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final quickQSPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
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

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/SecQuickStatusBarHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/SecQuickStatusBarHeader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/PanelModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/logging/PrivacyLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->statusBarIconControllerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p7, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->colorExtractorProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p8, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->panelModeChangeControllerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p9, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->privacyItemControllerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p10, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->privacyLoggerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p11, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/SecQuickStatusBarHeader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/demomode/DemoModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/PanelModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/logging/PrivacyLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            ">;)",
            "Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;"
        }
    .end annotation

    .line 87
    new-instance v12, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static newInstance(Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;
    .locals 13

    .line 96
    new-instance v12, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;-><init>(Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/privacy/PrivacyDialogController;)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;
    .locals 12

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->statusBarIconControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/demomode/DemoModeController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/qs/QuickQSPanelController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->colorExtractorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->panelModeChangeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/qs/PanelModeController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->privacyItemControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->privacyLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/privacy/logging/PrivacyLogger;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->newInstance(Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController_Factory;->get()Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    move-result-object p0

    return-object p0
.end method
