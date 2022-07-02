.class Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;
.super Ljava/lang/Object;
.source "ImageWallpaperRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperTexture"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field private final mDimensions:Landroid/graphics/Rect;

.field private mDisplayId:I

.field private mIsVirtualDisplay:Z

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWcgContent:Z


# direct methods
.method private constructor <init>(Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;)V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 562
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 563
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    .line 564
    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$1;)V
    .locals 0

    .line 546
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;-><init>(Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;I)V
    .locals 0

    .line 546
    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->setDisplayId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;Z)V
    .locals 0

    .line 546
    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->setVirtualWallpaperDisplay(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;)Z
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->isWcgContent()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;)Landroid/graphics/Rect;
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->getTextureDimensions()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getHash()Ljava/lang/String;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method private getTextureDimensions()Landroid/graphics/Rect;
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    return-object p0
.end method

.method private isWcgContent()Z
    .locals 0

    .line 612
    iget-boolean p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    return p0
.end method

.method private loadBitmap(I)V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 649
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDisplayId:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 651
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_4

    .line 652
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/16 v1, 0x11

    if-eqz v0, :cond_2

    .line 653
    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDisplayId:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    move v2, v0

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    :goto_0
    move v2, v1

    .line 663
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " loadBitmap lidState : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " display id = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDisplayId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 664
    :cond_4
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mIsVirtualDisplay:Z

    if-eqz p1, :cond_6

    const/16 v2, 0x21

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v2, 0x9

    .line 667
    :cond_6
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->loadCachedBitmapByWhich(I)V

    :cond_7
    return-void
.end method

.method private loadCachedBitmapByWhich(I)V
    .locals 4

    .line 672
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->isCoverWhich(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->isCoverWallpaperRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, " loadCachedBitmapByWhich : from cover wallpaper controller"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-interface {p1}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    .line 677
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 678
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCachedBitmapByWhich get cached bitmap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 682
    :cond_1
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " loadCachedBitmapByWhich : from wallpaper manager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1, p1, v1}, Landroid/app/WallpaperManager;->getBitmap(ZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 685
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 686
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1, p1, v1}, Landroid/app/WallpaperManager;->getBitmap(ZIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method private setDisplayId(I)V
    .locals 0

    .line 636
    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDisplayId:I

    return-void
.end method

.method private setVirtualWallpaperDisplay(Z)V
    .locals 0

    .line 641
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mIsVirtualDisplay:Z

    return-void
.end method


# virtual methods
.method public initWallpaperCache()V
    .locals 7

    .line 694
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 698
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v1

    const-string v2, "  , "

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 699
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, " Already exist in cache :  main "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v4, 0x5

    .line 702
    invoke-virtual {v1, v3, v4, v3}, Landroid/app/WallpaperManager;->getBitmap(ZIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 704
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load main bitmap save in cache "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 706
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(ILandroid/graphics/Bitmap;)V

    .line 710
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x11

    .line 712
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string v0, " Already exist in cache :  sub"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 715
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v3, v0, v3}, Landroid/app/WallpaperManager;->getBitmap(ZIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 717
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load sub bitmap save in cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 720
    invoke-static {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(ILandroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public isCoverWhich(I)Z
    .locals 3

    and-int/lit8 p0, p1, 0x10

    const/16 v0, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public use(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 569
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 576
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->loadBitmap(I)V

    .line 578
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    goto :goto_0

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->wallpaperSupportsWcg(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWcgContent:Z

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 585
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 586
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load bitmap w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , h : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mDimensions:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 589
    :cond_1
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t get bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    .line 594
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 596
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter p1

    .line 597
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_5

    .line 598
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 603
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_CACHED_WALLPAPER:Z

    if-nez v1, :cond_4

    .line 604
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    const/4 v0, 0x0

    .line 606
    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 608
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 592
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
