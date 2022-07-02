.class public Lcom/android/systemui/wallpaper/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# static fields
.field private static mIsAdaptiveColorMode:Z = false

.field private static mIsEmergencyMode:Z = false

.field private static mIsUltraPowerSavingMode:Z = false

.field private static mSettingsHelper:Lcom/android/systemui/util/SettingsHelper; = null

.field private static sCachedSmartCroppedRect:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedWallpaper:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentWhich:I = 0x2

.field private static sDrawState:Z = false

.field private static sLastAmount:F

.field private static sScreenDensityRateFromBase:F

.field private static sWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaper:Landroid/util/SparseArray;

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 140
    sput v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    return-void
.end method

.method public static applyPreviewVisibility(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1222
    invoke-static {p0, p1, v0, v1, v2}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object p0

    const-wide/16 v2, 0x20

    .line 1223
    invoke-virtual {p0, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    .line 1224
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result p0

    .line 1226
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1227
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1228
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1229
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1230
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1231
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1232
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v5, v0

    invoke-direct {p1, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    .line 1233
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1234
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v0

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1231
    invoke-virtual {v2, p2, p1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyPreviewVisibility 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public static clearCachedSmartCroppedRect(I)V
    .locals 2

    .line 497
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static clearCachedWallpaper(I)V
    .locals 1

    .line 483
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 484
    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 1001
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 1004
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1005
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    int-to-float v6, v2

    div-float v7, v6, v4

    mul-int v8, v1, p2

    mul-int v9, p1, v2

    const/high16 v10, 0x3f800000    # 1.0f

    if-le v8, v9, :cond_1

    int-to-float v3, p2

    div-float/2addr v3, v6

    mul-float/2addr v3, v10

    goto :goto_0

    :cond_1
    int-to-float v6, p1

    div-float/2addr v6, v3

    mul-float v3, v6, v10

    .line 1018
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "metricsHeight="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " metricsWidth="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "WallpaperUtils"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v6, p1

    mul-float/2addr v6, v10

    div-float/2addr v6, v3

    int-to-float v9, p2

    mul-float/2addr v9, v10

    div-float/2addr v9, v3

    div-float v10, v6, v4

    sub-float v10, v5, v10

    const/4 v11, 0x0

    cmpg-float v12, v10, v11

    if-gez v12, :cond_2

    move v10, v11

    :cond_2
    div-float v4, v9, v4

    sub-float v4, v7, v4

    cmpg-float v12, v4, v11

    if-gez v12, :cond_3

    goto :goto_1

    :cond_3
    move v11, v4

    .line 1034
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "widthOrigin = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "heightOrigin = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "scale = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "centerX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "centerY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-nez v3, :cond_4

    .line 1046
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne v2, v3, :cond_4

    const-string p1, "It doesn\'t need to crop bitmap"

    .line 1047
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1049
    :cond_4
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lt v3, v4, :cond_8

    if-lt p1, v4, :cond_8

    if-ge p2, v4, :cond_5

    goto :goto_3

    .line 1054
    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p1, p2

    if-gt p1, v1, :cond_7

    .line 1055
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p1, p2

    if-le p1, v2, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "Cropping..."

    .line 1059
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 1061
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1060
    invoke-static {p0, p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    const-string p0, "Calculated crop size error"

    .line 1056
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_8
    :goto_3
    const-string p0, "Math.round(width) < 1 || Math.round(height) < 1 || mMatricsWidth < 1 || mMatricsHeight < 1"

    .line 1051
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-object v0
.end method

.method public static decodeFileConsiderQMG(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 1166
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    :try_start_1
    invoke-static {v1, v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->decodeStreamConsiderQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1173
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1175
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 1169
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 1173
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 1175
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_1

    .line 1173
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 1175
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1178
    :cond_1
    :goto_4
    throw p0
.end method

.method public static decodeGif(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "WallpaperUtils"

    if-eqz p0, :cond_2

    .line 1251
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1256
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 1257
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 1258
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1260
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1261
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1262
    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1263
    iget-boolean p0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p0, :cond_1

    const-string p0, "decodeGif() bitmap is null"

    .line 1264
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeGif() Exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const-string p0, "decodeGif() bitmap return null"

    .line 1252
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static decodeStreamConsiderQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12

    .line 1184
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1186
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isQMG(Ljava/io/BufferedInputStream;)Z

    move-result v1

    const-string v2, "decodeStream() bitmap is null"

    const-string v3, "WallpaperUtils"

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "android.graphics.BitmapFactory"

    .line 1188
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "decodeStreamQMG"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    .line 1189
    const-class v8, Ljava/io/InputStream;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/graphics/Rect;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-class v8, Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x2

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1191
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v9

    aput-object p1, v5, v10

    aput-object p2, v5, v11

    .line 1192
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_4

    if-eqz p2, :cond_0

    .line 1193
    :try_start_1
    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_4

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "decodeStreamQMG() bitmap is null"

    .line 1194
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1202
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v1

    goto :goto_2

    .line 1197
    :catch_2
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_4

    if-eqz p2, :cond_1

    .line 1198
    iget-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p1, :cond_4

    .line 1199
    :cond_1
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1205
    :cond_2
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_4

    if-eqz p2, :cond_3

    .line 1206
    iget-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p1, :cond_4

    .line 1207
    :cond_3
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1213
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 1215
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v4
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 158
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 159
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 163
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 162
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static dump(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "Dump of WallpaperUtils: "

    .line 501
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  isAdaptiveColorMode: "

    .line 502
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  isExternalLiveWallpaper: "

    .line 503
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  Emergency mode: "

    .line 504
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  UltraPowerSavingMode: "

    .line 505
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  DeXMode: "

    .line 506
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  Type: "

    .line 507
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  isVideoWallpaper: "

    .line 508
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 509
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static getBaseScreenDensityRate(Landroid/content/Context;I)F
    .locals 14

    .line 778
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 780
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 781
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 782
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    .line 783
    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getScreenSizeScaleToBase(Landroid/content/Context;I)F

    move-result v4

    .line 784
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getInitialDisplayDensity(I)I

    move-result v5

    mul-float v6, v4, v2

    mul-float v7, v4, v3

    .line 792
    const-class v8, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const-string v8, "android.hardware.display.category.PRESENTATION"

    .line 793
    invoke-virtual {p0, v8}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    .line 795
    array-length v8, p0

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const-string v11, "WallpaperUtils"

    const/4 v12, 0x1

    if-ge v9, v8, :cond_1

    aget-object v13, p0, v9

    .line 796
    invoke-virtual {v13}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    if-ne v13, p1, :cond_0

    .line 797
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getBaseScreenDensityRate: presentation displayId "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v12

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 802
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq p0, v12, :cond_4

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    cmpg-float p0, v4, v1

    if-gez p0, :cond_3

    .line 805
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBaseScreenDensityRate: physical display size is smaller than logical display size : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-lez v5, :cond_4

    int-to-float p0, v5

    cmpl-float p1, v6, p0

    if-eqz p1, :cond_4

    div-float v1, p0, v6

    .line 813
    :cond_4
    :goto_1
    sget p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sScreenDensityRateFromBase:F

    invoke-static {v1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    .line 814
    sput v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sScreenDensityRateFromBase:F

    .line 815
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBaseScreenDensityRate: currentDpi: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " currentDensity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " scaledDpi: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " scaledDensity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " sScreenDensityRate: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " initialDensityDpi: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resolutionScale: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_5
    sget p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sScreenDensityRateFromBase:F

    return p0

    :cond_6
    return v1
.end method

.method public static getBlurAmount()F
    .locals 1

    .line 238
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sLastAmount:F

    return v0
.end method

.method public static getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 520
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 521
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 525
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 526
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-gt v0, v4, :cond_1

    if-le v1, v3, :cond_2

    .line 528
    :cond_1
    invoke-static {p1, v4, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 532
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 533
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 534
    invoke-static {p0, p1, v0, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 536
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    const/high16 v3, 0x41c80000    # 25.0f

    .line 537
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 538
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 539
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 540
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 541
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 542
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 543
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 544
    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 546
    invoke-virtual {p0}, Landroid/renderscript/RSRuntimeException;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method public static getCachedSmartCroppedRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 493
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getCachedWallpaper(I)Landroid/graphics/Bitmap;
    .locals 1

    and-int/lit8 p0, p0, -0x5

    .line 464
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaper:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static getCurrentDisplayID(Landroid/content/Context;)I
    .locals 10

    const-string v0, " physicalRatio: "

    const-string v1, " logicalRatio: "

    const-string v2, "WallpaperUtils"

    const/4 v3, 0x0

    .line 717
    :try_start_0
    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 718
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v4

    .line 720
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    return v3

    .line 724
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    .line 725
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 726
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v5, p0

    .line 728
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getPhysicalDisplaySizes([Landroid/view/Display;)[Landroid/util/Size;

    move-result-object p0

    move v6, v3

    .line 730
    :goto_0
    array-length v7, p0

    if-ge v6, v7, :cond_2

    .line 731
    aget-object v7, p0, v6

    .line 732
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    .line 733
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v8, v7

    .line 734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentDisplayID: search: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-float v7, v8, v5

    .line 735
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v9, 0x3c23d70a    # 0.01f

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1

    .line 736
    aget-object p0, v4, v6

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentDisplayID: found: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 741
    :cond_2
    aget-object p0, v4, v3

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "getCurrentDisplayID: "

    .line 743
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public static getCurrentWhich()I
    .locals 1

    .line 454
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    return v0
.end method

.method public static getDrawState()Z
    .locals 1

    .line 446
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    return v0
.end method

.method public static getEmergencyMode()Z
    .locals 1

    .line 226
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    return v0
.end method

.method public static getFolderStateBasedWhich(Landroid/content/Context;I)I
    .locals 1

    .line 554
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 555
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result p0

    if-nez p0, :cond_0

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_0
    or-int/lit8 p1, p1, 0x4

    :cond_1
    :goto_0
    return p1
.end method

.method public static getGifWallpaperPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string v0, "WallpaperUtils"

    const/4 v1, 0x0

    .line 1289
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 1290
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object p0

    .line 1291
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getGifWallpaperPath() display: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , gifPath:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGifWallpaperPath() "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static getInitialDisplayDensity(I)I
    .locals 8

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    .line 827
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "checkService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 828
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "window"

    aput-object v3, v1, v5

    const/4 v3, 0x0

    .line 829
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.view.IWindowManager$Stub"

    .line 831
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "asInterface"

    new-array v6, v2, [Ljava/lang/Class;

    .line 832
    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v5

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 833
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.view.IWindowManager"

    .line 835
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getInitialDisplayDensity"

    new-array v4, v2, [Ljava/lang/Class;

    .line 836
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 837
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "WallpaperUtils"

    const-string v1, "getInitialDisplayDensity: "

    .line 839
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getLegacyFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mp4"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;
    .locals 6

    .line 861
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 862
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 864
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v3, "window"

    .line 866
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 867
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 868
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 869
    invoke-virtual {p0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 870
    iget p0, v3, Landroid/graphics/Point;->x:I

    .line 871
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 874
    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 875
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    move v5, p0

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 876
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2

    :cond_3
    if-ne v2, v4, :cond_4

    move p0, v3

    .line 878
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLogicalDisplaySize: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dm "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v5, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static getMultipackSourceToString(ZZZ)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "Custom"

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Lock screen service"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "Theme"

    goto :goto_0

    :cond_2
    const-string p0, "Preload"

    :goto_0
    return-object p0
.end method

.method public static getMultipackTypeToString(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "Gallery Multi pack"

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Theme Multi pack"

    return-object p0

    :cond_1
    const-string p0, "Multi pack"

    return-object p0
.end method

.method public static getPhysicalDisplaySize(I)Landroid/util/Size;
    .locals 10

    .line 884
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.ServiceManager"

    .line 887
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "checkService"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 888
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "window"

    aput-object v5, v3, v7

    .line 889
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android.view.IWindowManager$Stub"

    .line 891
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "asInterface"

    new-array v6, v4, [Ljava/lang/Class;

    .line 892
    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v7

    .line 893
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android.view.IWindowManager"

    .line 895
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getInitialDisplaySize"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    .line 896
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    const-class v9, Landroid/graphics/Point;

    aput-object v9, v8, v4

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    .line 897
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v7

    aput-object v0, v5, v4

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    new-instance p0, Landroid/util/Size;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "WallpaperUtils"

    const-string v2, "getPhysicalDisplaySize: "

    .line 899
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static varargs getPhysicalDisplaySizes([Landroid/view/Display;)[Landroid/util/Size;
    .locals 14

    const-string v0, "getPhysicalDisplaySizes: "

    const-string v1, "WallpaperUtils"

    .line 749
    array-length v2, p0

    new-array v2, v2, [Landroid/util/Size;

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.os.ServiceManager"

    .line 751
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "checkService"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    .line 752
    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "window"

    aput-object v7, v5, v9

    .line 753
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "android.view.IWindowManager$Stub"

    .line 755
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "asInterface"

    new-array v8, v6, [Ljava/lang/Class;

    .line 756
    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v9

    .line 757
    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "android.view.IWindowManager"

    .line 759
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "getInitialDisplaySize"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Class;

    .line 760
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v9

    const-class v11, Landroid/graphics/Point;

    aput-object v11, v10, v6

    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move v7, v9

    .line 761
    :goto_0
    array-length v10, p0

    if-ge v7, v10, :cond_0

    .line 762
    aget-object v10, p0, v7

    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    .line 764
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    new-array v12, v8, [Ljava/lang/Object;

    .line 765
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    aput-object v11, v12, v6

    invoke-virtual {v5, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v10, Landroid/util/Size;

    iget v12, v11, Landroid/graphics/Point;->x:I

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-direct {v10, v12, v11}, Landroid/util/Size;-><init>(II)V

    .line 768
    aput-object v10, v2, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception p0

    .line 771
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public static getRandomFrame(I)I
    .locals 1

    .line 420
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    if-lez p0, :cond_0

    .line 423
    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getScreenSizeScaleToBase(Landroid/content/Context;I)F
    .locals 5

    .line 846
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    .line 847
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getPhysicalDisplaySize(I)Landroid/util/Size;

    move-result-object p1

    .line 848
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 851
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 852
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenSizeScaleToBase:  logicalDisplaySize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")  physicalDisplaySize : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 1

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10504bf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    :cond_1
    const-string p1, "WallpaperUtils"

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStatusBarHeight - dc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    .line 193
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Height from dc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v1, :cond_3

    .line 196
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Height from resource = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public static getUltraPowerSavingMode()Z
    .locals 1

    .line 242
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    return v0
.end method

.method public static getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 4

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoFDFromPackage() pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 372
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Can not found package name"

    .line 375
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "getVideoFDFromPackage() otherContext is null"

    .line 379
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    :try_start_1
    const-string v3, "com.samsung.android.wallpaper.res"

    .line 383
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x2e

    .line 384
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "raw"

    invoke-virtual {v1, p2, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    .line 389
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "getVideoFDFromPackage() assetManager is null"

    .line 392
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 395
    :cond_3
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 398
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 968
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;
    .locals 1

    .line 972
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 974
    :try_start_0
    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDataSource(Landroid/content/Context;Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V

    .line 975
    invoke-virtual {v0, p4, p5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 980
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 982
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_1
    move-exception p0

    .line 977
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 980
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 982
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :catchall_3
    move-exception p0

    .line 980
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p1

    .line 982
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 984
    :goto_2
    throw p0
.end method

.method public static getVideoResID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 406
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "com.samsung.android.wallpaper.res"

    if-nez v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 408
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 409
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLegacyFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo p0, "video_1.mp4"

    return-object p0
.end method

.method public static getWallpaperSourceToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "Preload"

    return-object p0

    :cond_0
    const-string p0, "Theme"

    return-object p0

    :cond_1
    const-string p0, "Custom"

    return-object p0
.end method

.method public static getWallpaperType()I
    .locals 1

    .line 258
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    return v0
.end method

.method public static getWallpaperTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "Image"

    return-object p0

    :cond_0
    const-string p0, "Video"

    return-object p0

    :cond_1
    const-string p0, "Animated"

    return-object p0

    :cond_2
    const-string p0, "Motion"

    return-object p0
.end method

.method public static isAdaptiveColorEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 269
    :try_start_0
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 274
    :cond_0
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    if-eqz v1, :cond_1

    return v0

    .line 279
    :cond_1
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    if-eqz v1, :cond_2

    return v0

    .line 284
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 289
    :cond_3
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    .line 294
    :cond_4
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdaptiveColorEnabled: Error while reading settings ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WallpaperUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isAdaptiveColorMode()Z
    .locals 1

    .line 323
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    return v0
.end method

.method public static isCachedWallpaperAvailable(I)Z
    .locals 3

    and-int/lit8 v0, p0, -0x5

    .line 469
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v1, "WallpaperUtils"

    if-nez v0, :cond_1

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCachedWallpaperAvailable cached wallpaper is null. which = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCachedWallpaperAvailable cached wallpaper is recycled. which = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCoverScreen(I)Z
    .locals 3

    .line 1242
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1244
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_3

    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method public static isDefaultMultipack(Landroid/content/Context;I)Z
    .locals 0

    .line 1141
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperType(I)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDexMode(Landroid/content/Context;)Z
    .locals 0

    .line 332
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isDexStandAloneMode()Z
    .locals 3

    .line 1068
    :try_start_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDexStandAloneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableTilt(Landroid/content/Context;)Z
    .locals 2

    .line 1109
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 1110
    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v1

    .line 1111
    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isMultiPackType(Landroid/content/Context;I)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "WallpaperUtils"

    const-string v0, "isEnableTilt: false (multipack is not applied.)"

    .line 1112
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p0, 0x2

    .line 1116
    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const-string/jumbo v0, "tilt"

    .line 1122
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1124
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static isExternalLiveWallpaper(Landroid/content/Context;)Z
    .locals 0

    .line 214
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isExternalLiveWallpaper()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 1

    .line 350
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 353
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static isMultiPackType(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 1133
    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDefaultMultipack(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    invoke-static {p0, p1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isOpenThemeLockWallpaper()Z
    .locals 1

    .line 246
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLockWallpaper()Z

    move-result v0

    return v0
.end method

.method public static isOpenThemeLook()Z
    .locals 1

    .line 250
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    return v0
.end method

.method public static isQMG(Ljava/io/BufferedInputStream;)Z
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 1147
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 1149
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 1150
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .line 1151
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x51

    if-ne v0, p0, :cond_0

    const/16 p0, 0x47

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1157
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 206
    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getStatusBarHeight(Landroid/content/Context;Landroid/view/View;)I

    move-result p0

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "statusbar statusBarSize = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", view height = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WallpaperUtils"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isSubDisplay()Z
    .locals 3

    .line 568
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 569
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSubDisplay(I)Z
    .locals 1

    and-int/lit8 p0, p0, 0x3c

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoWallpaper()Z
    .locals 2

    .line 262
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockWallpaperType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isWhiteKeyguardWallpaper(J)Z
    .locals 1

    .line 1085
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x1

    if-eqz p0, :cond_2

    .line 1087
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result p1

    :goto_1
    return p1
.end method

.method public static isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
    .locals 4

    .line 1077
    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1081
    :cond_0
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(J)Z

    move-result p0

    return p0
.end method

.method public static loadCoverWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "WallpaperUtils"

    .line 1275
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCoverWallpaper() display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 1277
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1278
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadCoverWallpaper() "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static loadDeviceState(Landroid/content/Context;)V
    .locals 1

    .line 144
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 145
    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFolderStateBasedWhich(Landroid/content/Context;I)I

    move-result p0

    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 148
    :cond_0
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 149
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 150
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result p0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    return-void
.end method

.method public static registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    :cond_1
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    .line 1101
    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method

.method public static removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 1

    .line 1105
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 358
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static scaleMiddleDensityViewIfNeeded(Landroid/view/View;)Z
    .locals 4

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentDisplayID(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getBaseScreenDensityRate(Landroid/content/Context;I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 585
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const-string v2, "WallpaperUtils"

    if-eqz v1, :cond_0

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scaleMiddleDensityViewIfNeeded: screenDensityRate : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setScaledView(FLandroid/view/View;)V

    const/4 p0, 0x1

    return p0

    .line 590
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scaleMiddleDensityViewIfNeeded: skipped : screenDensityRate:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "wallpaper_pref"

    const/4 v1, 0x0

    .line 961
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 962
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_C"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 964
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAdaptiveColorMode(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "lockscreen_pref"

    const/4 v1, 0x0

    .line 310
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "9010"

    .line 311
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "9009"

    const-string v0, "Adaptive color (Default)"

    .line 314
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 316
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setAdaptiveColorMode(Z)V
    .locals 0

    .line 328
    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    return-void
.end method

.method public static setBlurAmount(F)V
    .locals 0

    .line 234
    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sLastAmount:F

    return-void
.end method

.method public static setCachedSmartCroppedRect(ILandroid/graphics/Rect;)V
    .locals 1

    .line 489
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static setCachedWallpaper(ILandroid/graphics/Bitmap;)V
    .locals 1

    and-int/lit8 p0, p0, -0x5

    .line 459
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaper:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static setCurrentWhich(I)V
    .locals 0

    .line 450
    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    return-void
.end method

.method private static setDataSource(Landroid/content/Context;Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 989
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    invoke-virtual {p1, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 992
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 994
    invoke-virtual {p1, p0, p4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setDrawState(Z)V
    .locals 0

    .line 442
    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    return-void
.end method

.method public static setEmergencyMode(Z)V
    .locals 0

    .line 222
    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    return-void
.end method

.method public static setScaledView(FLandroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v0, p0

    move-object v1, p1

    .line 595
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setScaledView(FLandroid/view/View;ZZZZ)V

    return-void
.end method

.method public static setScaledView(FLandroid/view/View;ZZZZ)V
    .locals 10

    if-eqz p1, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_10

    if-nez p4, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 605
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 606
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    const-string p0, "WallpaperUtils"

    const-string/jumbo p1, "setScaledView: skip"

    .line 607
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 612
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 613
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 614
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 616
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move v4, p0

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .line 617
    invoke-static/range {v4 .. v9}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setScaledView(FLandroid/view/View;ZZZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    .line 621
    instance-of p5, p1, Landroid/widget/TextView;

    if-eqz p5, :cond_3

    .line 622
    move-object p5, p1

    check-cast p5, Landroid/widget/TextView;

    .line 623
    invoke-virtual {p5}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    mul-float/2addr v0, p0

    invoke-virtual {p5, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 627
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    .line 629
    iget p2, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez p2, :cond_4

    int-to-float p2, p2

    mul-float/2addr p2, p0

    .line 630
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 632
    :cond_4
    iget p2, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p2, :cond_5

    int-to-float p2, p2

    mul-float/2addr p2, p0

    .line 633
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 637
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result p2

    .line 638
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    if-lez p2, :cond_6

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p2, p2

    .line 640
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 641
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 642
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_6
    if-lez v0, :cond_7

    int-to-float p2, v0

    mul-float/2addr p2, p0

    float-to-int p2, p2

    .line 647
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 648
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 649
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_7
    if-eqz p4, :cond_9

    if-eqz p5, :cond_9

    .line 654
    instance-of p2, p5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_9

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 656
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 658
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result p5

    if-eqz p5, :cond_8

    .line 659
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p4, Landroid/graphics/Rect;->left:I

    .line 660
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float p5, p5

    mul-float/2addr p5, p0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p4, Landroid/graphics/Rect;->top:I

    .line 661
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p4, Landroid/graphics/Rect;->right:I

    .line 662
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p5, p5

    mul-float/2addr p5, p0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p4, Landroid/graphics/Rect;->bottom:I

    .line 663
    iget p5, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 664
    iget p5, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 665
    iget p5, p4, Landroid/graphics/Rect;->left:I

    iget v0, p4, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p5, v0, v2, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 667
    :cond_8
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float p5, p5

    mul-float/2addr p5, p0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p4, Landroid/graphics/Rect;->left:I

    .line 668
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float p5, p5

    mul-float/2addr p5, p0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p4, Landroid/graphics/Rect;->top:I

    .line 669
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float p5, p5

    mul-float/2addr p5, p0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p4, Landroid/graphics/Rect;->right:I

    .line 670
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float p5, p5

    mul-float/2addr p5, p0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    iput p5, p4, Landroid/graphics/Rect;->bottom:I

    .line 671
    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0, v2, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_9
    :goto_1
    if-eqz p3, :cond_f

    .line 677
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->isPaddingRelative()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_c

    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 682
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 685
    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    if-ne p0, p3, :cond_a

    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    if-ne p0, p3, :cond_a

    iget p0, p2, Landroid/graphics/Rect;->right:I

    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p3

    if-ne p0, p3, :cond_a

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    if-eq p0, p3, :cond_b

    :cond_a
    move v1, p4

    .line 690
    :cond_b
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, p3, p4, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2

    .line 692
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 694
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 697
    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    if-ne p0, p3, :cond_d

    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 698
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    if-ne p0, p3, :cond_d

    iget p0, p2, Landroid/graphics/Rect;->right:I

    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    if-ne p0, p3, :cond_d

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    if-eq p0, p3, :cond_e

    :cond_d
    move v1, p4

    .line 703
    :cond_e
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, p3, p4, p2}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    if-nez v1, :cond_10

    .line 707
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_3

    .line 710
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_10
    :goto_3
    return-void
.end method

.method public static setSettingsHelper(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 154
    sput-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method public static setUltraPowerSavingMode(Z)V
    .locals 0

    .line 230
    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    return-void
.end method

.method public static setWallpaperType(I)V
    .locals 0

    .line 254
    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:I

    return-void
.end method
