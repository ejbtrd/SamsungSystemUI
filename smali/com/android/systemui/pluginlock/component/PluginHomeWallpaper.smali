.class public Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;
.super Ljava/lang/Object;
.source "PluginHomeWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginHomeWallpaper"

.field private static sScreenType:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWallpaperDataList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mContext:Landroid/content/Context;

    const/4 p0, 0x0

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>(Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$1;)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-direct {p1, v1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>(Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$1;)V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static setScreenTypeChanged(I)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenTypeChanged() type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginHomeWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sput p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    return-void
.end method


# virtual methods
.method public clearWallpaper()V
    .locals 2

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onDataCleared()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->resetAll()V

    .line 175
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_2

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->resetAll()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentScreen()I
    .locals 0

    .line 118
    sget p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    return p0
.end method

.method public getKey(I)I
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method public getWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 6

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWallpaperBitmap() path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PluginHomeWallpaper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mContext:Landroid/content/Context;

    if-ne p1, v5, :cond_0

    move v3, v5

    :cond_0
    invoke-static {p0, v2, v5, v3}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mContext:Landroid/content/Context;

    if-ne p1, v5, :cond_2

    move v3, v5

    :cond_2
    invoke-static {p0, v0, v5, v3}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    const-string p0, "getWallpaperBitmap() no available data"

    .line 89
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method public getWallpaperPath(I)Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperType(I)I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getType()I

    move-result p0

    return p0

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWallpaperType: WallpaperData is null for screen ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginHomeWallpaper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method

.method public resetWallpaper(I)V
    .locals 1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->resetAll()V

    const-string p1, "PluginHomeWallpaper"

    const-string/jumbo v0, "resetWallpaper()"

    .line 160
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 162
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setWallpaper(IIILjava/lang/String;)V
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWallpaper() wallpaperType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginHomeWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>(Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$1;)V

    .line 49
    iget-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->hasData()Z

    move-result p1

    .line 54
    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->setType(I)V

    if-eqz p3, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    const-string/jumbo p0, "setWallpaper() unsupported type!"

    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_1
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0, p4}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->setPath(Ljava/lang/String;)V

    .line 68
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setWallpaper() mWallpaperUpdateCallback:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz p0, :cond_3

    xor-int/lit8 p1, p1, 0x1

    .line 70
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    :cond_3
    return-void
.end method

.method public setWallpaperHints(Landroid/app/SemWallpaperColors;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    sget v1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->setHints(Landroid/app/SemWallpaperColors;)V

    :cond_0
    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    return-void
.end method

.method public updateHint()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz v0, :cond_0

    .line 147
    sget v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHint() onWallpaperHintUpdate will be called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginHomeWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    :cond_0
    return-void
.end method
