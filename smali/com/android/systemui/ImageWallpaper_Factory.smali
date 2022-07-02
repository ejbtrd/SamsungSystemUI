.class public final Lcom/android/systemui/ImageWallpaper_Factory;
.super Ljava/lang/Object;
.source "ImageWallpaper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/ImageWallpaper;",
        ">;"
    }
.end annotation


# instance fields
.field private final coverWallpaperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/CoverWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private final displayControllerOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;>;"
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/CoverWallpaper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper_Factory;->loggerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/ImageWallpaper_Factory;->systemWallpaperColorsProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/android/systemui/ImageWallpaper_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/android/systemui/ImageWallpaper_Factory;->coverWallpaperProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/android/systemui/ImageWallpaper_Factory;->displayControllerOptionalProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ImageWallpaper_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/wallpaper/CoverWallpaper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;>;)",
            "Lcom/android/systemui/ImageWallpaper_Factory;"
        }
    .end annotation

    .line 54
    new-instance v6, Lcom/android/systemui/ImageWallpaper_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/CoverWallpaper;Ljava/util/Optional;)Lcom/android/systemui/ImageWallpaper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/wallpaper/CoverWallpaper;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;)",
            "Lcom/android/systemui/ImageWallpaper;"
        }
    .end annotation

    .line 60
    new-instance v6, Lcom/android/systemui/ImageWallpaper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper;-><init>(Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/CoverWallpaper;Ljava/util/Optional;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/ImageWallpaper;
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper_Factory;->systemWallpaperColorsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper_Factory;->coverWallpaperProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaper;

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper_Factory;->displayControllerOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/ImageWallpaper_Factory;->newInstance(Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/CoverWallpaper;Ljava/util/Optional;)Lcom/android/systemui/ImageWallpaper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper_Factory;->get()Lcom/android/systemui/ImageWallpaper;

    move-result-object p0

    return-object p0
.end method
