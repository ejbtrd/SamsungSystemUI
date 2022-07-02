.class Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;
.super Ljava/lang/Object;
.source "PluginLockWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginLockWallpaperData"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHints:Landroid/app/SemWallpaperColors;

.field private mPath:Ljava/lang/String;

.field private mResourceId:I

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 721
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    const/4 v0, 0x0

    .line 722
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 723
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 724
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    .line 725
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 726
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$1;)V
    .locals 0

    .line 720
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 747
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getHints()Landroid/app/SemWallpaperColors;
    .locals 0

    .line 779
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()I
    .locals 0

    .line 775
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 729
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method hasData()Z
    .locals 2

    .line 787
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method resetAll()V
    .locals 1

    const/4 v0, -0x2

    .line 806
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 807
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 811
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 812
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 813
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    const/4 v0, 0x0

    .line 814
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    return-void
.end method

.method resetData()V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 799
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 800
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 801
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    const/4 v0, 0x0

    .line 802
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    return-void
.end method

.method resetType()V
    .locals 1

    const/4 v0, -0x2

    .line 791
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 751
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 752
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 753
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 755
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    :cond_0
    return-void
.end method

.method setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 761
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    return-void
.end method

.method public setHints(Landroid/app/SemWallpaperColors;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 742
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 743
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 733
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    .line 770
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 771
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    return-void
.end method
