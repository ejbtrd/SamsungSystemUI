.class public final Lcom/android/systemui/wallpaper/WallpaperModule_ProvideWallpaperLoggerFactory;
.super Ljava/lang/Object;
.source "WallpaperModule_ProvideWallpaperLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBufferFactory;",
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
            "Lcom/android/systemui/log/LogBufferFactory;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideWallpaperLoggerFactory;->factoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/wallpaper/WallpaperModule_ProvideWallpaperLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBufferFactory;",
            ">;)",
            "Lcom/android/systemui/wallpaper/WallpaperModule_ProvideWallpaperLoggerFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideWallpaperLoggerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideWallpaperLoggerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideWallpaperLogger(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperModule;->provideWallpaperLogger(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/wallpaper/log/WallpaperLogger;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideWallpaperLoggerFactory;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBufferFactory;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideWallpaperLoggerFactory;->provideWallpaperLogger(Lcom/android/systemui/log/LogBufferFactory;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperModule_ProvideWallpaperLoggerFactory;->get()Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object p0

    return-object p0
.end method
