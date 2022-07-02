.class public Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "SecQSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field protected final mBg:Landroid/widget/ImageView;

.field private mCircleColor:I

.field protected mCollapsedView:Z

.field private mColorActive:I

.field private mColorDisabled:I

.field private mColorInactive:I

.field protected final mHandler:Landroid/os/Handler;

.field protected mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private final mIconFrame:Landroid/widget/FrameLayout;

.field private mLastState:I

.field private mLastStateDescription:Ljava/lang/CharSequence;

.field private final mLocInScreen:[I

.field private mQSTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

.field protected mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mStateDescriptionDeltas:Ljava/lang/CharSequence;

.field private mStrokeWidthActive:F

.field private mStrokeWidthInactive:F

.field protected mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileState:Z


# direct methods
.method public static synthetic $r8$lambda$ANOqdX5be6UxcfEi5zTgOMy-Zac(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iBcZh-DbVgiGLdqQerByKfS4EJI(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->lambda$init$0(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qnp_9_WhyeypdXyDaxMWuGj6Q9I(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->lambda$init$1(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 8

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 60
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLocInScreen:[I

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastState:I

    .line 89
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500cb

    .line 91
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthActive:F

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500cc

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthInactive:F

    .line 94
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v2

    .line 95
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 98
    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 99
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v3, 0x0

    .line 100
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->qs_tile_icon_background_stroke_width:I

    .line 102
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    .line 104
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result p1

    .line 108
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 109
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 110
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, p1, p1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 112
    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 115
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 118
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 120
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 123
    instance-of p2, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p2, :cond_1

    .line 124
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->sec_qs_ripple_background:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 127
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 130
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateBackgroundColors()V

    .line 133
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 134
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 135
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 136
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCollapsedView:Z

    return-void
.end method

.method private synthetic lambda$init$0(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->click(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$init$1(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z
    .locals 0

    .line 182
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 166
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateRippleSize()V

    :cond_0
    return-void
.end method

.method private updateBackgroundColors()V
    .locals 2

    .line 347
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->qs_tile_round_background_on:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorActive:I

    .line 348
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->qs_tile_round_background_off:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorDisabled:I

    .line 349
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->qs_tile_round_background_dim:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorInactive:I

    return-void
.end method

.method private updateStrokeShapeWidth(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 230
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 239
    :cond_1
    iget p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthActive:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    .line 240
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthActive:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 233
    :cond_2
    iget p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthInactive:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    .line 234
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthInactive:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected getCircleColor(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileBaseView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 334
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorActive:I

    return p0

    .line 336
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorDisabled:I

    return p0

    .line 338
    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorInactive:I

    return p0
.end method

.method public getDetailY()I
    .locals 1

    .line 374
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 6

    .line 248
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateStrokeShapeWidth(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 249
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->getCircleColor(I)I

    move-result v0

    .line 250
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCircleColor:I

    if-eq v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 252
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCircleColor:I

    .line 254
    :cond_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->setClickable(Z)V

    .line 255
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    if-eq v3, v2, :cond_3

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 271
    :cond_2
    instance-of v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v3, :cond_5

    .line 272
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->switch_bar_on:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    :cond_3
    instance-of v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v3, :cond_5

    .line 267
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->switch_bar_off:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 263
    :cond_4
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->tile_unavailable:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_5
    :goto_1
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ", "

    .line 279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 281
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastState:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v5, v3, :cond_6

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastStateDescription:Ljava/lang/CharSequence;

    .line 282
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 283
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 286
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 287
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastState:I

    .line 288
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastStateDescription:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-nez v0, :cond_7

    move-object v5, v3

    goto :goto_2

    .line 291
    :cond_7
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_2
    iput-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 292
    instance-of v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v5, :cond_8

    .line 293
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 294
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    if-eq v1, v0, :cond_a

    .line 295
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    goto :goto_3

    :cond_8
    if-ne v0, v4, :cond_9

    move v1, v2

    .line 299
    :cond_9
    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    .line 304
    :cond_a
    :goto_3
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const-string v2, ","

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    .line 311
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 312
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_c

    sget v1, Lcom/android/systemui/R$string;->accessibility_desc_on:I

    goto :goto_4

    :cond_c
    sget v1, Lcom/android/systemui/R$string;->accessibility_desc_off:I

    .line 311
    :goto_4
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    .line 315
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v4, ""

    .line 316
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 321
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    :cond_e
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 189
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    .line 181
    new-instance v0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101045c

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 158
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 387
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 394
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 400
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 405
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 407
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$string;->switch_bar_off:I

    .line 406
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 414
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 418
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    .line 419
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_long_click_tile:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 195
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 196
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateRippleSize()V

    :cond_0
    return-void
.end method

.method public onPanelModeChanged()V
    .locals 3

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateBackgroundColors()V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mQSTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->getCircleColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCircleColor:I

    .line 358
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_2

    .line 361
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->sec_qs_ripple_background:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 364
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSIconView;->onPanelModeChanged()V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mQSTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 369
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locInScreen=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", iconView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", tileState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 432
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method

.method public updateIconSize()V
    .locals 3

    .line 142
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v0

    .line 143
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 147
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 152
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 153
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateRippleSize()V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 174
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 175
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3edc28f6    # 0.43f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 176
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v4, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    return-void
.end method
