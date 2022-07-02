.class public interface abstract Lcom/android/systemui/wallpaper/CoverWallpaper;
.super Ljava/lang/Object;
.source "CoverWallpaper.java"


# virtual methods
.method public abstract getCoverWhich()I
.end method

.method public abstract getFirstWallpaperType()I
.end method

.method public abstract getWallpaperBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getWallpaperPath()Ljava/lang/String;
.end method

.method public abstract getWallpaperType()I
.end method

.method public abstract isCoverWallpaperRequired()Z
.end method

.method public abstract isGifWallpaper()Z
.end method

.method public abstract onHomeWallpaperDestroyed()V
.end method

.method public abstract onHomeWallpaperReady()V
.end method

.method public abstract setWallpaperUpdateConsumer(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
