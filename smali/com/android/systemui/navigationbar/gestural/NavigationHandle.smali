.class public Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
.super Landroid/widget/FrameLayout;
.source "NavigationHandle.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;


# instance fields
.field protected final mBottom:I

.field protected mContext:Landroid/content/Context;

.field private final mDarkColor:I

.field protected mDarkIntensity:F

.field protected mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

.field private final mLightColor:I

.field protected final mPaint:Landroid/graphics/Paint;

.field protected final mRadius:I

.field private mRequiresInvalidate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    sget v1, Lcom/android/systemui/R$dimen;->navigation_handle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:I

    .line 68
    sget v1, Lcom/android/systemui/R$dimen;->navigation_handle_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:I

    .line 70
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 71
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 72
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 73
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 74
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    sget v2, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_0

    .line 75
    :cond_0
    sget v3, Lcom/android/systemui/R$attr;->homeHandleColor:I

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    if-eqz v0, :cond_1

    .line 76
    sget v0, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 77
    :cond_1
    sget p1, Lcom/android/systemui/R$attr;->homeHandleColor:I

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    const/4 p1, 0x1

    .line 78
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 93
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 98
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    .line 100
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    const/4 v4, 0x0

    int-to-float v5, v0

    int-to-float v6, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 101
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 85
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3

    .line 131
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    if-eqz v0, :cond_2

    .line 133
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    .line 134
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    .line 135
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;->setDarkIntensity(F)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 144
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 107
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    .line 110
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->samsung_hint_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;->setDarkIntensity(F)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    return-void
.end method
