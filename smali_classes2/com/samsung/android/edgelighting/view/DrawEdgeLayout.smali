.class public Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "DrawEdgeLayout.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mDeltaX:F

.field private mDeltaY:F

.field protected mHeight:I

.field mIsMultiResolutionSupoorted:Z

.field mIsNoFrame:Z

.field private mMaskBgPaint:Landroid/graphics/Paint;

.field private mMaskPaint:Landroid/graphics/Paint;

.field protected mMaskPath:Landroid/graphics/Path;

.field private mMaskingEdgeArea:Z

.field private mOrientation:I

.field protected mOutsideMaskPath:Landroid/graphics/Path;

.field protected mRadius:F

.field protected mRadiusWeight:F

.field private mSecX1:F

.field private mSecX2:F

.field private mSecX3:F

.field private mSecY1:F

.field private mSecY2:F

.field private mSecY3:F

.field protected mStrokeWidth:F

.field protected mWidth:I

.field private mWidthDepth:F

.field private mX1:F

.field private mX2:F

.field private mX3:F

.field private mY1:F

.field private mY2:F

.field private mY3:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const-class p1, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->TAG:Ljava/lang/String;

    .line 36
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 37
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 43
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getRadiusController()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadiusWeight:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 49
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 51
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidthDepth:F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX3:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY3:F

    .line 55
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX3:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY3:F

    .line 57
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getRoundDeltaX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaX:F

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-class p1, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->TAG:Ljava/lang/String;

    .line 36
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 37
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 43
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getRadiusController()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadiusWeight:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 49
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 51
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidthDepth:F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX3:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY3:F

    .line 55
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX3:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY3:F

    .line 57
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getRoundDeltaX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaX:F

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-class p1, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->TAG:Ljava/lang/String;

    .line 36
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 37
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 43
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getRadiusController()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadiusWeight:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 49
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 51
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidthDepth:F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX3:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY3:F

    .line 55
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX3:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY3:F

    .line 57
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getRoundDeltaX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaX:F

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const-class p1, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->TAG:Ljava/lang/String;

    .line 36
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 37
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 43
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getRadiusController()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadiusWeight:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 49
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 51
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidthDepth:F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX3:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY3:F

    .line 55
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY1:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY2:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX3:F

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY3:F

    .line 57
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getRoundDeltaX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaX:F

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method private getMaskingDrawableId(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "depth"
        }
    .end annotation

    .line 168
    sget p0, Lcom/samsung/android/edgelighting/R$drawable;->star_original_01:I

    add-int/2addr p0, p1

    return p0
.end method

.method private getOnehandRadius()F
    .locals 5

    .line 340
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    .line 341
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 342
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 343
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 344
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 346
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "reduce_screen_running_info"

    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ";"

    .line 349
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 350
    array-length v2, p0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    .line 351
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    const v2, 0x3f266666    # 0.65f

    cmpg-float v2, p0, v2

    if-gez v2, :cond_1

    const v3, 0x3feccccd    # 1.85f

    sub-float/2addr v3, p0

    mul-float/2addr v3, p0

    goto :goto_1

    :cond_1
    move v3, p0

    .line 361
    :goto_1
    sget-boolean v4, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_CANVAS:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_TOP:Z

    if-eqz v4, :cond_3

    :cond_2
    const v3, 0x3ff9999a    # 1.95f

    sub-float/2addr v3, p0

    mul-float/2addr v3, p0

    if-gez v2, :cond_3

    const v2, 0x40033333    # 2.05f

    sub-float/2addr v2, p0

    mul-float v3, p0, v2

    :cond_3
    const/high16 p0, 0x40c00000    # 6.0f

    mul-float/2addr v0, p0

    .line 368
    iget p0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    mul-float/2addr v0, v3

    return v0
.end method

