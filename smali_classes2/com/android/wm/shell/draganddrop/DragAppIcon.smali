.class public Lcom/android/wm/shell/draganddrop/DragAppIcon;
.super Landroid/widget/ImageView;
.source "DragAppIcon.java"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/draganddrop/DragAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/draganddrop/DragAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initSpringAnimation()V
    .locals 4

    .line 91
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x435c0000    # 220.0f

    .line 92
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 93
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 94
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private startSpringAnimation()V
    .locals 2

    .line 98
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterX:F

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 99
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterY:F

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 103
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method


# virtual methods
.method hasDrawable()Z
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DragAppIcon;->updateIconImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 60
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 61
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->drag_app_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterX:F

    .line 62
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$dimen;->drag_app_icon_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterY:F

    .line 63
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAppIcon;->initSpringAnimation()V

    return-void
.end method

.method public setLocation(FF)V
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterX:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setX(F)V

    .line 79
    iget p1, p0, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterY:F

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method public show(FF)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAppIcon;->setLocation(FF)V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAppIcon;->startSpringAnimation()V

    return-void
.end method

.method updateIconImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
