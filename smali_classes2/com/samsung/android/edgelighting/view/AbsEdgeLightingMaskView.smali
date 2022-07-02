.class public abstract Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;
.super Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;
.source "AbsEdgeLightingMaskView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected isDoneRound:Z

.field protected mAnimationSet:Landroid/animation/AnimatorSet;

.field protected mBottomLayer:Landroid/widget/ImageView;

.field protected mContainer:Landroid/widget/FrameLayout;

.field protected mHsvColors:[F

.field protected mIsAnimating:Z

.field protected mIsTurnOver:Z

.field protected mMainColor:I

.field protected mMainLayer:Landroid/view/View;

.field protected mMaxPadding:F

.field private mOneHandSettingObserver:Landroid/database/ContentObserver;

.field protected mRotateDuration:J

.field protected mStrokeAlpha:F

.field protected mSubColor:I

.field protected mTopLayer:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const-class p1, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 64
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 70
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMaxPadding:F

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isDoneRound:Z

    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsTurnOver:Z

    const-wide/16 v0, 0x1388

    .line 82
    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->init()V

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

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-class p1, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 64
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 70
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMaxPadding:F

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isDoneRound:Z

    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsTurnOver:Z

    const-wide/16 p1, 0x1388

    .line 82
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->init()V

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

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const-class p1, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 64
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 70
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMaxPadding:F

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isDoneRound:Z

    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsTurnOver:Z

    const-wide/16 p1, 0x1388

    .line 82
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->init()V

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

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    const-class p1, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 64
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 70
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMaxPadding:F

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->isDoneRound:Z

    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mIsTurnOver:Z

    const-wide/16 p1, 0x1388

    .line 82
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->init()V

    return-void
.end method

.method private registerOneHandSetting()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView$3;-><init>(Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Landroid/database/ContentObserver;

    .line 391
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unRegisterOneHandSetting()V
    .locals 1

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public changeRingImageAlpha(Landroid/view/View;FJJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "target",
            "startDelay",
            "duration"
        }
    .end annotation

    const/4 p0, 0x1

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const-string p2, "alpha"

    .line 181
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 182
    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 183
    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 184
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected expandViewSize(Landroid/widget/ImageView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 129
    iget v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    .line 131
    iget p0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    if-le p0, v0, :cond_0

    move v0, p0

    :cond_0
    int-to-float p0, v0

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 136
    sget-boolean v1, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_TOP:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/edgelighting/Feature;->FEATURE_IS_TABLET:Z

    if-eqz v1, :cond_2

    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p0, v0

    float-to-int v0, p0

    .line 141
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 144
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 146
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected init()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 115
    sget v1, Lcom/samsung/android/edgelighting/R$layout;->mask_effect_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    sget v0, Lcom/samsung/android/edgelighting/R$id;->effect_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    .line 119
    sget v0, Lcom/samsung/android/edgelighting/R$id;->top_layer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 120
    sget v0, Lcom/samsung/android/edgelighting/R$id;->bottom_layer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 121
    sget v0, Lcom/samsung/android/edgelighting/R$id;->main_layer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->thick_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 124
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public isRotateAnimating()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const-string v0, "Rotation animation running"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 351
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 353
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->registerOneHandSetting()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 363
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 365
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->unRegisterOneHandSetting()V

    return-void
.end method

.method public resetImageDrawable()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    .line 337
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setMainColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 151
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 153
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 154
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 v0, 0x1

    aget v1, p1, v0

    const v2, 0x3e19999a    # 0.15f

    cmpg-float v1, v1, v2

    const/4 v3, 0x2

    if-gtz v1, :cond_0

    aget v1, p1, v3

    const v4, 0x3f59999a    # 0.85f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    const v0, -0x190503

    .line 155
    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 156
    aget v4, p1, v0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    aget v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    aget v0, p1, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const v0, -0xc1bcb5

    .line 157
    iput v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    .line 161
    :cond_1
    :goto_0
    aget v0, p1, v3

    aget v1, p1, v3

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v3

    .line 162
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 164
    iget p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    aget v0, p1, v3

    aget v1, p1, v3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p1, v3

    .line 167
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    iget p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainColor:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setMaxPadding(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 188
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMaxPadding:F

    .line 189
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 190
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setRingImageAlpha(Landroid/view/View;F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 176
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJJ)V

    return-void
.end method

.method public setRotateDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 439
    iput-wide p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    return-void
.end method

.method public setScreenSize(II)V
    .locals 1
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

    .line 411
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mWidth:I

    .line 413
    iput p2, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, p2, :cond_0

    int-to-float p1, p2

    div-float/2addr p1, v0

    .line 417
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadius:F

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 421
    iput p1, p0, Lcom/samsung/android/edgelighting/view/DrawEdgeLayout;->mRadius:F

    :goto_0
    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 447
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    return-void
.end method

.method public setSubColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 172
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mSubColor:I

    return-void
.end method

.method public startRotation(J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    const/4 v2, 0x1

    new-array v3, v2, [F

    iget v4, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    .line 257
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 260
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    const/4 v4, 0x2

    new-array v6, v4, [F

    fill-array-data v6, :array_0

    const-string/jumbo v7, "rotation"

    invoke-static {v3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 261
    iget-object v6, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    new-array v8, v4, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 262
    invoke-virtual {v3, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 263
    invoke-virtual {v6, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, -0x1

    .line 267
    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 268
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 269
    invoke-virtual {v6, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 270
    invoke-virtual {v6, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const-wide/16 p1, 0x1f4

    .line 273
    invoke-virtual {v6, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 275
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v1, p2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 276
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v1, v1, p2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v3, p2, v5

    aput-object v6, p2, v2

    aput-object v0, p2, v4

    .line 282
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 284
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

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
.end method

.method public stopRotation()V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public updateEffectAlpha()V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget p0, p0, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
