.class public Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;
.super Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;
.source "GradientMultiLineEffectView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mColorType:I

.field private mMidLayer:Landroid/widget/ImageView;

.field private mMultiLineEffectContainer:Landroid/widget/FrameLayout;


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

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;)V

    .line 40
    const-class p1, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 50
    iput p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mColorType:I

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

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-class p1, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 50
    iput p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mColorType:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 7

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->stopRotation()V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x190

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected init()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    sget v1, Lcom/samsung/android/edgelighting/R$layout;->two_gradient_effect:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    sget v0, Lcom/samsung/android/edgelighting/R$id;->gradient_effect_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    .line 97
    sget v0, Lcom/samsung/android/edgelighting/R$id;->top_layer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 98
    sget v0, Lcom/samsung/android/edgelighting/R$id;->bottom_layer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 99
    sget v0, Lcom/samsung/android/edgelighting/R$id;->main_layer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 101
    sget v0, Lcom/samsung/android/edgelighting/R$id;->mid_layer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    .line 103
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setImageDrawable()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    iget v0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mColorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->color_gradation_small:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->color_gradation_3:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->color_gradation_3:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 201
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/edgelighting/R$drawable;->color_gradation_3:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method public setLineColorType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 291
    iput p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mColorType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 294
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setMainColor(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 223
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 226
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 227
    iget p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 229
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpg-double v2, v2, v4

    const-string v3, " B : "

    const-string v4, " S : "

    const/4 v5, 0x2

    if-gtz v2, :cond_0

    aget v2, p1, v5

    const v6, 0x3f666666    # 0.9f

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_0

    const p1, -0x190503

    const v2, -0x251214

    const v6, -0x260c19

    .line 233
    iget-object v7, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 234
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 236
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " White color : H : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget v0, v6, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget p0, p0, v5

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 237
    aget v6, p1, v1

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_1

    aget v2, p1, v1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_1

    aget v2, p1, v5

    const v6, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_1

    const p1, -0xc1bcb5

    const v2, -0xadb7a9

    const v6, -0xb2a6a6

    .line 241
    iget-object v7, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 242
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 243
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 244
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Black color : H : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget v0, v6, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget p0, p0, v5

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 246
    :cond_1
    aget v2, p1, v0

    const/high16 v3, 0x43160000    # 150.0f

    cmpl-float v2, v2, v3

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x42700000    # 60.0f

    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3f4ccccd    # 0.8f

    if-ltz v2, :cond_3

    aget v2, p1, v0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 247
    aget v2, p1, v0

    sub-float/2addr v2, v7

    aput v2, p1, v0

    .line 248
    aget v2, p1, v1

    cmpl-float v2, v2, v9

    if-lez v2, :cond_2

    .line 249
    aput v9, p1, v1

    .line 251
    :cond_2
    aget v2, p1, v5

    cmpl-float v2, v2, v9

    if-lez v2, :cond_6

    .line 252
    aput v9, p1, v5

    goto :goto_0

    .line 254
    :cond_3
    aget v2, p1, v0

    cmpl-float v2, v2, v6

    const/high16 v10, 0x42200000    # 40.0f

    if-lez v2, :cond_5

    aget v2, p1, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 255
    aget v2, p1, v0

    add-float/2addr v2, v10

    aput v2, p1, v0

    .line 256
    aget v2, p1, v1

    cmpl-float v2, v2, v9

    if-lez v2, :cond_4

    .line 257
    aput v9, p1, v1

    .line 259
    :cond_4
    aget v2, p1, v5

    cmpl-float v2, v2, v9

    if-lez v2, :cond_6

    .line 260
    aput v9, p1, v5

    goto :goto_0

    .line 263
    :cond_5
    aget v2, p1, v0

    add-float/2addr v2, v10

    aput v2, p1, v0

    .line 264
    aget v2, p1, v1

    add-float/2addr v2, v8

    aput v2, p1, v1

    .line 265
    aget v2, p1, v5

    add-float/2addr v2, v8

    aput v2, p1, v5

    .line 268
    :cond_6
    :goto_0
    iget v2, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mColorType:I

    if-ne v2, v5, :cond_a

    .line 269
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 271
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget v2, p1, v0

    const/high16 v3, 0x42a00000    # 80.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    aget v2, p1, v0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_7

    .line 272
    aget v2, p1, v0

    sub-float/2addr v2, v7

    aput v2, p1, v0

    goto :goto_1

    .line 273
    :cond_7
    aget v2, p1, v0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_8

    aget v2, p1, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    .line 274
    aget v2, p1, v0

    const/high16 v3, 0x42f00000    # 120.0f

    add-float/2addr v2, v3

    aput v2, p1, v0

    goto :goto_1

    .line 276
    :cond_8
    aget v2, p1, v0

    add-float/2addr v2, v7

    aput v2, p1, v0

    .line 278
    :goto_1
    aget v0, p1, v1

    const v2, 0x3e4ccccd    # 0.2f

    sub-float/2addr v0, v2

    aput v0, p1, v1

    .line 279
    aget v0, p1, v5

    cmpl-float v0, v0, v9

    if-lez v0, :cond_9

    .line 280
    aput v9, p1, v5

    .line 282
    :cond_9
    aput v8, p1, v1

    .line 285
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 286
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    iget p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_2
    return-void
.end method

.method public setScreenSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 210
    invoke-super {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setScreenSize(II)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->setImageDrawable()V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 216
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    return-void
.end method

.method public show()V
    .locals 9

    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->setImageDrawable()V

    const-wide/16 v0, 0xbb8

    .line 69
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->startRotation(J)V

    .line 74
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x12c

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

    return-void
.end method

.method public startRotation(J)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const-string v6, "alpha"

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x12c

    .line 122
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    const/4 v8, 0x2

    new-array v9, v8, [F

    fill-array-data v9, :array_0

    const-string/jumbo v10, "rotation"

    invoke-static {v3, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 125
    iget-object v9, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMidLayer:Landroid/widget/ImageView;

    new-array v11, v8, [F

    fill-array-data v11, :array_1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 126
    iget-object v11, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    new-array v12, v8, [F

    fill-array-data v12, :array_2

    invoke-static {v11, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 128
    invoke-virtual {v3, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 129
    invoke-virtual {v9, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    invoke-virtual {v10, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    iget p1, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mColorType:I

    if-ne p1, v8, :cond_1

    .line 134
    invoke-virtual {v9, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 p1, 0x1f4

    .line 135
    invoke-virtual {v10, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x15e

    .line 137
    invoke-virtual {v3, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 141
    :goto_0
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 p1, -0x1

    .line 142
    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 144
    invoke-virtual {v9, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 145
    invoke-virtual {v9, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 147
    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 148
    invoke-virtual {v10, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 151
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v1, v1, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v1, v1, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v9, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v1, v1, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 156
    iget p2, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mColorType:I

    const/4 v1, 0x3

    if-ne p2, v8, :cond_2

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v3, p2, v4

    aput-object v9, p2, v2

    aput-object v10, p2, v8

    aput-object v0, p2, v1

    .line 157
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_2
    new-array p2, v1, [Landroid/animation/Animator;

    aput-object v3, p2, v4

    aput-object v10, p2, v2

    aput-object v0, p2, v8

    .line 159
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 162
    :goto_1
    new-instance p1, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView$2;-><init>(Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;)V

    invoke-virtual {v10, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public updateEffectAlpha()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    iget p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