.method private initializeScreen()V
    .locals 5

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/edgelighting/R$dimen;->navigation_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 102
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    .line 103
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    goto :goto_0

    .line 105
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    .line 106
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    .line 109
    :goto_0
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->getRadiusController()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadiusWeight:F

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    .line 119
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x18894

    if-lt v0, v3, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "high_contrast"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgPaint:Landroid/graphics/Paint;

    .line 130
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 197
    iget-boolean v2, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsNoFrame:Z

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 202
    :cond_0
    iget v2, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    if-eqz v2, :cond_b

    iget v2, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 204
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 207
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 208
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 209
    iget v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    if-le v3, v4, :cond_2

    .line 210
    div-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    iput v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadius:F

    goto :goto_0

    .line 212
    :cond_2
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadius:F

    .line 216
    :goto_0
    iget v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadius:F

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadiusWeight:F

    mul-float/2addr v3, v4

    const v4, 0x3db020c5    # 0.086f

    mul-float/2addr v4, v3

    .line 218
    iput v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaY:F

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 221
    iget-object v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 224
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v5, 0xff

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 225
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/edgelighting/utils/Utils;->isOneHandMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->getOnehandRadius()F

    move-result v3

    .line 229
    iget-object v8, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    int-to-float v4, v4

    sub-float v11, v4, v10

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    int-to-float v4, v4

    sub-float v12, v4, v10

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v9, v10

    move v13, v3

    move v14, v3

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 230
    iget-object v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 231
    iget-object v8, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    int-to-float v11, v4

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    int-to-float v12, v4

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_1

    .line 232
    :cond_3
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isNotRoundingModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    iget-object v8, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    iget v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    int-to-float v3, v3

    sub-float v11, v3, v10

    iget v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    int-to-float v3, v3

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v4, v10

    sub-float v12, v3, v4

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v9, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_1

    .line 235
    :cond_4
    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaX:F

    cmpl-float v5, v4, v7

    if-lez v5, :cond_8

    .line 236
    iget v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    int-to-float v6, v5

    iget v8, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, v8, v9

    sub-float/2addr v6, v10

    .line 237
    iget v10, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    int-to-float v10, v10

    mul-float v11, v8, v9

    sub-float/2addr v10, v11

    div-float v11, v6, v9

    cmpl-float v12, v3, v11

    if-lez v12, :cond_5

    move v3, v11

    :cond_5
    div-float v11, v10, v9

    cmpl-float v12, v3, v11

    if-lez v12, :cond_6

    move v3, v11

    :cond_6
    mul-float v11, v3, v9

    sub-float/2addr v6, v11

    mul-float/2addr v4, v9

    sub-float/2addr v6, v4

    sub-float/2addr v10, v11

    .line 243
    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaY:F

    mul-float/2addr v9, v4

    sub-float/2addr v10, v9

    .line 245
    iget-object v9, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    int-to-float v5, v5

    sub-float/2addr v5, v8

    add-float/2addr v8, v3

    add-float/2addr v8, v4

    invoke-virtual {v9, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v4, 0x3c449ba6    # 0.012f

    mul-float/2addr v4, v3

    .line 247
    iput v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX1:F

    const v5, 0x3e9db22d    # 0.308f

    mul-float/2addr v5, v3

    .line 248
    iput v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX2:F

    const v8, 0x3edd2f1b    # 0.432f

    mul-float/2addr v8, v3

    .line 249
    iput v8, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX3:F

    const v9, 0x3efced91    # 0.494f

    mul-float/2addr v9, v3

    .line 250
    iput v9, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY1:F

    const v11, 0x3f50a3d7    # 0.815f

    mul-float/2addr v11, v3

    .line 251
    iput v11, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY2:F

    const v12, 0x3f604189    # 0.876f

    mul-float/2addr v12, v3

    .line 252
    iput v12, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY3:F

    const v13, 0x3e978d50    # 0.296f

    mul-float/2addr v13, v3

    .line 253
    iput v13, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX1:F

    const v13, 0x3ea45a1d    # 0.321f

    mul-float/2addr v13, v3

    .line 254
    iput v13, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX2:F

    .line 255
    iget v13, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaX:F

    add-float/2addr v13, v3

    sub-float/2addr v13, v8

    iput v13, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX3:F

    const v13, 0x3e243fe6    # 0.1604f

    mul-float/2addr v13, v3

    .line 256
    iput v13, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY1:F

    .line 257
    iput v13, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY2:F

    .line 258
    iget v13, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaY:F

    add-float/2addr v3, v13

    sub-float/2addr v3, v12

    iput v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY3:F

    .line 260
    iget-object v13, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    neg-float v14, v4

    neg-float v15, v9

    neg-float v3, v5

    neg-float v4, v11

    neg-float v5, v8

    neg-float v8, v12

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v8

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 261
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX1:F

    neg-float v4, v4

    iget v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY1:F

    neg-float v5, v5

    iget v8, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX2:F

    neg-float v8, v8

    iget v9, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY2:F

    neg-float v9, v9

    iget v11, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX3:F

    neg-float v11, v11

    iget v12, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY3:F

    neg-float v12, v12

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v11

    move/from16 v22, v12

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 263
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    neg-float v4, v6

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 265
    iget-object v11, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX3:F

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX2:F

    sub-float v5, v3, v4

    neg-float v12, v5

    iget v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY3:F

    iget v8, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY2:F

    sub-float v13, v5, v8

    sub-float v4, v3, v4

    neg-float v14, v4

    sub-float v15, v5, v8

    neg-float v3, v3

    move/from16 v16, v3

    move/from16 v17, v5

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 266
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX3:F

    iget v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX2:F

    sub-float v8, v4, v5

    neg-float v8, v8

    sub-float v5, v4, v5

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v18, v5, v9

    iget v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX1:F

    sub-float v5, v4, v5

    neg-float v5, v5

    iget v11, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY3:F

    iget v12, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY1:F

    sub-float v20, v11, v12

    neg-float v4, v4

    move-object/from16 v16, v3

    move/from16 v17, v8

    move/from16 v19, v5

    move/from16 v21, v4

    move/from16 v22, v11

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 268
    iget v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidthDepth:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 269
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 270
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 273
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 274
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 277
    :cond_7
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 278
    iget-object v11, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX1:F

    iget v13, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY1:F

    iget v14, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX2:F

    iget v15, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY2:F

    iget v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX3:F

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY3:F

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 279
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX1:F

    iget v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY1:F

    iget v8, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX2:F

    iget v10, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY2:F

    iget v11, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX3:F

    iget v12, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY3:F

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 281
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 283
    iget-object v10, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v15, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX3:F

    iget v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecX2:F

    sub-float v11, v15, v3

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY3:F

    iget v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mSecY2:F

    sub-float v6, v4, v5

    neg-float v12, v6

    sub-float v13, v15, v3

    sub-float v3, v4, v5

    neg-float v14, v3

    neg-float v3, v4

    move/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 284
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX3:F

    iget v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX2:F

    sub-float v17, v4, v5

    sub-float v5, v4, v5

    mul-float/2addr v5, v9

    neg-float v5, v5

    iget v6, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mX1:F

    sub-float v19, v4, v6

    iget v6, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY3:F

    iget v7, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mY1:F

    sub-float v7, v6, v7

    neg-float v7, v7

    neg-float v6, v6

    move-object/from16 v16, v3

    move/from16 v18, v5

    move/from16 v20, v7

    move/from16 v21, v4

    move/from16 v22, v6

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    goto :goto_1

    .line 287
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/edgelighting/R$dimen;->stroke_width_1dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    invoke-static {v3, v4}, Lcom/samsung/android/edgelighting/utils/Utils;->getFinalRadius(Landroid/content/Context;Z)F

    move-result v3

    .line 294
    iget-object v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    int-to-float v4, v4

    sub-float v8, v4, v7

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    int-to-float v4, v4

    sub-float v9, v4, v7

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v6, v7

    move v10, v3

    move v11, v3

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 295
    iget-object v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 296
    iget-object v5, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    int-to-float v8, v4

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    int-to-float v9, v4

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 298
    iget-object v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 299
    iget-object v6, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    const/4 v8, 0x0

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    int-to-float v9, v4

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    int-to-float v10, v4

    iget v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    add-float v11, v3, v4

    add-float v12, v3, v4

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 302
    :goto_1
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    if-eqz v3, :cond_9

    .line 303
    iget-object v4, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 305
    :cond_9
    iget-object v3, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    if-eqz v3, :cond_a

    .line 306
    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 308
    :cond_a
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_b
    :goto_2
    return-void

    .line 198
    :cond_c
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getStrokeWidth()F
    .locals 0

    .line 189
    iget p0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 314
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 315
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    .line 316
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    .line 318
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, p2, :cond_1

    .line 319
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 320
    iget p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOrientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/high16 p1, 0x42b40000    # 90.0f

    .line 321
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_0
    const/high16 p1, -0x3d4c0000    # -90.0f

    .line 323
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 326
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOrientation:I

    .line 328
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIsMultiResolutionSupoorted(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSupported"
        }
    .end annotation

    .line 372
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    return-void
.end method

.method public setLightingWidthDepth(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widthDepth"
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mDeltaX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    int-to-float v0, p1

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->getMaskingDrawableId(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 145
    invoke-static {p1}, Lcom/samsung/android/edgelighting/utils/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mOrientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 150
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 152
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 153
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 157
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_1
    return-void
.end method

.method protected setMaskingEdgeArea(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMasking"
        }
    .end annotation

    .line 336
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    return-void
.end method

.method public setRadiusWeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weight"
        }
    .end annotation

    .line 332
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadiusWeight:F

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 184
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 185
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidthDepth:F

    return-void
.end method

.method public setStrokeWidth(FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "depth"
        }
    .end annotation

    .line 176
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 179
    invoke-virtual {p0, p2}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->setLightingWidthDepth(I)V

    return-void
.end method
