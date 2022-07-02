.class public Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;
.super Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
.source "QuickswitchOrientedNavHandle.java"


# instance fields
.field private mDeltaRotation:I

.field private mHandleView:Landroid/widget/ImageView;

.field private mHomeHandleRect:Landroid/graphics/Rect;

.field private final mTmpBoundsRect:Landroid/graphics/Rect;

.field private final mTmpBoundsRectF:Landroid/graphics/RectF;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mTmpBoundsRectF:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHomeHandleRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mTmpBoundsRect:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->navigation_home_handle_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    .line 49
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeHomeHandleBounds()Landroid/graphics/RectF;
    .locals 7

    .line 104
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 107
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mDeltaRotation:I

    if-eq v3, v2, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    .line 111
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v0, v2

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:I

    sub-int v3, v2, v3

    sub-int v0, v3, v0

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v2, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    add-int v1, v2, v4

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    .line 118
    :cond_1
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:I

    add-int v3, v2, v0

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v0, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v1, v0, v4

    move v6, v2

    move v2, v0

    move v0, v1

    move v1, v6

    .line 130
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mTmpBoundsRectF:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mTmpBoundsRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public computeHomeHandleViewBounds()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 137
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->samsung_hint_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mTmpBoundsRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    aget v3, v0, v3

    add-int/2addr v3, v1

    aget v0, v0, v5

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2, v4, v6, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 140
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mTmpBoundsRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 61
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->computeHomeHandleBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setDeltaRotation(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mDeltaRotation:I

    return-void
.end method

.method public setHomeHandleRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHomeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 68
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_4

    .line 69
    check-cast p1, Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->samsung_hint_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 72
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mDeltaRotation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_3

    .line 83
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 88
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;->setDarkIntensity(F)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHomeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->samsung_hint_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x10

    .line 94
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;->mHandleView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method
