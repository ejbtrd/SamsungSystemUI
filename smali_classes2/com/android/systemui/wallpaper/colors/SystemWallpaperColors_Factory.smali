.class public final Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors_Factory;
.super Ljava/lang/Object;
.source "SystemWallpaperColors_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors_Factory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;)",
            "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/app/WallpaperManager;)Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;
    .locals 1

    .line 34
    new-instance v0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;-><init>(Landroid/app/WallpaperManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors_Factory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors_Factory;->newInstance(Landroid/app/WallpaperManager;)Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors_Factory;->get()Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    move-result-object p0

    return-object p0
.end method
