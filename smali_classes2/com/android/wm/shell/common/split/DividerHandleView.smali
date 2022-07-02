.class public Lcom/android/wm/shell/common/split/DividerHandleView;
.super Landroid/view/View;
.source "DividerHandleView.java"


# static fields
.field private static final HEIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/wm/shell/common/split/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/wm/shell/common/split/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCircleDiameter:I

.field private final mCircleMargin:I

.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private mHandleType:I

.field private mHeight:I

.field private mHorizontalHandlerTopMargin:I

.field private mIsHorizontalDivision:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lcom/android/wm/shell/common/split/DividerHandleView$1;

    const-string/jumbo v2, "width"

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/common/split/DividerHandleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/android/wm/shell/common/split/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    .line 64
    new-instance v1, Lcom/android/wm/shell/common/split/DividerHandleView$2;

    const-string v2, "height"

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/common/split/DividerHandleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/android/wm/shell/common/split/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/R$styleable;->DividerHandleView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 110
    :try_start_0
    sget p2, Lcom/android/wm/shell/R$styleable;->DividerHandleView_handleType:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHandleType:I

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, v1, :cond_1

    move v2, v1

    goto :goto_0

    .line 114
    :cond_0
    sget p2, Lcom/android/wm/shell/R$styleable;->DividerHandleView_isHorizontalDivision:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsHorizontalDivision:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHandleType:I

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_3

    .line 121
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->docked_divider_handle_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->docked_divider_handle_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 139
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$color;->docked_divider_handle_circle:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->docked_divider_handle_circle_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    return-void

    :catchall_0
    move-exception p0

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    throw p0
.end method

.method static synthetic access$000(Lcom/android/wm/shell/common/split/DividerHandleView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/wm/shell/common/split/DividerHandleView;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/wm/shell/common/split/DividerHandleView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/wm/shell/common/split/DividerHandleView;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    return p1
.end method

.method private drawDividerHandle(Landroid/graphics/Canvas;FFF)V
    .locals 10

    .line 249
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    int-to-float v1, v0

    add-float/2addr v1, p4

    .line 250
    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsHorizontalDivision:Z

    if-eqz v2, :cond_0

    .line 251
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    int-to-float v3, v2

    sub-float v3, p2, v3

    int-to-float v0, v0

    sub-float/2addr v3, v0

    int-to-float v0, v2

    sub-float v5, p2, v0

    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, p4

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 253
    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move v3, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 255
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    int-to-float v0, p2

    add-float v3, p3, v0

    int-to-float p2, p2

    add-float/2addr p3, p2

    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    int-to-float p2, p2

    add-float v5, p3, p2

    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 259
    :cond_0
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    int-to-float v3, v2

    sub-float v3, p4, v3

    int-to-float v0, v0

    sub-float v6, v3, v0

    int-to-float v0, v2

    sub-float v8, p4, v0

    iget-object v9, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 262
    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 264
    iget p4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    int-to-float v0, p4

    add-float v4, v1, v0

    int-to-float p4, p4

    add-float/2addr v1, p4

    iget p4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    int-to-float p4, p4

    add-float v6, v1, p4

    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHorizontalHandlerTopMargin:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    .line 224
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHandleType:I

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 226
    :cond_0
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/wm/shell/common/split/DividerHandleView;->drawDividerHandle(Landroid/graphics/Canvas;FFF)V

    :cond_1
    return-void
.end method

.method public setTouching(ZZ)V
    .locals 0

    return-void
.end method
