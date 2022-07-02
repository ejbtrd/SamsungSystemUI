.class public abstract Lcom/android/systemui/wallpaper/WallpaperModule;
.super Ljava/lang/Object;
.source "WallpaperModule.java"


# direct methods
.method public static provideCoverWallpaper(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/wallpaper/CoverWallpaper;
    .locals 7

    .line 36
    new-instance v6, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpaper/CoverWallpaperController;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockManager;)V

    return-object v6
.end method

.method public static provideWallpaperLogger(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;
    .locals 3

    .line 26
    new-instance v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    const-string v1, "Wallpaper"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogBufferFactory;)V

    return-object v0
.end method
