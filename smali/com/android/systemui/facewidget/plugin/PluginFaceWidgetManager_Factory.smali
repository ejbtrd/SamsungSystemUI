.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;
.super Ljava/lang/Object;
.source "PluginFaceWidgetManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final bootAnimationFinishedCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
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

.field private final externalClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetContainerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetDisplayLifeCycleWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetKeyguardStatusCallbackWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetKeyguardUpdateMonitorWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetKnoxStateMonitorWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetLockPatternUtilsWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetNotificationControllerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetPluginLockManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetWakefulnessLifecycleWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final faceWidgetWallpaperUtilsWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardFastBioUnlockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginAODManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private final positionAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->contextProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 81
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->positionAlgorithmProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 82
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetContainerWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 83
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetKeyguardStatusCallbackWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 84
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetKeyguardUpdateMonitorWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 85
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetDisplayLifeCycleWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 86
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetWakefulnessLifecycleWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 87
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetKnoxStateMonitorWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 88
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetLockPatternUtilsWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 89
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetWallpaperUtilsWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 90
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetPluginLockManagerWrapperProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 91
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetNotificationControllerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 92
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->externalClockProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 93
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->keyguardFastBioUnlockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 94
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 95
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 96
    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->bootAnimationFinishedCacheProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            ">;)",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;"
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

    .line 122
    new-instance v19, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v19
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/BootAnimationFinishedCache;)Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            ")",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;"
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

    .line 141
    new-instance v19, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/BootAnimationFinishedCache;)V

    return-object v19
.end method


# virtual methods
.method public get()Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;
    .locals 20

    move-object/from16 v0, p0

    .line 101
    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->positionAlgorithmProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetContainerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetKeyguardStatusCallbackWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetKeyguardUpdateMonitorWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetDisplayLifeCycleWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetWakefulnessLifecycleWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetKnoxStateMonitorWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetLockPatternUtilsWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetWallpaperUtilsWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetPluginLockManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->faceWidgetNotificationControllerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->externalClockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->keyguardFastBioUnlockControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v17

    iget-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/media/MediaDataManager;

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->bootAnimationFinishedCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/systemui/BootAnimationFinishedCache;

    invoke-static/range {v2 .. v19}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/BootAnimationFinishedCache;)Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager_Factory;->get()Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    move-result-object p0

    return-object p0
.end method
