.class public Lcom/android/systemui/assist/ui/PerimeterPathGuide;
.super Ljava/lang/Object;
.source "PerimeterPathGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;,
        Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;
    }
.end annotation


# instance fields
.field private final mBottomCornerRadiusPx:I

.field private final mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

.field private final mDeviceHeightPx:I

.field private final mDeviceWidthPx:I

.field private final mEdgeInset:I

.field private mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

.field private mRotation:I

.field private final mScratchPath:Landroid/graphics/Path;

.field private final mScratchPathMeasure:Landroid/graphics/PathMeasure;

.field private final mTopCornerRadiusPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/assist/ui/CornerPathRenderer;III)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPath:Landroid/graphics/Path;

    .line 82
    new-instance v1, Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    .line 85
    iput v2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    .line 89
    iput-object p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    .line 90
    iput p4, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    .line 91
    iput p5, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    .line 92
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mTopCornerRadiusPx:I

    .line 94
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mBottomCornerRadiusPx:I

    .line 96
    iput p3, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    const/16 p1, 0x8

    new-array p1, p1, [Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    .line 99
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    array-length p2, p1

    if-ge v2, p2, :cond_0

    .line 100
    new-instance p2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;-><init>(Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/android/systemui/assist/ui/PerimeterPathGuide$1;)V

    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->computeRegions()V

    return-void
.end method

.method private computeRegions()V
    .locals 16

    move-object/from16 v0, p0

    .line 209
    iget v1, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    .line 210
    iget v2, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    .line 214
    iget v3, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/16 v3, -0x10e

    goto :goto_0

    :cond_1
    const/16 v3, -0xb4

    goto :goto_0

    :cond_2
    const/16 v3, -0x5a

    .line 226
    :goto_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v3

    .line 227
    iget v9, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    div-int/2addr v9, v6

    int-to-float v9, v9

    iget v10, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    div-int/2addr v10, v6

    int-to-float v10, v10

    invoke-virtual {v8, v3, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 229
    iget v3, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    if-eq v3, v7, :cond_3

    if-ne v3, v4, :cond_4

    .line 230
    :cond_3
    iget v2, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    .line 231
    iget v1, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    sub-int v3, v1, v2

    .line 232
    div-int/2addr v3, v6

    int-to-float v3, v3

    sub-int v4, v2, v1

    div-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    :cond_4
    sget-object v3, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-direct {v0, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v3

    .line 238
    sget-object v4, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-direct {v0, v4}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v4

    .line 240
    sget-object v6, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-direct {v0, v6}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v6

    .line 242
    sget-object v9, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-direct {v0, v9}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v9

    .line 245
    iget-object v10, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v11, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget-object v10, v10, v12

    iget-object v12, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    iget v13, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v13, v13

    .line 246
    invoke-virtual {v12, v3, v13}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v12

    iput-object v12, v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 247
    iget-object v10, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v12, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget-object v10, v10, v13

    iget-object v13, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    iget v14, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v14, v14

    .line 248
    invoke-virtual {v13, v4, v14}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v13

    iput-object v13, v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 249
    iget-object v10, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v13, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP_RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget-object v10, v10, v14

    iget-object v14, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    iget v15, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v15, v15

    .line 250
    invoke-virtual {v14, v9, v15}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v14

    iput-object v14, v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 251
    iget-object v10, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v14, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget-object v10, v10, v15

    iget-object v15, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    iget v7, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v7, v7

    .line 252
    invoke-virtual {v15, v6, v7}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v7

    iput-object v7, v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 254
    iget-object v7, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 255
    iget-object v7, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 256
    iget-object v7, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 257
    iget-object v7, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 260
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 261
    invoke-direct {v0, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v8

    int-to-float v8, v8

    iget v10, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    sub-int v10, v2, v10

    int-to-float v10, v10

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 262
    invoke-direct {v0, v4}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v8

    sub-int v8, v1, v8

    int-to-float v8, v8

    iget v10, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    sub-int v10, v2, v10

    int-to-float v10, v10

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    iget-object v8, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v8, v8, v10

    iput-object v7, v8, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 266
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 267
    invoke-direct {v0, v9}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v8

    sub-int v8, v1, v8

    int-to-float v8, v8

    iget v10, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v10, v10

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 268
    invoke-direct {v0, v6}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v8

    int-to-float v8, v8

    iget v10, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v10, v10

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    iget-object v8, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v8, v8, v10

    iput-object v7, v8, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 271
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 272
    iget v8, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    sub-int v8, v1, v8

    int-to-float v8, v8

    .line 273
    invoke-direct {v0, v4}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v4, v4

    .line 272
    invoke-virtual {v7, v8, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 274
    iget v4, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v9}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 275
    iget-object v1, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v1, v1, v4

    iput-object v7, v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 277
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 278
    iget v4, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v4, v4

    .line 279
    invoke-direct {v0, v6}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v6

    int-to-float v6, v6

    .line 278
    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 280
    iget v4, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v4, v4

    invoke-direct {v0, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 281
    iget-object v2, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v3, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v1, v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 284
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    move v3, v5

    .line 285
    :goto_1
    iget-object v6, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    array-length v7, v6

    if-ge v3, v7, :cond_5

    .line 286
    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 287
    iget-object v6, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    aget-object v6, v6, v3

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    iput v7, v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    .line 288
    iget-object v6, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 292
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    array-length v3, v1

    if-ge v5, v3, :cond_6

    .line 293
    aget-object v3, v1, v5

    aget-object v6, v1, v5

    iget v6, v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    div-float/2addr v6, v4

    iput v6, v3, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    .line 294
    aget-object v3, v1, v5

    iget v3, v3, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    add-float/2addr v2, v3

    .line 295
    aget-object v1, v1, v5

    div-float v3, v2, v4

    iput v3, v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 299
    :cond_6
    array-length v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    return-void
.end method

.method private getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I
    .locals 1

    .line 200
    sget-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mTopCornerRadiusPx:I

    return p0

    .line 202
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mBottomCornerRadiusPx:I

    return p0
.end method

.method private getRegionForPoint(F)Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;
    .locals 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    :cond_0
    rem-float/2addr p1, v1

    add-float/2addr p1, v1

    rem-float/2addr p1, v1

    .line 386
    :cond_1
    invoke-static {}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->values()[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 387
    iget-object v4, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "PerimeterPathGuide"

    const-string p1, "Fell out of getRegionForPoint"

    .line 393
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    return-object p0
.end method

.method private getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;
    .locals 1

    .line 304
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 305
    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x3

    .line 316
    :goto_0
    invoke-static {}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->values()[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object p0

    rem-int/lit8 p1, p1, 0x4

    aget-object p0, p0, p1

    return-object p0
.end method

.method private placePoint(F)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    :cond_0
    rem-float/2addr p1, v1

    add-float/2addr p1, v1

    rem-float/2addr p1, v1

    .line 369
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionForPoint(F)Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    move-result-object v0

    .line 370
    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    iget-object p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p0, p0, v1

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    sub-float/2addr p1, v1

    .line 374
    iget-object p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    .line 375
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p0, p0, v1

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    div-float/2addr p1, p0

    .line 376
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V
    .locals 2

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p2, v1, p2

    iget-object p2, p2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 351
    iget-object p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float/2addr p3, v0

    iget-object p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    .line 352
    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p0

    mul-float/2addr p4, p0

    const/4 p0, 0x1

    .line 351
    invoke-virtual {p2, p3, p4, p1, p0}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    return-void
.end method

.method private strokeSegmentInternal(Landroid/graphics/Path;FF)V
    .locals 8

    .line 320
    invoke-direct {p0, p2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->placePoint(F)Landroid/util/Pair;

    move-result-object p2

    .line 321
    invoke-direct {p0, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->placePoint(F)Landroid/util/Pair;

    move-result-object p3

    .line 323
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    goto :goto_2

    .line 326
    :cond_0
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    .line 328
    invoke-static {}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->values()[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v5, v0, v3

    .line 329
    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    .line 334
    iget-object v6, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 335
    invoke-direct {p0, p1, v5, v7, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    goto :goto_1

    .line 337
    :cond_2
    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, v5, v7, p2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    return p0
.end method

.method public setRotation(I)V
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid rotation provided: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PerimeterPathGuide"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_0
    iput p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->computeRegions()V

    :cond_1
    :goto_0
    return-void
.end method

.method public strokeSegment(Landroid/graphics/Path;FF)V
    .locals 2

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    const/high16 v0, 0x3f800000    # 1.0f

    rem-float/2addr p2, v0

    add-float/2addr p2, v0

    rem-float/2addr p2, v0

    rem-float/2addr p3, v0

    add-float/2addr p3, v0

    rem-float/2addr p3, v0

    cmpl-float v1, p2, p3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 139
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    const/4 p2, 0x0

    .line 142
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    return-void
.end method
