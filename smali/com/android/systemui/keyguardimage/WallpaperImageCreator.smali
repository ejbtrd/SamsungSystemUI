.class public Lcom/android/systemui/keyguardimage/WallpaperImageCreator;
.super Ljava/lang/Object;
.source "WallpaperImageCreator.java"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field private final mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

.field private final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    .line 37
    const-class p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 38
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 39
    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getInstance()Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 40
    new-instance p1, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    invoke-direct {p1}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    return-void
.end method

.method private getDlsWallpaperBitmap(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isVideoWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WallpaperImageCreator"

    const-string v0, "no video wallpaper data"

    .line 149
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperUri()Landroid/net/Uri;

    move-result-object p0

    .line 146
    invoke-static {v1, v2, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isWallpaperSrcPath()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isWallpaperSrcUri()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 156
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_5

    .line 159
    iget p0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method private makeResult(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 135
    invoke-static {p1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x1

    .line 136
    invoke-static {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 6

    .line 46
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result p2

    const-string v0, "WallpaperImageCreator"

    if-nez p2, :cond_c

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    .line 54
    :cond_0
    iget p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne p2, v1, :cond_5

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createImage imageOption.type "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", displayType: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-interface {p2}, Lcom/android/systemui/wallpaper/CoverWallpaper;->isCoverWallpaperRequired()Z

    move-result p2

    .line 58
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 61
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-interface {v3}, Lcom/android/systemui/wallpaper/CoverWallpaper;->isGifWallpaper()Z

    move-result v3

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImage isMultiPackWallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isGifWallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isGifMultiPackWallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    if-eqz v3, :cond_2

    .line 69
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-interface {p2}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->decodeGif(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-interface {p2}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 75
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    invoke-static {p2, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getGifWallpaperPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->decodeGif(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    .line 77
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    invoke-static {p2, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadCoverWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->fitToCoverScreen(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 86
    :cond_5
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result p2

    if-nez p2, :cond_9

    .line 87
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mObserver:Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->await()V

    .line 89
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "bitmap from dls"

    .line 90
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->getDlsWallpaperBitmap(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    move-result-object p2

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-direct {p0, p2, v1, v3}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 92
    :cond_6
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result p2

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 93
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result p2

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_9

    const-string v1, "bitmap from cache"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-direct {p0, p2, v1, v3}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 99
    :cond_7
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p2

    .line 100
    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string v1, "bitmap from view"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-direct {p0, p2, v1, v3}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p2, "bitmap from view is null"

    .line 105
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 110
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 116
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_a

    .line 117
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "bitmap from wallpaper manager"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 121
    :cond_a
    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez p2, :cond_b

    const-string p0, "no bitmap."

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 127
    :cond_b
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p2, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    iget p2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-direct {p0, v1, p2, p1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->makeResult(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_3
    const-string p0, "black bitmap"

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget p0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 50
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 p2, -0x1000000

    .line 51
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    return-object p0
.end method
