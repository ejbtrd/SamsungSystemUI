.class public Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "ViewParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 19

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 35
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isStartTag()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 36
    new-instance v2, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setFrameImageView(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    .line 38
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isScaled()Z

    move-result v4

    const/4 v5, 0x3

    .line 41
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 42
    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseAttribute: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] , ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeWidth()F

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeHeight()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ViewParser"

    .line 43
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeWidth()F

    move-result v7

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    .line 46
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeHeight()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 51
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseAttribute: isWallpaperView : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0, v5}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setWallpaperView(Z)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_19

    .line 55
    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 57
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto/16 :goto_7

    .line 58
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\" "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "img"

    .line 59
    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v12

    .line 61
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPkgName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "drawable"

    invoke-virtual {v12, v11, v14, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 60
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_7

    .line 65
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 66
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    if-nez v4, :cond_6

    if-eqz v5, :cond_6

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceWidth()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceDensity()F

    move-result v14

    mul-float/2addr v13, v14

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceHeight()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceDensity()F

    move-result v15

    mul-float/2addr v14, v15

    int-to-float v15, v11

    mul-float v16, v15, v14

    int-to-float v10, v12

    mul-float v17, v13, v10

    cmpl-float v16, v16, v17

    if-lez v16, :cond_5

    div-float v16, v14, v10

    goto :goto_2

    :cond_5
    div-float v16, v13, v15

    :goto_2
    move/from16 v9, v16

    mul-float/2addr v15, v9

    sub-float v15, v13, v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    .line 77
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v10, v9

    sub-float v10, v14, v10

    mul-float v10, v10, v16

    .line 78
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    .line 79
    invoke-virtual {v0, v9}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaledRatio(F)V

    .line 80
    invoke-virtual {v0, v15}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaledDx(F)V

    .line 81
    invoke-virtual {v0, v10}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaledDy(F)V

    move-object/from16 v16, v1

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaled(Z)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    const-string v3, "drawableWidth = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawableHeight = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "viewWidth = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "viewHeight = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scaledRatio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scaledDx = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scaledDy = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move-object/from16 v16, v1

    move/from16 v18, v3

    :goto_3
    if-eqz v5, :cond_8

    .line 94
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isPreview()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v4, :cond_7

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getResultCallback()Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getResultCallback()Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    move-result-object v1

    invoke-static {v7}, Lcom/android/systemui/wallpaper/WallpaperUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v9, 0x0

    invoke-interface {v1, v3, v9}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    .line 101
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    :goto_4
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    :cond_9
    move-object/from16 v16, v1

    move/from16 v18, v3

    const/4 v9, 0x0

    const-string/jumbo v1, "x"

    .line 104
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 105
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setX(F)V

    goto/16 :goto_8

    :cond_a
    const-string/jumbo v1, "y"

    .line 106
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 107
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_8

    :cond_b
    const-string/jumbo v1, "width"

    .line 108
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 109
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewWidth(I)V

    goto/16 :goto_8

    :cond_c
    const-string v1, "height"

    .line 110
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 111
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewHeight(I)V

    goto/16 :goto_8

    :cond_d
    const-string/jumbo v1, "pivotX"

    .line 112
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v5, :cond_e

    .line 113
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v1

    goto :goto_5

    .line 114
    :cond_e
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v1

    .line 113
    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    goto :goto_8

    :cond_f
    const-string/jumbo v1, "pivotY"

    .line 115
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v5, :cond_10

    .line 116
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v1

    goto :goto_6

    .line 117
    :cond_10
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v1

    .line 116
    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    goto :goto_8

    :cond_11
    const-string v1, "alpha"

    .line 118
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 119
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_8

    :cond_12
    const-string/jumbo v1, "scaleX"

    .line 120
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 121
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    goto :goto_8

    :cond_13
    const-string/jumbo v1, "scaleY"

    .line 122
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 123
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_8

    :cond_14
    :goto_7
    move-object/from16 v16, v1

    move/from16 v18, v3

    const/4 v9, 0x0

    :cond_15
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    move/from16 v3, v18

    goto/16 :goto_1

    .line 127
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    move-result-object v1

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    move-result-object v2

    if-eqz v2, :cond_19

    if-nez v1, :cond_17

    goto :goto_9

    .line 132
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isWallpaperView()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 134
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    const/4 v3, -0x1

    .line 135
    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewWidth(I)V

    .line 136
    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewHeight(I)V

    .line 138
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getImageViewWidth()I

    move-result v3

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getImageViewHeight()I

    move-result v4

    .line 138
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    const/4 v1, -0x2

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewWidth(I)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewHeight(I)V

    :cond_19
    :goto_9
    return-void
.end method
