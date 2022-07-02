.class public Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;
.super Landroid/widget/FrameLayout;
.source "NavigationHintHandle.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDarkIntensity:F

.field private mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

.field private mIconMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field private mRotation:I

.field private mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 21
    iput p2, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mDarkIntensity:F

    .line 35
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 0

    return-void
.end method

.method public setCurrentRotation(IZ)V
    .locals 9

    .line 41
    iput p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mRotation:I

    .line 42
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mIconMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getGestureHintDrawable(IZ)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mIconMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mRotation:I

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getGestureHintViDrawable(IZ)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->samsung_hint_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v7, :cond_2

    .line 60
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 p2, 0x5

    invoke-virtual {p1, v8, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v7, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, v0

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 63
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 65
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v8, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 66
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v7, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 70
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v8, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v7, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, v0

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 75
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v8, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v7, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/16 p2, 0x50

    invoke-virtual {p1, v8, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v7, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, v0

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 53
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 55
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v8, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, v7, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 57
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 81
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_5

    .line 85
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 91
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mHintDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    if-eqz v0, :cond_0

    .line 112
    iget v1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mDarkIntensity:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;->setDarkIntensity(F)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mViDrawable:Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;->setDarkIntensity(F)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    return-void
.end method

.method public setIconResourceMapper(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->mIconMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    return-void
.end method
