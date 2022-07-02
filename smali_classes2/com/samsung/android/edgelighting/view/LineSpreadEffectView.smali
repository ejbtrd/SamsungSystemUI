.class public Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;
.super Landroid/view/View;
.source "LineSpreadEffectView.java"


# instance fields
.field private final ANIMATION_DURATION:I

.field private final ANIMATION_START_DELAY:I

.field private final LINE_EFFECT_DELAY:J

.field private final TAG:Ljava/lang/String;

.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mColor:I

.field private mCurRect:Landroid/graphics/Rect;

.field private mFinalRadius:F

.field private mLineWidth:F

.field private mMoveHeight:F

.field private mMoveWidth:F

.field private mPercentArr:[F

.field private mRadius:F

.field private mSquarePaint1:Landroid/graphics/Paint;

.field private mSquarePaint2:Landroid/graphics/Paint;

.field private mSquarePaint3:Landroid/graphics/Paint;

.field private mTimeTable:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const-class p1, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->TAG:Ljava/lang/String;

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 33
    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    const-wide/16 v0, 0x13d

    .line 35
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->LINE_EFFECT_DELAY:J

    new-array v0, p1, [[I

    new-array v1, p1, [I

    .line 113
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, p1, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array p1, p1, [I

    fill-array-data p1, :array_2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mTimeTable:[[I

    .line 115
    iput v2, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->ANIMATION_START_DELAY:I

    .line 116
    iput v1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->ANIMATION_DURATION:I

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->initialize()V

    return-void

    nop

    :array_0
    .array-data 4
        0x75
        0x13d
        0x898
    .end array-data

    :array_1
    .array-data 4
        0xc0
        0x1d4
        0xc80
    .end array-data

    :array_2
    .array-data 4
        0xfb
        0x262
        0x1068
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-class p1, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->TAG:Ljava/lang/String;

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array p2, p1, [F

    .line 33
    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    const-wide/16 v0, 0x13d

    .line 35
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->LINE_EFFECT_DELAY:J

    new-array p2, p1, [[I

    new-array v0, p1, [I

    .line 113
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-array v0, p1, [I

    fill-array-data v0, :array_1

    const/4 v1, 0x1

    aput-object v0, p2, v1

    new-array p1, p1, [I

    fill-array-data p1, :array_2

    const/4 v0, 0x2

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mTimeTable:[[I

    .line 115
    iput v1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->ANIMATION_START_DELAY:I

    .line 116
    iput v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->ANIMATION_DURATION:I

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->initialize()V

    return-void

    nop

    :array_0
    .array-data 4
        0x75
        0x13d
        0x898
    .end array-data

    :array_1
    .array-data 4
        0xc0
        0x1d4
        0xc80
    .end array-data

    :array_2
    .array-data 4
        0xfb
        0x262
        0x1068
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;)[F
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    return-object p0
.end method

.method private initialize()V
    .locals 3

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->line_effect_move_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mMoveHeight:F

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->line_effect_move_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mMoveWidth:F

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->noti_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mLineWidth:F

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->line_effect_radius_first:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mRadius:F

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->line_effect_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mFinalRadius:F

    .line 181
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mLineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mLineWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mLineWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private startLineEffect(IIJ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "index",
            "order",
            "duration"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 120
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 121
    new-instance v2, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    new-instance v2, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$2;-><init>(Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    new-instance p1, Lcom/samsung/android/edgelighting/utils/SineInOut80;

    invoke-direct {p1}, Lcom/samsung/android/edgelighting/utils/SineInOut80;-><init>()V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa0

    sub-long/2addr p3, v2

    long-to-int p1, p3

    .line 157
    div-int/lit16 p1, p1, 0x3e8

    .line 159
    iget-object p3, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mTimeTable:[[I

    aget-object p3, p3, p1

    const/4 p4, 0x1

    aget p3, p3, p4

    mul-int/2addr p3, p2

    int-to-long p2, p3

    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 161
    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mTimeTable:[[I

    aget-object p1, p2, p1

    aget p1, p1, v0

    int-to-long p1, p1

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    invoke-virtual {v1, p4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 164
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p1, p4, [Landroid/animation/Animator;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 60
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget-object v1, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    iget-object v1, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    const/4 v6, 0x1

    aget v2, v2, v6

    sub-float v2, v4, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    iget-object v1, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    const/4 v7, 0x2

    aget v2, v2, v7

    sub-float v2, v4, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    iget v1, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mRadius:F

    iget-object v2, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    aget v5, v2, v3

    sub-float v5, v4, v5

    mul-float/2addr v5, v1

    iget v8, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mFinalRadius:F

    aget v9, v2, v3

    mul-float/2addr v9, v8

    add-float v16, v5, v9

    .line 67
    aget v5, v2, v6

    sub-float v5, v4, v5

    mul-float/2addr v5, v1

    aget v9, v2, v6

    mul-float/2addr v9, v8

    add-float v23, v5, v9

    .line 68
    aget v5, v2, v7

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    aget v4, v2, v7

    mul-float/2addr v8, v4

    add-float v30, v1, v8

    .line 70
    iget-object v1, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mMoveWidth:F

    aget v8, v2, v3

    mul-float/2addr v8, v5

    sub-float v11, v4, v8

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v8, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mMoveHeight:F

    aget v9, v2, v3

    mul-float/2addr v9, v8

    sub-float v12, v4, v9

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    aget v9, v2, v3

    mul-float/2addr v5, v9

    add-float v13, v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aget v2, v2, v3

    mul-float/2addr v8, v2

    add-float v14, v1, v8

    iget-object v1, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v15, v16

    move-object/from16 v17, v1

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 72
    iget-object v1, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    aget v2, v1, v6

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 73
    iget-object v2, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mMoveWidth:F

    aget v8, v1, v6

    mul-float/2addr v8, v5

    sub-float v18, v4, v8

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v8, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mMoveHeight:F

    aget v9, v1, v6

    mul-float/2addr v9, v8

    sub-float v19, v4, v9

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    aget v9, v1, v6

    mul-float/2addr v5, v9

    add-float v20, v4, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aget v1, v1, v6

    mul-float/2addr v8, v1

    add-float v21, v2, v8

    iget-object v1, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move/from16 v22, v23

    move-object/from16 v24, v1

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 76
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    aget v2, v1, v7

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 77
    iget-object v2, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mMoveWidth:F

    aget v5, v1, v7

    mul-float/2addr v5, v4

    sub-float v25, v3, v5

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mMoveHeight:F

    aget v6, v1, v7

    mul-float/2addr v6, v5

    sub-float v26, v3, v6

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    aget v6, v1, v7

    mul-float/2addr v4, v6

    add-float v27, v3, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    aget v1, v1, v7

    mul-float/2addr v5, v1

    add-float v28, v2, v5

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    move-object/from16 v24, p1

    move/from16 v29, v30

    move-object/from16 v31, v0

    invoke-virtual/range {v24 .. v31}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setCurrentRect(Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 202
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 196
    iput p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mColor:I

    .line 197
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    iget p0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public startLineAnimation(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->TAG:Ljava/lang/String;

    const-string v1, " start Animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 90
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->startLineEffect(IIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopLineAnimation()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->mPercentArr:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
