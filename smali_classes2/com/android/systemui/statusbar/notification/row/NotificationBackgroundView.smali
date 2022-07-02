.class public Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;
.super Landroid/view/View;
.source "NotificationBackgroundView.java"


# instance fields
.field private mActualHeight:I

.field private mActualWidth:F

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundTop:I

.field private mBottomAmountClips:Z

.field private mBottomAmountRounded:Z

.field private mBottomIsRounded:Z

.field private mClipBottomAmount:I

.field private mClipTopAmount:I

.field private final mCornerRadii:[F

.field private mDistanceToBottomRoundness:F

.field private mDistanceToTopRoundness:F

.field private final mDontModifyCorners:Z

.field private mDrawableAlpha:I

.field private mExpandAnimationRunning:Z

.field private mFirstInSection:Z

.field private mIsPinned:Z

.field private mIsPressedAllowed:Z

.field private mLastInSection:Z

.field private mTintColor:I

.field private mTopAmountRounded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountClips:Z

    const/16 p1, 0xff

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDrawableAlpha:I

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_clipNotificationsToOutline:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDontModifyCorners:Z

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    if-eqz p2, :cond_7

    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackgroundTop:I

    .line 102
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    .line 103
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomIsRounded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountClips:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-nez v2, :cond_0

    .line 106
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    :cond_0
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 110
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualWidth:F

    sub-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v4, v2

    add-float/2addr v4, v3

    float-to-int v3, v4

    .line 115
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mTopAmountRounded:Z

    if-eqz v4, :cond_4

    .line 116
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDistanceToTopRoundness:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    if-gez v5, :cond_2

    .line 117
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mFirstInSection:Z

    if-nez v6, :cond_3

    :cond_2
    add-int/2addr v0, v5

    :cond_3
    if-ltz v5, :cond_4

    .line 120
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mLastInSection:Z

    if-nez v6, :cond_4

    .line 121
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mIsPinned:Z

    if-nez v6, :cond_4

    add-int/2addr v1, v5

    .line 126
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountRounded:Z

    if-eqz v5, :cond_6

    .line 127
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDistanceToBottomRoundness:F

    float-to-int v5, v5

    .line 128
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mLastInSection:Z

    if-nez v6, :cond_5

    add-int/2addr v1, v5

    .line 130
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    if-lez v5, :cond_5

    sub-int/2addr v1, v5

    .line 134
    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    if-lez v5, :cond_6

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mFirstInSection:Z

    if-nez p0, :cond_6

    if-nez v4, :cond_6

    sub-int/2addr v0, v5

    .line 138
    :cond_6
    invoke-virtual {p2, v2, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method private updateBackgroundRadii()V
    .locals 2

    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDontModifyCorners:Z

    if-eqz v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    .line 319
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 321
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setState([I)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 88
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackgroundTop:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_2

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 92
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public setActualHeight(I)V
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundTop(I)V
    .locals 0

    .line 326
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackgroundTop:I

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBottomAmountClips(Z)V
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountClips:Z

    if-eq p1, v0, :cond_0

    .line 309
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountClips:Z

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipBottomAmount:I

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mClipTopAmount:I

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 206
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 209
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mTintColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setTint(I)V

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    .line 212
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 214
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->updateBackgroundRadii()V

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDistanceToBottomRoundness(F)V
    .locals 4

    .line 159
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDistanceToBottomRoundness:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 160
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountRounded:Z

    .line 161
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDistanceToBottomRoundness:F

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_1
    cmpl-float v0, p1, v3

    if-nez v0, :cond_3

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 164
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomAmountRounded:Z

    .line 165
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDistanceToBottomRoundness:F

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 1

    .line 172
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDistanceToTopRoundness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mTopAmountRounded:Z

    .line 174
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDistanceToTopRoundness:F

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDrawableAlpha(I)V
    .locals 1

    .line 281
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDrawableAlpha:I

    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 2

    .line 338
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 340
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    .line 341
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 344
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAntiAlias(Z)V

    .line 346
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-nez p1, :cond_1

    .line 347
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mDrawableAlpha:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setDrawableAlpha(I)V

    .line 349
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpandAnimationSize(II)V
    .locals 0

    .line 332
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualHeight:I

    int-to-float p1, p1

    .line 333
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mActualWidth:F

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFirstInSection(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mFirstInSection:Z

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLastInSection(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mLastInSection:Z

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPinned(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mIsPinned:Z

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPressedAllowed(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mIsPressedAllowed:Z

    return-void
.end method

.method public setRadius(FF)V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpl-float v2, p1, v2

    const/4 v3, 0x4

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    .line 295
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBottomIsRounded:Z

    .line 296
    aput p1, v0, v1

    .line 297
    aput p1, v0, v4

    const/4 v1, 0x2

    .line 298
    aput p1, v0, v1

    const/4 v1, 0x3

    .line 299
    aput p1, v0, v1

    .line 300
    aput p2, v0, v3

    const/4 p1, 0x5

    .line 301
    aput p2, v0, p1

    const/4 p1, 0x6

    .line 302
    aput p2, v0, p1

    const/4 p1, 0x7

    .line 303
    aput p2, v0, p1

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->updateBackgroundRadii()V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 275
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .line 276
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setState([I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mIsPressedAllowed:Z

    if-nez v0, :cond_0

    const v0, 0x10100a7

    .line 266
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 230
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mTintColor:I

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 181
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

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
