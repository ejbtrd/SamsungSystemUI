.class public Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
.super Ljava/lang/Object;
.source "ImageWallpaperRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWallpaperRenderer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurDensityDpi:I

.field private mDeviceDisplayType:I

.field private final mDisplayId:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

.field private mIsFolded:Z

.field private mIsInconsistencyWallpaper:Z

.field private mIsNightModeOn:Z

.field private mIsVirtualDisplay:Z

.field private mLidState:I

.field private final mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field private mOnBitmapUpdated:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mPm:Landroid/os/PowerManager;

.field private final mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

.field private mSmartCropYOffset:I

.field private final mSurfaceSize:Landroid/graphics/Rect;

.field private final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field private final mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

.field private final mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mXOffset:F

.field private mYOffset:F


# direct methods
.method public static synthetic $r8$lambda$EyZ4gELnMt-qXIwebKkGU3N7Mto(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->lambda$onSurfaceCreated$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/CoverWallpaper;)V
    .locals 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mOrientation:I

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 91
    iput v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    .line 93
    iput v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    .line 99
    iput-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 102
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 108
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    .line 111
    iput-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsFolded:Z

    .line 132
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    .line 134
    sget-object v2, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperManager not available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iput-object p4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 138
    new-instance p4, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    const/4 v2, 0x0

    invoke-direct {p4, v0, p5, v2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;-><init>(Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$1;)V

    iput-object p4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    .line 139
    new-instance p5, Lcom/android/systemui/glwallpaper/ImageGLProgram;

    invoke-direct {p5, p1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    .line 140
    new-instance v2, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-direct {v2, p5}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;-><init>(Lcom/android/systemui/glwallpaper/ImageGLProgram;)V

    iput-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 145
    const-class p5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/hardware/display/DisplayManager;

    iput-object p5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 146
    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    .line 147
    invoke-static {p4, p2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->access$100(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;I)V

    .line 150
    sget-boolean p5, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p5, :cond_1

    .line 151
    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsVirtualDisplay:Z

    .line 152
    invoke-static {p4, p5}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->access$200(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;Z)V

    .line 155
    :cond_1
    sget-boolean p5, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->isDexMode()Z

    move-result p5

    if-nez p5, :cond_2

    .line 156
    invoke-virtual {p4}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->initWallpaperCache()V

    .line 160
    :cond_2
    new-instance p4, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-direct {p4, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 161
    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mOrientation:I

    const p2, -0xf4240

    .line 165
    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result p2

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 170
    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p2, :cond_4

    .line 171
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p2

    const-string p4, "power"

    .line 173
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/PowerManager;

    iput-object p4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mPm:Landroid/os/PowerManager;

    .line 175
    sget-object p4, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " initial lid state : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 175
    invoke-interface {p3, p4, p5}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput p3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    const/4 p5, 0x5

    if-ne p3, p5, :cond_3

    if-eqz p2, :cond_3

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " flex mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 186
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    .line 190
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearCachedWallpaper()V
    .locals 0

    const/4 p0, 0x1

    .line 442
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 443
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 445
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    .line 446
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 447
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    const/16 p0, 0x11

    .line 448
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 449
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    :cond_0
    return-void
.end method

.method private getCurrentWhich()I
    .locals 1

    .line 423
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x11

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x9

    goto :goto_0

    .line 429
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsVirtualDisplay:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x21

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$onSurfaceCreated$0(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    .line 215
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reload texture failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mOnBitmapUpdated:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    .line 217
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 220
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->setup(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_5

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->isDexMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsVirtualDisplay:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    .line 226
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result v0

    invoke-virtual {v3, p1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;I)V

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {v0, v2, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_4

    .line 232
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v1, v0, v0}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 234
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 234
    invoke-virtual {p1, v1, v0, p0}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private prepareDrawDarkFilter()V
    .locals 6

    .line 461
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->getColor(I)Landroid/app/SemWallpaperColors;

    move-result-object v1

    .line 461
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getWallpaperFilterColor(Landroid/content/Context;Landroid/app/SemWallpaperColors;)[F

    move-result-object v0

    const-string/jumbo v1, "uNightFilter"

    if-eqz v0, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aget v3, v0, v2

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v3, "uFilterColor"

    invoke-virtual {v1, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-static {v1, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 467
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v3, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onDrawFrame dark opacity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " ,surfaceSize : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v3, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onDrawFrame surfaceSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setLidState(I)V
    .locals 1

    .line 538
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 539
    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    .line 540
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->setLidState(I)V

    :cond_0
    return-void
.end method

.method private showLidState(I)Ljava/lang/String;
    .locals 0

    .line 526
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "LID_OPEN"

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "LID_CLOSED"

    return-object p0

    :cond_1
    const-string p0, "LID_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 273
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceSize="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWcgContent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->isWcgContent()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 275
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .locals 0

    return-void
.end method

.method protected isDexMode()Z
    .locals 1

    .line 437
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWcgContent()Z
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    invoke-static {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->access$300(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)Z
    .locals 7

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 284
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    if-eq v4, v1, :cond_1

    .line 285
    iput-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Dark Mode change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsNightModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 290
    :cond_1
    iget v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    const-string v5, " -> "

    if-eq v1, v4, :cond_2

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onConfigurationChanged  mCurDensityDpi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mCurDensityDpi:I

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->clearCachedWallpaper()V

    move v2, v3

    .line 301
    :cond_2
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onConfigurationChanged   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mOrientation:I

    if-eq v4, v1, :cond_3

    .line 305
    iput v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mOrientation:I

    .line 306
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->checkDisplaySize(Landroid/content/res/Configuration;)V

    .line 308
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    .line 315
    :cond_3
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_6

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ,  DeviceDisplay type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    iget v4, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v1, v4, :cond_6

    .line 320
    iget v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    iget-object v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v4

    if-eq v1, v4, :cond_4

    .line 322
    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Dual dex mode . Update Now. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    invoke-direct {p0, v2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 324
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    goto :goto_1

    :cond_4
    move v3, v2

    .line 330
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->checkDisplaySize(Landroid/content/res/Configuration;)V

    .line 334
    :cond_5
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDeviceDisplayType:I

    move v2, v3

    .line 339
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isNeedReDraw "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public onDrawFrame()V
    .locals 3

    const/16 v0, 0x4000

    .line 250
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->prepareDrawDarkFilter()V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->useTexture()V

    .line 257
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->draw()V

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 4

    .line 479
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onFolderStateChanged  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 481
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , mLidState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    invoke-direct {p0, v3}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsFolded:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 484
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mPm:Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, " onFolderStateChanged screen off."

    .line 485
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 488
    :cond_0
    iget p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    if-ne p1, v0, :cond_2

    const-string p1, " do not change lid state. so request update "

    .line 491
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 492
    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    return-void

    :cond_1
    const-string p1, " Fold open. so request update "

    .line 497
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-direct {p0, v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    :cond_2
    return-void
.end method

.method public onStartedWakingUp()Z
    .locals 7

    .line 508
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 509
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v3, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartedWakingUp lid state different. so update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLidState:I

    invoke-direct {p0, v5}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 511
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->showLidState(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsFolded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-interface {v0, v3, v4}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsFolded:Z

    if-eqz v0, :cond_0

    .line 513
    invoke-direct {p0, v2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    goto :goto_0

    .line 515
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setLidState(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    const/4 p0, 0x0

    .line 245
    invoke-static {p0, p0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 3

    .line 208
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSurfaceCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 209
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    sget v1, Lcom/android/systemui/R$raw;->image_wallpaper_vertex_shader:I

    sget v2, Lcom/android/systemui/R$raw;->image_wallpaper_fragment_shader:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->useGLProgram(II)Z

    .line 213
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    new-instance v1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->use(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public reportSurfaceSize()Landroid/util/Size;
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->use(Ljava/util/function/Consumer;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    invoke-static {v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->access$400(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 264
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public setInconsistencyWallpaper(Z)V
    .locals 0

    .line 455
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsInconsistencyWallpaper:Z

    return-void
.end method

.method public setOnBitmapChanged(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mOnBitmapUpdated:Ljava/util/function/Consumer;

    return-void
.end method

.method public updateWallpaperOffset(Landroid/os/IBinder;I)V
    .locals 10

    .line 345
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mIsVirtualDisplay:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_9

    .line 349
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_9

    .line 351
    iget v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->getCurrentWhich()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWallpaperOffset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " lastCropOffset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " wp Type , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , rotation == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v5, 0x3

    if-ne p2, v5, :cond_6

    :cond_1
    if-nez v0, :cond_6

    .line 362
    sget-boolean p2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p2, :cond_2

    .line 363
    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p2}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0x11

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->isDexMode()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x9

    goto :goto_0

    :cond_3
    move p2, v3

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {v0, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRectByWhich(I)Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 376
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 377
    iget-object v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_4

    .line 378
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 379
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1

    .line 381
    :cond_4
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 382
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    move v9, v3

    move v3, v0

    move v0, v9

    :goto_1
    int-to-float v0, v0

    .line 384
    iget-object v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 385
    iget-object v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    .line 386
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    invoke-static {v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->access$400(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    mul-float v0, p2, v5

    .line 390
    iget v6, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    mul-float/2addr v6, v5

    float-to-int v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v3, v7

    add-float/2addr v3, v0

    .line 393
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " origTopPos "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " , calcTopPos "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", scaledHeight "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , smartCropCenterY "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p2, v6

    sub-float/2addr p2, v3

    float-to-int p2, p2

    .line 395
    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    goto :goto_2

    .line 397
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Error Smart rect is Null "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    if-eqz p2, :cond_7

    .line 399
    iput v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    goto :goto_2

    .line 403
    :cond_6
    iput v4, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    .line 405
    :cond_7
    :goto_2
    iget p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    if-eq v1, p2, :cond_8

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " : Set Display offset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    invoke-virtual {p2, p1, v4, v0}, Landroid/app/WallpaperManager;->setDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 410
    sget-object p2, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Wallpaper window proxy does not exist. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 413
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " Do not change Display offset "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSmartCropYOffset:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 346
    :cond_a
    :goto_4
    sget-object p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " ignore updateWallpaperOffset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mDisplayId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
