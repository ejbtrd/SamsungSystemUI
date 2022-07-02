.class public final Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;
.super Ljava/lang/Object;
.source "WallpaperModule_ProvideCoverWallpaperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/wallpaper/CoverWallpaper;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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

.field private final managerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->contextProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->loggerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->managerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ">;)",
            "Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;"
        }
    .end annotation

    .line 52
    new-instance v6, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideCoverWallpaper(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/wallpaper/CoverWallpaper;
    .locals 0

    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/WallpaperModule;->provideCoverWallpaper(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/CoverWallpaper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/wallpaper/CoverWallpaper;
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockMediator;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->managerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->provideCoverWallpaper(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideCoverWallpaperFactory;->get()Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object p0

    return-object p0
.end method
