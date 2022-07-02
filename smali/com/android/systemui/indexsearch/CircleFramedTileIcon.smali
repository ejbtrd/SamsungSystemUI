.class public Lcom/android/systemui/indexsearch/CircleFramedTileIcon;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedTileIcon.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mBgPaint:Landroid/graphics/Paint;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 9

    .line 64
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    iput p2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    .line 66
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    sget-object v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    instance-of p1, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    int-to-float p1, p2

    .line 73
    sget-object v3, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_non_default_tile_icon_resize_ratio:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float/2addr p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 78
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 80
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v3, v5

    .line 82
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, p1

    sub-int/2addr v4, v5

    .line 83
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, p1

    add-int/2addr v5, p1

    .line 87
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v3, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, p2

    int-to-float v5, p2

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 90
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    const/high16 v5, 0x43b40000    # 360.0f

    .line 91
    invoke-virtual {v4, v3, v6, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 93
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 95
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBgPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    .line 96
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->getCircleBGColor()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 101
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->getIconColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 104
    invoke-virtual {v1, v0, p1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 106
    iput p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    .line 108
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    .line 109
    new-instance p1, Landroid/graphics/RectF;

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-direct {p1, v6, v6, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    return-void
.end method

.method private getCircleBGColor()I
    .locals 2

    .line 129
    sget-object p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$color;->qs_tile_round_background_on:I

    sget-object v1, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method private getIconColor()I
    .locals 2

    .line 118
    sget-object p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$color;->qs_tile_icon_on_dim_tint_color:I

    sget-object v1, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/indexsearch/CircleFramedTileIcon;
    .locals 0

    .line 58
    sput-object p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    .line 59
    new-instance p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 136
    iget v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    iget v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    int-to-float v2, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    sub-float/2addr v3, v2

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 156
    iget p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 153
    iget p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
