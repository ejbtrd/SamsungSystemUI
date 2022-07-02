.class Lcom/android/systemui/keyguardimage/ImageOptionCreator;
.super Ljava/lang/Object;
.source "ImageOptionCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
    }
.end annotation


# direct methods
.method static createImageOption(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
    .locals 16

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p0, :cond_2b

    if-nez v1, :cond_0

    goto/16 :goto_12

    .line 39
    :cond_0
    new-instance v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    invoke-direct {v3}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;-><init>()V

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    new-array v5, v4, [Z

    .line 42
    fill-array-data v5, :array_0

    const-string v6, "&"

    .line 43
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "="

    .line 47
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 48
    array-length v10, v8

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    aget-object v10, v8, v7

    .line 53
    aget-object v8, v8, v9

    .line 54
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createImageOption() key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    const-string v14, "ImageOptionCreator"

    invoke-static {v14, v12, v13}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x3

    const/4 v14, -0x1

    const/4 v15, 0x5

    sparse-switch v12, :sswitch_data_0

    :goto_1
    move v10, v14

    goto/16 :goto_2

    :sswitch_0
    const-string v12, "display"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const/16 v10, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "color_main"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/16 v10, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v12, "colorClock"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x7

    goto :goto_2

    :sswitch_3
    const-string v12, "paletteIndex"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x6

    goto :goto_2

    :sswitch_4
    const-string/jumbo v12, "type"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    move v10, v15

    goto :goto_2

    :sswitch_5
    const-string/jumbo v12, "white_theme"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    move v10, v4

    goto :goto_2

    :sswitch_6
    const-string v12, "color_bg_main"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_1

    :cond_8
    move v10, v13

    goto :goto_2

    :sswitch_7
    const-string v12, "fontColor"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_1

    :cond_9
    move v10, v11

    goto :goto_2

    :sswitch_8
    const-string v12, "color_bg_second"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_1

    :cond_a
    move v10, v9

    goto :goto_2

    :sswitch_9
    const-string v12, "color_second"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_1

    :cond_b
    move v10, v7

    :goto_2
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v8, :cond_c

    .line 139
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1b

    :cond_c
    if-eqz v8, :cond_1b

    const-string/jumbo v10, "virtual"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const/16 v10, 0x21

    .line 140
    iput v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    goto/16 :goto_4

    :pswitch_1
    if-nez v0, :cond_1b

    move v10, v0

    move v11, v7

    goto/16 :goto_6

    .line 133
    :pswitch_2
    iput-boolean v9, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    if-eqz v8, :cond_d

    .line 134
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1b

    :cond_d
    invoke-static {v8}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 135
    iput-object v8, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_3
    if-eqz v8, :cond_e

    .line 119
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1b

    :cond_e
    invoke-static {v8}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 120
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColorIndex:I

    goto/16 :goto_4

    :pswitch_4
    const-string/jumbo v10, "wallpaper"

    .line 90
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 91
    iput v9, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    goto/16 :goto_4

    :cond_f
    const-string v10, "cover_wallpaper"

    .line 92
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 93
    iput v15, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/16 v10, 0x11

    .line 94
    iput v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    goto/16 :goto_4

    :cond_10
    const-string v10, "all"

    .line 95
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 96
    iput v13, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    goto/16 :goto_4

    :cond_11
    const-string v10, "clockColor"

    .line 97
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/16 v10, 0xa

    .line 98
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 99
    iput v11, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    .line 100
    iput-boolean v9, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    if-eqz v10, :cond_12

    .line 101
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1b

    :cond_12
    invoke-static {v10}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 102
    iput-object v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    goto/16 :goto_4

    :cond_13
    const-string v10, "clock"

    .line 104
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 105
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 106
    iput v11, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    if-eqz v10, :cond_14

    .line 107
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1b

    :cond_14
    invoke-static {v10}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 108
    iput-object v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    goto/16 :goto_4

    :cond_15
    const-string v10, "cover"

    .line 110
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 111
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 112
    iput v4, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    if-eqz v10, :cond_16

    .line 113
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1b

    :cond_16
    invoke-static {v10}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 114
    iput-object v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    goto :goto_4

    :pswitch_5
    const-string/jumbo v10, "true"

    .line 59
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    const-string v10, "on"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    :cond_17
    move v0, v7

    :goto_3
    if-ge v0, v4, :cond_18

    .line 61
    iget-object v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    const v11, -0xbababb

    aput v11, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_18
    move v10, v9

    goto :goto_5

    :pswitch_6
    if-nez v0, :cond_1b

    move v10, v0

    goto :goto_6

    :pswitch_7
    if-eqz v8, :cond_19

    .line 124
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1b

    :cond_19
    invoke-static {v8}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 125
    iget-boolean v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    if-eqz v10, :cond_1a

    .line 126
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    goto :goto_4

    .line 128
    :cond_1a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockFontColorType:I

    goto :goto_4

    :pswitch_8
    if-nez v0, :cond_1b

    move v10, v0

    move v11, v13

    goto :goto_6

    :pswitch_9
    if-nez v0, :cond_1b

    move v10, v0

    move v11, v9

    goto :goto_6

    :cond_1b
    :goto_4
    move v10, v0

    :goto_5
    move v11, v14

    :goto_6
    if-le v11, v14, :cond_1c

    .line 147
    :try_start_0
    iget-object v0, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    const/16 v12, 0x10

    invoke-static {v8, v12}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v0, v11

    .line 148
    aput-boolean v9, v5, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_7
    move v0, v10

    goto/16 :goto_0

    :cond_1d
    if-nez v0, :cond_1f

    move v0, v7

    :goto_8
    if-ge v0, v4, :cond_1f

    .line 156
    aget-boolean v6, v5, v0

    if-nez v6, :cond_1e

    .line 158
    iput-boolean v9, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    goto :goto_9

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1f
    :goto_9
    if-eqz p2, :cond_20

    return-object v3

    .line 169
    :cond_20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 172
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 173
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 175
    iget v6, v0, Landroid/graphics/Point;->x:I

    iput v6, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realWidth:I

    .line 176
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realHeight:I

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v9, :cond_21

    goto :goto_a

    :cond_21
    move v9, v7

    :goto_a
    iput-boolean v9, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    const-string v6, "/portrait"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_10

    :cond_22
    const-string v6, "/landscape"

    .line 183
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 184
    iput v5, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 185
    iput v4, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    goto :goto_11

    :cond_23
    const-string v6, "/custom"

    .line 186
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :try_start_1
    const-string/jumbo v0, "width"

    .line 190
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "height"

    .line 191
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    move v6, v7

    .line 193
    :goto_b
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_c
    if-eqz v6, :cond_28

    if-nez v7, :cond_24

    goto :goto_f

    :cond_24
    const/4 v0, 0x0

    if-ge v6, v7, :cond_25

    if-gt v6, v4, :cond_25

    if-gt v7, v5, :cond_25

    int-to-float v1, v6

    int-to-float v4, v4

    :goto_d
    div-float/2addr v1, v4

    goto :goto_e

    :cond_25
    if-le v6, v7, :cond_26

    if-gt v6, v5, :cond_26

    if-gt v7, v4, :cond_26

    int-to-float v1, v6

    int-to-float v4, v5

    goto :goto_d

    :cond_26
    move v1, v0

    :goto_e
    cmpl-float v0, v1, v0

    if-nez v0, :cond_27

    return-object v2

    .line 210
    :cond_27
    iput v1, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    .line 211
    iput v6, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 212
    iput v7, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    goto :goto_11

    :cond_28
    :goto_f
    return-object v2

    .line 181
    :cond_29
    :goto_10
    iput v4, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    .line 182
    iput v5, v3, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    :cond_2a
    :goto_11
    return-object v3

    :cond_2b
    :goto_12
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70ca7330 -> :sswitch_9
        -0x6d5ea82e -> :sswitch_8
        -0x5d5573ac -> :sswitch_7
        -0x289da769 -> :sswitch_6
        -0x223bddcd -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x11487717 -> :sswitch_3
        0x4b50e26b -> :sswitch_2
        0x4cdbb515 -> :sswitch_1
        0x63a518c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3

    .line 220
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 223
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNumeric() return false - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ImageOptionCreator"

    invoke-static {v2, p0, v1}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
