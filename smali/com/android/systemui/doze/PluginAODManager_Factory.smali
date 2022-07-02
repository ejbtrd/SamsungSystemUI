.class public final Lcom/android/systemui/doze/PluginAODManager_Factory;
.super Ljava/lang/Object;
.source "PluginAODManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/doze/PluginAODManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final aodLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final coverScreenManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;"
        }
    .end annotation
.end field

.field private final displayLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeServiceHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
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

.field private final faceWidgetWallpaperUtilsWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationShadeWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginFaceWidgetManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLockMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
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

.field private final statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final subScreenManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final wallpaperControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 86
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 87
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 88
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 89
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginFaceWidgetManagerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 90
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 91
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 92
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 93
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 94
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 95
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 96
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->subScreenManagerProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 97
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->coverScreenManagerLazyProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 98
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->faceWidgetWallpaperUtilsWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 99
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 100
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 101
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->aodLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 102
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/PluginAODManager_Factory;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/doze/PluginAODManager_Factory;"
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

    .line 127
    new-instance v18, Lcom/android/systemui/doze/PluginAODManager_Factory;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/doze/PluginAODManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v18
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/doze/PluginAODManager;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")",
            "Lcom/android/systemui/doze/PluginAODManager;"
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

    .line 142
    new-instance v18, Lcom/android/systemui/doze/PluginAODManager;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/doze/PluginAODManager;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/dump/DumpManager;)V

    return-object v18
.end method


# virtual methods
.method public get()Lcom/android/systemui/doze/PluginAODManager;
    .locals 19

    move-object/from16 v0, p0

    .line 107
    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->lockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginFaceWidgetManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->subScreenManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->coverScreenManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v13

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->faceWidgetWallpaperUtilsWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->aodLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/log/SamsungServiceLogger;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/systemui/dump/DumpManager;

    invoke-static/range {v2 .. v18}, Lcom/android/systemui/doze/PluginAODManager_Factory;->newInstance(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager_Factory;->get()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    return-object p0
.end method
