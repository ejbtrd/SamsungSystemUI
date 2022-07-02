.class public Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;
.super Ljava/lang/Object;
.source "ImageDarkModeFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageDarkModeFilter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getWallpaperFilterColor(Landroid/content/Context;Landroid/app/SemWallpaperColors;)[F
    .locals 12

    if-eqz p1, :cond_2

    .line 52
    invoke-static {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->isEnable(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/high16 v5, 0x437f0000    # 255.0f

    if-eqz p0, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getDarkModeDimOpacity()F

    move-result p0

    const-string p1, "#000000"

    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 56
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 58
    sget-object v8, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Dark mode enabled : opacity :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v9, 0x3e800000    # 0.25f

    cmpl-float v10, p0, v9

    if-lez v10, :cond_0

    const-string p0, " Over limit dark mode opacity. So change opacity"

    .line 60
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v9

    :cond_0
    new-array v4, v4, [F

    int-to-float v6, v6

    div-float/2addr v6, v5

    aput v6, v4, v3

    int-to-float v3, v7

    div-float/2addr v3, v5

    aput v3, v4, v2

    int-to-float p1, p1

    div-float/2addr p1, v5

    aput p1, v4, v1

    aput p0, v4, v0

    return-object v4

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getAdaptiveDimColor()I

    move-result p0

    .line 66
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getAdaptiveDimOpacity()F

    move-result p1

    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    .line 68
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 69
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 70
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 71
    sget-object v9, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Adaptive dim enabled : col"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , opacity :"

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v4, [F

    int-to-float v4, v6

    div-float/2addr v4, v5

    aput v4, p0, v3

    int-to-float v3, v7

    div-float/2addr v3, v5

    aput v3, p0, v2

    int-to-float v2, v8

    div-float/2addr v2, v5

    aput v2, p0, v1

    aput p1, p0, v0

    return-object p0

    .line 76
    :cond_2
    sget-object p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->TAG:Ljava/lang/String;

    const-string p1, " color object is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isApplyToWallpaper()Z
    .locals 4

    .line 45
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isApplyDarkFilterToWallpaper()Z

    move-result v0

    .line 46
    sget-object v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isApplyToWallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isEnable(Landroid/content/Context;)Z
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->isApplyToWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNightMode(Landroid/content/Context;)Z
    .locals 6

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 38
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "display_night_theme"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    .line 39
    :goto_1
    sget-object v3, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNightMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ui_mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method
