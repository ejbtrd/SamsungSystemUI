.class Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;
.super Ljava/lang/Object;
.source "PluginHomeWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WallpaperData"
.end annotation


# instance fields
.field private mHints:Landroid/app/SemWallpaperColors;

.field private mPath:Ljava/lang/String;

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 184
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 187
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$1;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>()V

    return-void
.end method


# virtual methods
.method public getHints()Landroid/app/SemWallpaperColors;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 190
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method hasData()Z
    .locals 2

    .line 224
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

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

    .line 234
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 236
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 237
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 230
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setHints(Landroid/app/SemWallpaperColors;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 212
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    return-void
.end method
