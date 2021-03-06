.class public Lcom/android/wm/shell/pip/PipBoundsAlgorithm;
.super Ljava/lang/Object;
.source "PipBoundsAlgorithm.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PipBoundsAlgorithm"


# instance fields
.field private mDefaultAspectRatio:F

.field private mDefaultMinSize:I

.field private mDefaultMinWidth:I

.field private mDefaultSizePercent:F

.field private mDefaultStackGravity:I

.field private mMaxAspectRatio:F

.field private mMaxAspectRatioForMinSize:F

.field private mMinAspectRatio:F

.field private mMinAspectRatioForMinSize:F

.field private mOverridableMinSize:I

.field private final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field private mScreenEdgeInsets:Landroid/graphics/Point;

.field private final mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 70
    iput-object p3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    .line 75
    iget p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setAspectRatio(F)V

    .line 76
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinSize:I

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/pip/PipBoundsState;->setMinEdgeSize(I)V

    return-void
.end method

.method private adjustSizeToAspectRatio(Landroid/util/Size;F)Landroid/util/Size;
    .locals 1

    .line 275
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    cmpl-float p0, p0, p2

    if-lez p0, :cond_0

    .line 278
    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 281
    :cond_0
    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private dpToPx(FLandroid/util/DisplayMetrics;)I
    .locals 0

    const/4 p0, 0x1

    .line 449
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;
    .locals 8

    .line 290
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 293
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {v7, v1, v1, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 295
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, v7, p2, p1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-object v7

    .line 301
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 302
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 303
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    .line 304
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getOverrideMinSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 308
    iget p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    invoke-direct {p0, v2, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->adjustSizeToAspectRatio(Landroid/util/Size;F)Landroid/util/Size;

    move-result-object p2

    goto :goto_0

    .line 311
    :cond_1
    iget v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    iget v4, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinSize:I

    int-to-float v4, v4

    .line 312
    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p2

    .line 311
    invoke-virtual {p0, v2, v4, v5, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object p2

    :goto_0
    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {v7, v1, v1, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 319
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 320
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, v7, p2, p1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    goto :goto_2

    .line 322
    :cond_2
    iget v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    .line 324
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->isImeShowing()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getImeHeight()I

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v1

    .line 325
    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipBoundsState;->isShelfShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 326
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getShelfHeight()I

    move-result v1

    .line 323
    :cond_4
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, p1

    move-object v6, v7

    .line 322
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_2
    return-object v7
.end method

.method public static getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 194
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method private isValidPictureInPictureAspectRatio(F)Z
    .locals 1

    .line 219
    iget v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    .line 220
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reloadResources(Landroid/content/Context;)V
    .locals 4

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10500c2

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    const v0, 0x10e005d

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    const v0, 0x105012d

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinSize:I

    const v0, 0x1050267

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mOverridableMinSize:I

    const v0, 0x10402f9

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 97
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_1

    .line 98
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v2

    .line 99
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mScreenEdgeInsets:Landroid/graphics/Point;

    const v0, 0x10500c5

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    const v0, 0x10500c4

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    const v0, 0x10500c3

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultSizePercent:F

    const v0, 0x10500c1

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatioForMinSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 108
    iput v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatioForMinSize:F

    .line 111
    sget v0, Lcom/android/wm/shell/R$dimen;->pip_min_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinWidth:I

    return-void
.end method

.method private transformBoundsToAspectRatioIfValid(Landroid/graphics/Rect;FZZ)Landroid/graphics/Rect;
    .locals 1

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 226
    invoke-direct {p0, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->isValidPictureInPictureAspectRatio(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public adjustNormalBoundsToFitMenu(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 6

    if-nez p2, :cond_0

    return-object p1

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-object p1

    .line 533
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 534
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    .line 535
    :goto_0
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v2, v5, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 543
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 545
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    cmpl-float p1, v1, v2

    if-lez p1, :cond_4

    .line 547
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p2, p1

    .line 548
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_2

    .line 550
    :cond_4
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p1, p2

    .line 551
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 555
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p2, p1

    .line 556
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_2

    .line 559
    :cond_6
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p1, p2

    .line 560
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 562
    :goto_2
    invoke-virtual {v0, v4, v4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 564
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 565
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result p1

    .line 564
    invoke-virtual {p0, v0, p1, v3, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    return-object v0
.end method

.method public applySnapFraction(Landroid/graphics/Rect;F)V
    .locals 1

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 438
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMinAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMaxAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultStackGravity="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mSnapAlgorithm"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAdjustedDestinationBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatioIfValid(Landroid/graphics/Rect;FZZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getAspectRatioOrDefault(Landroid/app/PictureInPictureParams;)F
    .locals 1

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result p0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultAspectRatio()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getDefaultAspectRatio()F
    .locals 0

    .line 201
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    return p0
.end method

.method public getDefaultBounds()Landroid/graphics/Rect;
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMinSize()I
    .locals 0

    .line 442
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinSize:I

    return p0
.end method

.method public getDefaultSnapBounds(F)Landroid/graphics/Rect;
    .locals 8

    .line 333
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 336
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 337
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 338
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getOverrideMinSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->adjustSizeToAspectRatio(Landroid/util/Size;F)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinSize:I

    int-to-float v2, v2

    .line 347
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    .line 346
    invoke-virtual {p0, v1, v2, v4, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object v0

    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v7, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 354
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 355
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, v7, v0, p1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    goto :goto_2

    .line 357
    :cond_1
    iget p1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    .line 359
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->isImeShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getImeHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 360
    :goto_1
    iget-object v6, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipBoundsState;->isShelfShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 361
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getShelfHeight()I

    move-result v2

    .line 358
    :cond_3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    move v0, p1

    move v2, v4

    move v4, v5

    move v5, p0

    move-object v6, v7

    .line 357
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_2
    return-object v7
.end method

.method public getEntryDestinationBounds()Landroid/graphics/Rect;
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getReentryState()Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->getSnapFraction()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->getSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinWidth:I

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 155
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 156
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v3

    .line 155
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatioIfValid(Landroid/graphics/Rect;FZZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getInsetBounds(Landroid/graphics/Rect;)V
    .locals 6

    .line 371
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 373
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v3

    .line 375
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v3

    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    .line 376
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p0

    .line 373
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    if-lez v1, :cond_1

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    if-lez v1, :cond_1

    .line 180
    new-instance v0, Landroid/util/Size;

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mOverridableMinSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mOverridableMinSize:I

    .line 181
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 1

    .line 392
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    .line 397
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->isImeShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 398
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipBoundsState;->getImeHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 396
    :goto_0
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2

    .line 409
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 410
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    .line 410
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->right:I

    .line 412
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    .line 412
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p4

    .line 414
    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getNormalBounds()Landroid/graphics/Rect;
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 134
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getAspectRatio()F

    move-result v1

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatioIfValid(Landroid/graphics/Rect;FZZ)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSizeForAspectRatio(FFII)Landroid/util/Size;
    .locals 2

    .line 458
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    .line 459
    iget p4, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultSizePercent:F

    mul-float/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    .line 468
    iget p3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatioForMinSize:F

    cmpg-float p3, p1, p3

    const/high16 p4, 0x3f800000    # 1.0f

    if-lez p3, :cond_1

    iget p3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatioForMinSize:F

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    mul-float/2addr p3, p2

    .line 483
    invoke-static {p3, p2}, Landroid/graphics/PointF;->length(FF)F

    move-result p2

    mul-float/2addr p2, p2

    mul-float p3, p1, p1

    add-float/2addr p3, p4

    div-float/2addr p2, p3

    float-to-double p2, p2

    .line 484
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p2, p2

    int-to-float p3, p2

    mul-float/2addr p3, p1

    .line 486
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_1

    :cond_1
    :goto_0
    cmpg-float p3, p1, p4

    if-gtz p3, :cond_2

    int-to-float p3, p2

    div-float/2addr p3, p1

    .line 473
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_2

    :cond_2
    int-to-float p3, p2

    mul-float/2addr p3, p1

    .line 477
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    :goto_1
    move v1, p3

    move p3, p2

    move p2, v1

    :goto_2
    cmpg-float p4, p1, p4

    if-gtz p4, :cond_3

    .line 490
    iget p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinWidth:I

    if-le p0, p2, :cond_3

    int-to-float p2, p0

    div-float/2addr p2, p1

    .line 492
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p3

    move p2, p0

    .line 495
    :cond_3
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p2, p3}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public getSizeForAspectRatio(Landroid/util/Size;FF)Landroid/util/Size;
    .locals 1

    .line 503
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    .line 504
    invoke-static {p3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    int-to-float p1, p0

    div-float/2addr p1, p2

    .line 511
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    int-to-float p1, p0

    mul-float/2addr p1, p2

    .line 515
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v0, p1

    move p1, p0

    move p0, v0

    .line 517
    :goto_0
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p2
.end method

.method public getSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    return-object p0
.end method

.method public getSnapFraction(Landroid/graphics/Rect;)F
    .locals 1

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/Context;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    return-void
.end method

.method public transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getStashedState()I

    move-result v2

    .line 240
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getOverrideMinSize()Landroid/util/Size;

    move-result-object v1

    if-nez p3, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 258
    invoke-direct {p0, v1, p2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->adjustSizeToAspectRatio(Landroid/util/Size;F)Landroid/util/Size;

    move-result-object p2

    goto :goto_2

    .line 261
    :cond_1
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p3

    .line 262
    iget p4, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinSize:I

    int-to-float p4, p4

    .line 263
    invoke-virtual {p3}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p3

    .line 262
    invoke-virtual {p0, p2, p4, v1, p3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object p2

    goto :goto_2

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 247
    iget p4, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mDefaultMinSize:I

    goto :goto_1

    .line 248
    :cond_3
    iget-object p4, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p4}, Lcom/android/wm/shell/pip/PipBoundsState;->getOverrideMinEdgeSize()I

    move-result p4

    :goto_1
    if-eqz p3, :cond_4

    .line 249
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipBoundsState;->getMinEdgeSize()I

    move-result p4

    .line 252
    :cond_4
    new-instance p3, Landroid/util/Size;

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p3, v1, v2}, Landroid/util/Size;-><init>(II)V

    int-to-float p4, p4

    .line 252
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getSizeForAspectRatio(Landroid/util/Size;FF)Landroid/util/Size;

    move-result-object p2

    .line 267
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    sub-float/2addr p3, p4

    float-to-int p3, p3

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr p4, v2

    float-to-int p4, p4

    .line 269
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 270
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p1, p0, v0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void
.end method
