.class Landroidx/picker3/widget/SeslColorSwatchView;
.super Landroid/view/View;
.source "SeslColorSwatchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;,
        Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;
    }
.end annotation


# instance fields
.field private ROUNDED_CORNER_RADIUS_IN_Px:I

.field private corners:[F

.field private mColorBrightness:[[I

.field private mColorSwatch:[[I

.field private mColorSwatchDescription:[[Ljava/lang/StringBuilder;

.field private mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mCursorIndex:Landroid/graphics/Point;

.field private mCursorRect:Landroid/graphics/Rect;

.field private mFromUser:Z

.field private mIsColorInSwatch:Z

.field private mListener:Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSelectedVirtualViewId:I

.field mStrokePaint:Landroid/graphics/Paint;

.field private mSwatchItemHeight:F

.field private mSwatchItemWidth:F

.field private mSwatchRect:Landroid/graphics/RectF;

.field private mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Landroidx/picker3/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker3/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker3/widget/SeslColorSwatchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    move-object/from16 v0, p0

    .line 125
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x0

    .line 44
    iput v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    const/4 v2, -0x1

    .line 65
    iput v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 67
    iput-boolean v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    const/4 v3, 0x1

    .line 68
    iput-boolean v3, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    const/16 v4, 0xb

    new-array v5, v4, [[I

    const/16 v6, 0xa

    new-array v7, v6, [I

    .line 82
    fill-array-data v7, :array_0

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_2

    const/4 v8, 0x2

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_3

    const/4 v9, 0x3

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_4

    const/4 v10, 0x4

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_5

    const/4 v11, 0x5

    aput-object v7, v5, v11

    new-array v7, v6, [I

    fill-array-data v7, :array_6

    const/4 v12, 0x6

    aput-object v7, v5, v12

    new-array v7, v6, [I

    fill-array-data v7, :array_7

    const/4 v13, 0x7

    aput-object v7, v5, v13

    new-array v7, v6, [I

    fill-array-data v7, :array_8

    const/16 v14, 0x8

    aput-object v7, v5, v14

    new-array v7, v6, [I

    fill-array-data v7, :array_9

    const/16 v15, 0x9

    aput-object v7, v5, v15

    new-array v7, v6, [I

    fill-array-data v7, :array_a

    aput-object v7, v5, v6

    iput-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    new-array v4, v4, [[I

    new-array v5, v6, [I

    .line 95
    fill-array-data v5, :array_b

    aput-object v5, v4, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_c

    aput-object v1, v4, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_d

    aput-object v1, v4, v8

    new-array v1, v6, [I

    fill-array-data v1, :array_e

    aput-object v1, v4, v9

    new-array v1, v6, [I

    fill-array-data v1, :array_f

    aput-object v1, v4, v10

    new-array v1, v6, [I

    fill-array-data v1, :array_10

    aput-object v1, v4, v11

    new-array v1, v6, [I

    fill-array-data v1, :array_11

    aput-object v1, v4, v12

    new-array v1, v6, [I

    fill-array-data v1, :array_12

    aput-object v1, v4, v13

    new-array v1, v6, [I

    fill-array-data v1, :array_13

    aput-object v1, v4, v14

    new-array v1, v6, [I

    fill-array-data v1, :array_14

    aput-object v1, v4, v15

    new-array v1, v6, [I

    fill-array-data v1, :array_15

    aput-object v1, v4, v6

    iput-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorBrightness:[[I

    new-array v1, v8, [I

    .line 110
    fill-array-data v1, :array_16

    const-class v3, Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/StringBuilder;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 129
    invoke-direct/range {p0 .. p0}, Landroidx/picker3/widget/SeslColorSwatchView;->initCursorDrawable()V

    .line 130
    invoke-direct/range {p0 .. p0}, Landroidx/picker3/widget/SeslColorSwatchView;->initAccessibility()V

    .line 132
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$dimen;->sesl_color_picker_oneui_3_color_swatch_view_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 133
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    sget v4, Landroidx/picker/R$dimen;->sesl_color_picker_oneui_3_color_swatch_view_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v5, 0x41300000    # 11.0f

    div-float/2addr v1, v5

    iput v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 134
    new-instance v1, Landroid/graphics/RectF;

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 135
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 136
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchRect:Landroid/graphics/RectF;

    .line 138
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 139
    invoke-static {v10}, Landroidx/picker3/widget/SeslColorSwatchView;->dpToPx(I)I

    move-result v1

    iput v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    .line 140
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStrokePaint:Landroid/graphics/Paint;

    .line 141
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/picker/R$color;->sesl_color_picker_stroke_color_spectrumview:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x333334
        -0x4c4c4d
        -0x666667
        -0x7d7d7e
        -0x99999a
        -0xb2b2b3
        -0xcccccd
        -0xe5e5e6
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        -0x5758
        -0x9495
        -0xc2c3
        -0xebec
        -0x10000
        -0x60000
        -0x250000
        -0x580000
        -0xa40000
        -0xcd0000
    .end array-data

    :array_2
    .array-data 4
        -0x2b58
        -0x4a95
        -0x63c8
        -0x77f1
        -0x8000
        -0x58300
        -0x249200
        -0x57ac00
        -0xa3d200
        -0xcce600
    .end array-data

    :array_3
    .array-data 4
        -0x58
        -0x9a
        -0xc8
        -0x100
        -0x50400
        -0x50600
        -0x242500
        -0x5c5d00
        -0xa3a400
        -0xcccd00
    .end array-data

    :array_4
    .array-data 4
        -0x570058
        -0x99009a
        -0xc700c8
        -0xf500f6
        -0xff0100
        -0xff0600
        -0xff2500
        -0xff5d00
        -0xffa400
        -0xffcd00
    .end array-data

    :array_5
    .array-data 4
        -0x570035
        -0x99005d
        -0xc70078
        -0xf00091
        -0xff009a
        -0xff0a9e
        -0xff24a8
        -0xff5cbf
        -0xffa3db
        -0xffccec
    .end array-data

    :array_6
    .array-data 4
        -0x570001
        -0x990001
        -0xc20001
        -0xf50001
        -0xff0001
        -0xff0a0b
        -0xff2425
        -0xff5c5d
        -0xffa3a4
        -0xffcccd
    .end array-data

    :array_7
    .array-data 4
        -0x572b01
        -0x944a01
        -0xc76301
        -0xeb7501
        -0xff7f01
        -0xff8206
        -0xff9125
        -0xffab58
        -0xffce9f
        -0xffe5cd
    .end array-data

    :array_8
    .array-data 4
        -0x575701
        -0x949401
        -0xc7c701
        -0xf5f501
        -0xffff01
        -0xffff06
        -0xffff25
        -0xffff58
        -0xffff9f
        -0xffffcd
    .end array-data

    :array_9
    .array-data 4
        -0x345701
        -0x599401
        -0x77c701
        -0x90f001
        -0x99ff01
        -0x9bff06
        -0xa7ff25
        -0xbcff58
        -0xdaffa4
        -0xebffcd
    .end array-data

    :array_a
    .array-data 4
        -0x5701
        -0x9901
        -0xc701
        -0xf001
        -0xff01
        -0x5ff06
        -0x24ff25
        -0x57ff58
        -0x9eff9f
        -0xccffcd
    .end array-data

    :array_b
    .array-data 4
        0x64
        0x50
        0x46
        0x3c
        0x33
        0x28
        0x1e
        0x14
        0xa
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x53
        0x47
        0x3e
        0x36
        0x32
        0x31
        0x2b
        0x21
        0x12
        0xa
    .end array-data

    :array_d
    .array-data 4
        0x53
        0x47
        0x3d
        0x35
        0x32
        0x31
        0x2b
        0x21
        0x12
        0xa
    .end array-data

    :array_e
    .array-data 4
        0x53
        0x46
        0x3d
        0x32
        0x33
        0x31
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_f
    .array-data 4
        0x53
        0x46
        0x3d
        0x34
        0x32
        0x31
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_10
    .array-data 4
        0x53
        0x46
        0x3d
        0x35
        0x32
        0x30
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_11
    .array-data 4
        0x53
        0x46
        0x3e
        0x34
        0x32
        0x30
        0x2b
        0x20
        0x12
        0xa
    .end array-data

    :array_12
    .array-data 4
        0x53
        0x47
        0x3d
        0x36
        0x32
        0x31
        0x2b
        0x21
        0x13
        0xa
    .end array-data

    :array_13
    .array-data 4
        0x53
        0x47
        0x3d
        0x34
        0x32
        0x31
        0x2b
        0x21
        0x13
        0xa
    .end array-data

    :array_14
    .array-data 4
        0x53
        0x47
        0x3d
        0x35
        0x32
        0x31
        0x2b
        0x21
        0x12
        0xa
    .end array-data

    :array_15
    .array-data 4
        0x53
        0x46
        0x3d
        0x35
        0x32
        0x31
        0x2b
        0x21
        0x13
        0xa
    .end array-data

    :array_16
    .array-data 4
        0xb
        0xa
    .end array-data
.end method

.method static synthetic access$100(Landroidx/picker3/widget/SeslColorSwatchView;)Landroid/content/res/Resources;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/picker3/widget/SeslColorSwatchView;)I
    .locals 0

    .line 34
    iget p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    return p0
.end method

.method static synthetic access$300(Landroidx/picker3/widget/SeslColorSwatchView;)[[I
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    return-object p0
.end method

.method static synthetic access$400(Landroidx/picker3/widget/SeslColorSwatchView;)F
    .locals 0

    .line 34
    iget p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    return p0
.end method

.method static synthetic access$500(Landroidx/picker3/widget/SeslColorSwatchView;)F
    .locals 0

    .line 34
    iget p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    return p0
.end method

.method static synthetic access$600(Landroidx/picker3/widget/SeslColorSwatchView;)[[Ljava/lang/StringBuilder;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/picker3/widget/SeslColorSwatchView;)[[I
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorBrightness:[[I

    return-object p0
.end method

.method static synthetic access$800(Landroidx/picker3/widget/SeslColorSwatchView;)Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mListener:Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/picker3/widget/SeslColorSwatchView;)Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    return-object p0
.end method

.method private static dpToPx(I)I
    .locals 1

    int-to-float p0, p0

    .line 531
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private initAccessibility()V
    .locals 1

    .line 147
    new-instance v0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    invoke-direct {v0, p0, p0}, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;-><init>(Landroidx/picker3/widget/SeslColorSwatchView;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    .line 148
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private initCursorDrawable()V
    .locals 2

    .line 153
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/picker/R$drawable;->sesl_color_swatch_view_cursor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setCursorIndexAt(I)V
    .locals 1

    .line 298
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    move-result-object p1

    .line 300
    iget-boolean v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Point;->set(II)V

    :cond_0
    return-void
.end method

.method private setCursorIndexAt(FF)Z
    .locals 5

    .line 276
    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    const/high16 v1, 0x41300000    # 11.0f

    mul-float/2addr v0, v1

    .line 277
    iget v1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    cmpl-float v2, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    sub-float p1, v0, v3

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v4

    if-gez v0, :cond_1

    move p1, v4

    :cond_1
    :goto_0
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_2

    sub-float p2, v1, v3

    goto :goto_1

    :cond_2
    cmpg-float v0, p2, v4

    if-gez v0, :cond_3

    move p2, v4

    .line 291
    :cond_3
    :goto_1
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 292
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    div-float/2addr p1, v2

    float-to-int p1, p1

    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    div-float/2addr p2, v2

    float-to-int p2, p2

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 294
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private setCursorRect(Landroid/graphics/Rect;)V
    .locals 6

    .line 322
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    iget v3, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    mul-float/2addr v5, p0

    add-float/2addr v5, v4

    float-to-int v5, v5

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v4

    float-to-int p0, v0

    invoke-virtual {p1, v2, v5, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setSelectedVirtualViewId()V
    .locals 2

    .line 306
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0xb

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 527
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method getColorSwatchDescriptionAt(I)Ljava/lang/StringBuilder;
    .locals 3

    .line 262
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    move-result-object p1

    .line 264
    iget-boolean v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 266
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    mul-int/lit8 p1, p1, 0xb

    add-int/2addr v1, p1

    invoke-static {p0, v1}, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->access$000(Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;I)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 269
    :cond_0
    aget-object p0, v0, v1

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getCursorIndexAt(I)Landroid/graphics/Point;
    .locals 7

    shr-int/lit8 v0, p1, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v2, v1

    and-int/2addr p1, v1

    .line 239
    invoke-static {v1, v0, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 240
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x0

    .line 242
    iput-boolean v2, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    move v3, v2

    :goto_0
    const/16 v4, 0xb

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_1
    const/16 v6, 0xa

    if-ge v4, v6, :cond_1

    .line 245
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    aget-object v6, v6, v3

    aget v6, v6, v4

    if-ne v6, p1, :cond_0

    .line 246
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 247
    iput-boolean v5, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_2
    iput-boolean v5, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 253
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result p1

    if-nez p1, :cond_3

    .line 254
    iput-boolean v2, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 159
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/16 v1, 0xb

    if-ge v10, v1, :cond_5

    move v11, v9

    :goto_1
    const/16 v1, 0xa

    if-ge v11, v1, :cond_4

    .line 163
    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    aget-object v2, v2, v10

    aget v2, v2, v11

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v12, 0x2

    const/16 v13, 0x8

    const/4 v14, 0x1

    const/16 v16, 0x0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    new-array v1, v13, [F

    .line 165
    iget v13, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v15, v13

    aput v15, v1, v9

    int-to-float v13, v13

    aput v13, v1, v14

    aput v16, v1, v12

    aput v16, v1, v6

    aput v16, v1, v5

    aput v16, v1, v4

    aput v16, v1, v3

    aput v16, v1, v2

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 166
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 167
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    int-to-float v3, v10

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iget v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    int-to-float v6, v11

    mul-float/2addr v6, v5

    add-float/2addr v6, v4

    float-to-int v6, v6

    int-to-float v6, v6

    add-int/lit8 v12, v10, 0x1

    int-to-float v12, v12

    mul-float/2addr v2, v12

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    add-int/lit8 v12, v11, 0x1

    int-to-float v12, v12

    mul-float/2addr v5, v12

    add-float/2addr v5, v4

    float-to-int v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v22, v5

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 171
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_0
    const/16 v15, 0x9

    if-nez v10, :cond_1

    if-ne v11, v15, :cond_1

    new-array v1, v13, [F

    aput v16, v1, v9

    aput v16, v1, v14

    aput v16, v1, v12

    aput v16, v1, v6

    aput v16, v1, v5

    aput v16, v1, v4

    .line 173
    iget v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v5, v4

    aput v5, v1, v3

    int-to-float v3, v4

    aput v3, v1, v2

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 174
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 175
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    int-to-float v3, v10

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iget v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    int-to-float v6, v11

    mul-float/2addr v6, v5

    add-float/2addr v6, v4

    float-to-int v6, v6

    int-to-float v6, v6

    add-int/lit8 v12, v10, 0x1

    int-to-float v12, v12

    mul-float/2addr v2, v12

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    add-int/lit8 v12, v11, 0x1

    int-to-float v12, v12

    mul-float/2addr v5, v12

    add-float/2addr v5, v4

    float-to-int v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v22, v5

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 179
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_1
    if-ne v10, v1, :cond_2

    if-nez v11, :cond_2

    new-array v1, v13, [F

    aput v16, v1, v9

    aput v16, v1, v14

    .line 182
    iget v13, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v14, v13

    aput v14, v1, v12

    int-to-float v12, v13

    aput v12, v1, v6

    aput v16, v1, v5

    aput v16, v1, v4

    aput v16, v1, v3

    aput v16, v1, v2

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 183
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 184
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    int-to-float v3, v10

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iget v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    int-to-float v6, v11

    mul-float/2addr v6, v5

    add-float/2addr v6, v4

    float-to-int v6, v6

    int-to-float v6, v6

    add-int/lit8 v12, v10, 0x1

    int-to-float v12, v12

    mul-float/2addr v2, v12

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    add-int/lit8 v12, v11, 0x1

    int-to-float v12, v12

    mul-float/2addr v5, v12

    add-float/2addr v5, v4

    float-to-int v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v22, v5

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 188
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_2
    if-ne v10, v1, :cond_3

    if-ne v11, v15, :cond_3

    new-array v1, v13, [F

    aput v16, v1, v9

    aput v16, v1, v14

    aput v16, v1, v12

    aput v16, v1, v6

    .line 191
    iget v6, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v12, v6

    aput v12, v1, v5

    int-to-float v5, v6

    aput v5, v1, v4

    aput v16, v1, v3

    aput v16, v1, v2

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    .line 192
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 193
    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    int-to-float v3, v10

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iget v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    int-to-float v6, v11

    mul-float/2addr v6, v5

    add-float/2addr v6, v4

    float-to-int v6, v6

    int-to-float v6, v6

    add-int/lit8 v12, v10, 0x1

    int-to-float v12, v12

    mul-float/2addr v2, v12

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    add-int/lit8 v12, v11, 0x1

    int-to-float v12, v12

    mul-float/2addr v5, v12

    add-float/2addr v5, v4

    float-to-int v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/picker3/widget/SeslColorSwatchView;->corners:[F

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v6

    move/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v22, v5

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 197
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 199
    :cond_3
    iget v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    int-to-float v2, v10

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    int-to-float v5, v11

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float v5, v5

    add-int/lit8 v6, v10, 0x1

    int-to-float v6, v6

    mul-float/2addr v1, v6

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v6, v1

    add-int/lit8 v1, v11, 0x1

    int-to-float v1, v1

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v1, v4

    int-to-float v12, v1

    move-object/from16 v1, p1

    move v3, v5

    move v4, v6

    move v5, v12

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 206
    :cond_5
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchRect:Landroid/graphics/RectF;

    iget v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 207
    iget-boolean v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    if-eqz v1, :cond_7

    .line 208
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    invoke-virtual {v1, v9, v9}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$drawable;->sesl_color_swatch_view_cursor_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_3

    .line 211
    :cond_6
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/picker/R$drawable;->sesl_color_swatch_view_cursor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 213
    :goto_3
    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 214
    iget-object v0, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->setCursorIndexAt(FF)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mIsColorInSwatch:Z

    if-nez p1, :cond_2

    .line 225
    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    .line 226
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorSwatchView;->setSelectedVirtualViewId()V

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 229
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mListener:Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    if-eqz p1, :cond_2

    .line 230
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    aget-object v0, v0, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    aget p0, v0, p0

    invoke-interface {p1, p0}, Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;->onColorSwatchChanged(I)V

    :cond_2
    return v1
.end method

.method setOnColorSwatchChangedListener(Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mListener:Landroidx/picker3/widget/SeslColorSwatchView$OnColorSwatchChangedListener;

    return-void
.end method

.method public updateCursorPosition(I)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->setCursorIndexAt(I)V

    .line 312
    iget-boolean p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mFromUser:Z

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    .line 314
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 315
    invoke-direct {p0}, Landroidx/picker3/widget/SeslColorSwatchView;->setSelectedVirtualViewId()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 317
    iput p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    :goto_0
    return-void
.end method
