.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
        ">;"
    }
.end annotation


# instance fields
.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
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

.field private final dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final observerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/WallpaperChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
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

.field private final systemWallpaperColorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private final updateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
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

.field private final wallpaperEventNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/WallpaperEventNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final wallpaperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/WallpaperEventNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/WallpaperChangeObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->updateMonitorProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->pluginLockManagerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->wallpaperEventNotifierProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->systemWallpaperColorsProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p12, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->observerProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p13, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->eventHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/WallpaperEventNotifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/WallpaperChangeObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;",
            ">;)",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;"
        }
    .end annotation

    .line 98
    new-instance v14, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;

    move-object v0, v14

    move-object v1, p0

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

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v14
.end method

.method public static newInstance(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/wallpaper/WallpaperChangeObserver;Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
    .locals 15

    .line 108
    new-instance v14, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-object v0, v14

    move-object v1, p0

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

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/wallpaper/WallpaperChangeObserver;Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    return-object v14
.end method


# virtual methods
.method public get()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
    .locals 14

    .line 82
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/WallpaperManager;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->updateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->pluginLockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->wallpaperEventNotifierProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->systemWallpaperColorsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->observerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->eventHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v13, p0

    check-cast v13, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    invoke-static/range {v1 .. v13}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->newInstance(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/wallpaper/WallpaperChangeObserver;Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController_Factory;->get()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p0

    return-object p0
.end method
