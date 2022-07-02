.class public final Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;
.super Ljava/lang/Object;
.source "LockscreenNotificationIconsOnlyController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationIconTransitionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLockDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
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

.field private final pluginLockStarManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
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

.field private final shadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p5, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p6, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p7, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p8, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p9, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p10, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->pluginLockDataProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p11, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->notificationIconTransitionControllerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p12, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->pluginLockStarManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;"
        }
    .end annotation

    .line 91
    new-instance v13, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

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

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v13
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
    .locals 14

    .line 102
    new-instance v13, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

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

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    return-object v13
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
    .locals 13

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->pluginLockDataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/pluginlock/PluginLockData;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->notificationIconTransitionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->pluginLockStarManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController_Factory;->get()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-result-object p0

    return-object p0
.end method
