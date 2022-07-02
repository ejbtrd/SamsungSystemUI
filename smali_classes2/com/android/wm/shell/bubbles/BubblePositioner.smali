.class public Lcom/android/wm/shell/bubbles/BubblePositioner;
.super Ljava/lang/Object;
.source "BubblePositioner.java"


# instance fields
.field private mBubbleBadgeSize:I

.field private mBubbleSize:I

.field private mContext:Landroid/content/Context;

.field private mDefaultMaxBubbles:I

.field private mExpandedViewLargeScreenWidth:I

.field private mExpandedViewPadding:I

.field private mInsets:Landroid/graphics/Insets;

.field private mIsLargeScreen:Z

.field private mMaxBubbles:I

.field private mPaddings:[I

.field private mPinLocation:Landroid/graphics/PointF;

.field private mPointerHeight:F

.field private mPointerMargin:I

.field private mPointerWidth:F

.field private mPositionRect:Landroid/graphics/Rect;

.field private mRestingStackPosition:Landroid/graphics/PointF;

.field private mRotation:I

.field private mShowingInTaskbar:Z

.field private mSpacingBetweenBubbles:I

.field private mTaskbarIconSize:I

.field private mTaskbarPosition:I

.field private mTaskbarSize:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 82
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPaddings:[I

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    .line 91
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    .line 93
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    return-void
.end method

.method private adjustForTaskbar()V
    .locals 6

    .line 204
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 207
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v2, v1, Landroid/graphics/Insets;->left:I

    .line 209
    iget v3, v1, Landroid/graphics/Insets;->right:I

    .line 210
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 211
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 214
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    .line 217
    :cond_1
    :goto_0
    iget v0, v1, Landroid/graphics/Insets;->top:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v0, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    :cond_2
    return-void
.end method


# virtual methods
.method public getAvailableRect()Landroid/graphics/Rect;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getBubbleSize()I
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarIconSize:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    :goto_0
    return v0
.end method

.method public getDefaultStartPosition()Landroid/graphics/PointF;
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    .line 359
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$dimen;->bubble_stack_starting_offset_y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 364
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 366
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;-><init>(ZF)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 367
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->getAbsolutePositionInRegion(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getExpandedViewPadding(ZZ)[I
    .locals 3

    .line 277
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v0, p2, Landroid/graphics/Insets;->left:I

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    add-int/2addr v0, v1

    .line 278
    iget p2, p2, Landroid/graphics/Insets;->right:I

    add-int/2addr p2, v1

    .line 280
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    int-to-float p1, p2

    .line 282
    iget p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    int-to-float p2, p2

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:F

    sub-float/2addr p2, v1

    add-float/2addr p1, p2

    float-to-int p2, p1

    add-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_0
    int-to-float p1, v0

    .line 287
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:F

    sub-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int v0, p1

    add-int/lit8 p2, p2, 0x0

    .line 294
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPaddings:[I

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerMargin:I

    :goto_1
    aput v2, p1, v0

    .line 296
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPaddings:[I

    const/4 v0, 0x2

    aput p2, p1, v0

    const/4 p2, 0x3

    .line 297
    aput v1, p1, p2

    .line 299
    sget-boolean p2, Lcom/android/wm/shell/QpShellRune;->NOTI_BUBBLE_STYLE_TABLET:Z

    if-eqz p2, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getTabletSidePadding()I

    move-result p2

    aput p2, p1, v0

    aput p2, p1, v1

    .line 302
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPaddings:[I

    return-object p0
.end method

.method public getExpandedViewY()F
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 322
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->showBubblesVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-float v0, v0

    .line 323
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:F

    sget-boolean v1, Lcom/android/wm/shell/QpShellRune;->NOTI_BUBBLE_STYLE_TABLET:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0

    .line 325
    :cond_1
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerMargin:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public getMaxBubbles()I
    .locals 0

    .line 267
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    return p0
.end method

.method public getRestingPosition()Landroid/graphics/PointF;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPinLocation:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getTabletSidePadding()I
    .locals 4

    .line 308
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getTaskbarPosition()I
    .locals 0

    .line 381
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    return p0
.end method

.method public getTaskbarSize()I
    .locals 0

    .line 385
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarSize:I

    return p0
.end method

.method public isLandscape()Z
    .locals 2

    .line 239
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isLargeScreen()Z
    .locals 0

    .line 244
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    return p0
.end method

.method public setPinnedLocation(Landroid/graphics/PointF;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPinLocation:Landroid/graphics/PointF;

    return-void
.end method

.method public setRestingPosition(Landroid/graphics/PointF;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRestingStackPosition:Landroid/graphics/PointF;

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :goto_0
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    return-void
.end method

.method public showBubblesVertically()Z
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

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

.method public showingInTaskbar()Z
    .locals 0

    .line 374
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    return p0
.end method

.method public update()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 110
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    .line 111
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    or-int/2addr v2, v3

    .line 112
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    .line 110
    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    const/4 v2, 0x0

    .line 114
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update positioner: rotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " insets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isLargeScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " showingInTaskbar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bubbles"

    .line 118
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->updateInternal(ILandroid/graphics/Insets;Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateForTaskbar(IIZI)V
    .locals 0

    .line 136
    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    .line 137
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarIconSize:I

    .line 138
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarPosition:I

    .line 139
    iput p4, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mTaskbarSize:I

    .line 140
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    return-void
.end method

.method public updateInternal(ILandroid/graphics/Insets;Landroid/graphics/Rect;)V
    .locals 1

    .line 145
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mRotation:I

    .line 146
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    .line 148
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    .line 149
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v0, p3, Landroid/graphics/Insets;->left:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 150
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Insets;->top:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 151
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v0, p3, Landroid/graphics/Insets;->right:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 152
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 154
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 155
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 156
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_badge_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBadgeSize:I

    .line 157
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mSpacingBetweenBubbles:I

    .line 158
    sget p2, Lcom/android/wm/shell/R$integer;->bubbles_max_rendered:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDefaultMaxBubbles:I

    .line 160
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_expanded_view_tablet_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    .line 162
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_expanded_view_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    .line 163
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_pointer_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerWidth:F

    .line 164
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_pointer_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerHeight:F

    .line 165
    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_pointer_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPointerMargin:I

    .line 167
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDefaultMaxBubbles:I

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    .line 169
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInTaskbar:Z

    if-eqz p1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->adjustForTaskbar()V

    :cond_0
    return-void
.end method
