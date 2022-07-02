.class public Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;
.super Ljava/lang/Object;
.source "ExtractAppIconUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtractAppIconUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getApplicationIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static isGray(II)Z
    .locals 3

    .line 98
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return v2

    .line 102
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 103
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    sub-int/2addr v1, p0

    if-gt v0, p1, :cond_3

    neg-int p0, p1

    if-ge v0, p0, :cond_1

    if-gt v1, p1, :cond_3

    :cond_1
    if-ge v1, p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static processDominantColorInImage(Landroid/graphics/drawable/Drawable;)I
    .locals 17

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 15
    sget-object v1, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;->TAG:Ljava/lang/String;

    const-string v2, "The bitmap provided to processDominantColorInImage() is null. using default color."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 20
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/edgelighting/utils/DrawableUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    const/16 v3, 0x14

    int-to-float v4, v3

    div-float/2addr v2, v4

    .line 31
    new-instance v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;

    invoke-direct {v4}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;-><init>()V

    .line 33
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 34
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v7, v5, v6

    .line 36
    div-int/lit8 v7, v7, 0x2

    int-to-double v8, v3

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 39
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v8, v8

    new-array v8, v8, [I

    move v9, v0

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v9, v5, :cond_7

    move v12, v0

    :goto_1
    if-ge v12, v6, :cond_5

    .line 44
    invoke-virtual {v1, v9, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    .line 46
    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    const/16 v15, 0xfa

    if-ge v14, v15, :cond_2

    :cond_1
    move-object/from16 v16, v1

    goto :goto_2

    .line 50
    :cond_2
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 51
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 52
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    float-to-int v3, v2

    .line 55
    div-int v16, v14, v3

    add-int v16, v16, v15

    mul-int/2addr v3, v0

    add-int v16, v16, v3

    .line 58
    aget v3, v8, v16

    add-int/lit8 v3, v3, 0x1

    .line 60
    aput v3, v8, v16

    if-le v3, v11, :cond_3

    .line 66
    invoke-virtual {v4, v14, v15, v0}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->setBestColor(III)V

    move v11, v3

    :cond_3
    if-le v3, v10, :cond_1

    move-object/from16 v16, v1

    const/4 v1, 0x5

    .line 69
    invoke-static {v13, v1}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;->isGray(II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 71
    invoke-virtual {v4, v14, v15, v0}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->setBestMatchingColor(III)V

    move v10, v3

    if-le v3, v7, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x14

    move-object/from16 v1, v16

    const/4 v0, 0x0

    const/16 v3, 0x14

    goto :goto_1

    :cond_5
    move-object/from16 v16, v1

    :goto_3
    if-le v11, v7, :cond_6

    const/16 v0, 0x14

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x14

    move-object/from16 v1, v16

    const/4 v0, 0x0

    const/16 v3, 0x14

    goto :goto_0

    :cond_7
    move v0, v3

    .line 84
    :goto_4
    div-int/2addr v5, v0

    div-int/2addr v6, v0

    mul-int/2addr v5, v6

    int-to-float v0, v5

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v0, v1

    .line 86
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-le v10, v0, :cond_8

    .line 90
    invoke-virtual {v4}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->getBestMatchingColor()I

    move-result v0

    return v0

    .line 93
    :cond_8
    invoke-virtual {v4}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->getBestColor()I

    move-result v0

    return v0
.end method
