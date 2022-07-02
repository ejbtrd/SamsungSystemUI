.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;
.super Ljava/lang/Object;
.source "FreeformContainerIconLoader.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAppIconFramePath:Landroid/graphics/Path;

.field private mAppIconFrameSize:I

.field private mAppIconPath:Landroid/graphics/Path;

.field private mAppIconSize:I

.field private final mContext:Landroid/content/Context;

.field private mFreeformContainerOuterSize:I

.field private mFreeformContainerOuterSizeRadius:F

.field private mIconFrameColor:I

.field private mIconFrameShadowColor:I

.field private mIconFrameShadowSize:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhotoIconFramePath:Landroid/graphics/Path;

.field private mPhotoIconFrameSize:I

.field private mPhotoIconPath:Landroid/graphics/Path;

.field private mPhotoIconRightBottomPaddingSize:I

.field private mPhotoIconSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->loadResources()V

    return-void
.end method

.method private clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 3

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 325
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 327
    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 328
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method private createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 281
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 284
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-nez p4, :cond_0

    return-object v0

    .line 291
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->createIconFrameShadowBitmap(Landroid/graphics/Path;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 292
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 293
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 292
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 294
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 295
    invoke-virtual {v1, p0, p2, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 296
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p4

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 299
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, p4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, p4

    invoke-virtual {v1, v0, p2, v2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 303
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method private createIconFrameShadowBitmap(Landroid/graphics/Path;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 310
    iget v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 311
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 313
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, 0x0

    .line 315
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameShadowColor:I

    const/4 v4, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 317
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    int-to-float v2, p0

    int-to-float p0, p0

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method private drawShowingIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 193
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconFrameSize:I

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameColor:I

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mFreeformContainerOuterSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 202
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 204
    iget v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mFreeformContainerOuterSizeRadius:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 206
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 205
    invoke-virtual {v2, v0, v3, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 207
    invoke-virtual {v2, p1, v3, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method private drawShowingIconWithPhotoIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 11

    .line 219
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconFrameSize:I

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameColor:I

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconPath:Landroid/graphics/Path;

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 224
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconFramePath:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    iget v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameColor:I

    const/4 v5, 0x0

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconFramePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->createIconFrameShadowBitmap(Landroid/graphics/Path;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 229
    iget v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mFreeformContainerOuterSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 232
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 234
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 236
    iget v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mFreeformContainerOuterSizeRadius:F

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    iget v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconFrameSize:I

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    .line 238
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float v8, v3, v8

    iget v9, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 240
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    sub-float v9, v3, v9

    iget v10, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    .line 242
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 244
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 246
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    .line 245
    invoke-virtual {v5, v2, v8, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 250
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    .line 249
    invoke-virtual {v5, v0, v8, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 251
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 253
    iget v8, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v9, v8

    sub-float v9, v3, v9

    int-to-float v8, v8

    sub-float/2addr v3, v8

    invoke-virtual {v5, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v5, v1, v3, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 258
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 259
    invoke-virtual {v5, p1, v3, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 261
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget v8, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget v7, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    int-to-float v7, v7

    sub-float/2addr v8, v7

    .line 263
    invoke-virtual {v5, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    .line 266
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    .line 265
    invoke-virtual {v5, p2, v3, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 268
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 270
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 274
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method private scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 136
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 138
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 139
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 140
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-lez p0, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p2

    if-eq p0, p2, :cond_1

    .line 143
    sget-boolean p2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[IconLoader] change bitmap densityDpi="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", old="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FreeformContainer"

    .line 144
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    return-object p1

    .line 151
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 152
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private scaleDownAppIconWithBgIfNeeded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 160
    instance-of v0, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    return-object p2

    .line 165
    :cond_0
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 166
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 169
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 168
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 171
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->semCheckComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 176
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    .line 178
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 178
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/pm/PackageManager;->getAppIconAlphaRelativeScaleRateForIconTray(Landroid/graphics/Bitmap;II)F

    move-result p1

    .line 180
    :goto_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 182
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 184
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 185
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr p1, v5

    int-to-float p1, p1

    div-float/2addr p1, v4

    .line 184
    invoke-virtual {v2, v3, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p2, v1, v1, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method


# virtual methods
.method addBadgedIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getShowingIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 120
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[IconLoader] start getShowingIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->scaleDownAppIconWithBgIfNeeded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p3, :cond_1

    .line 124
    iget p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconSize:I

    invoke-direct {p0, p1, p2, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->drawShowingIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 126
    :cond_1
    iget p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconSize:I

    invoke-direct {p0, p1, p2, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconSize:I

    .line 127
    invoke-direct {p0, p3, p2, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->drawShowingIconWithPhotoIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method loadResources()V
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_outer_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mFreeformContainerOuterSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 81
    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mFreeformContainerOuterSizeRadius:F

    .line 82
    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_app_icon_frame_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconFrameSize:I

    .line 83
    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_app_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconSize:I

    .line 84
    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_icon_frame_shadow_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    .line 87
    sget v1, Lcom/android/systemui/R$color;->freeform_container_icon_frame_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameColor:I

    .line 88
    sget v1, Lcom/android/systemui/R$color;->freeform_container_icon_frame_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mIconFrameShadowColor:I

    const v1, 0x1040329

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 92
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    .line 93
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 94
    iget v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconSize:I

    int-to-float v5, v4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 95
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 97
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    .line 98
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 99
    iget v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconFrameSize:I

    int-to-float v4, v3

    div-float/2addr v4, v6

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 101
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    invoke-virtual {v3, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 103
    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_photo_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconSize:I

    .line 104
    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_photo_icon_frame_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    .line 106
    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_photo_icon_right_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    .line 109
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconPath:Landroid/graphics/Path;

    .line 110
    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconSize:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 111
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 113
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconFramePath:Landroid/graphics/Path;

    .line 114
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    .line 115
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, p0, p0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method
