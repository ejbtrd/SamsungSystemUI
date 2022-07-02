.class public Lcom/android/systemui/qs/SecPageIndicator;
.super Lcom/android/systemui/qs/PageIndicator;
.source "SecPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

.field private mNumpages:I

.field private final mPageIndicatorContainerHeight:I

.field private final mPageIndicatorContainerWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private mQsExpansion:F

.field private mSelectedColor:I

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    .line 35
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    .line 43
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 44
    sget p2, Lcom/android/systemui/R$dimen;->sec_qs_page_indicator_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    .line 45
    sget p2, Lcom/android/systemui/R$dimen;->sec_qs_page_indicator_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    .line 46
    sget v0, Lcom/android/systemui/R$dimen;->sec_qs_page_indicator_container_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerWidth:I

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerHeight:I

    .line 49
    sget p2, Lcom/android/systemui/R$color;->qs_page_indicator_tint_color_selected:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 50
    sget p2, Lcom/android/systemui/R$color;->qs_page_indicator_tint_color_unselected:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SecPageIndicator;)Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/SecPageIndicator;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mQsExpansion:F

    return p0
.end method

.method private animate(II)V
    .locals 1

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 154
    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    .line 155
    check-cast p2, Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private playAnimation(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 161
    instance-of p1, p0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz p1, :cond_1

    const/16 p1, 0x96

    if-eqz p2, :cond_0

    .line 163
    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 165
    :cond_0
    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 194
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/qs/PageIndicator;->onLayout(ZIIII)V

    const/4 p1, 0x0

    move p2, p1

    .line 195
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 196
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 197
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 199
    iget p5, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    iget v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerHeight:I

    .line 200
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 199
    invoke-virtual {p3, p5, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 202
    iget p3, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    iget p5, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    .line 203
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 202
    invoke-virtual {p4, p3, p5}, Landroid/widget/ImageView;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelModeChanged()V
    .locals 3

    .line 177
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->qs_page_indicator_tint_color_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 178
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->qs_page_indicator_tint_color_unselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setSecIndicatorColor(II)V

    .line 181
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    return-void
.end method

.method public reset(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 135
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 136
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v1, p1, :cond_0

    .line 140
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    .line 142
    :cond_0
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mQsExpansion:F

    return-void
.end method

.method public setLocation(F)V
    .locals 2

    .line 110
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 114
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    sub-int/2addr v0, v1

    sub-int p1, v0, p1

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    if-ne p1, v0, :cond_1

    return-void

    .line 119
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->setPosition(I)V

    return-void
.end method

.method public setNumPages(I)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 63
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumpages:I

    .line 67
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_2
    if-ge v2, p1, :cond_2

    .line 72
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$drawable;->qs_page_indicator_unselected:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v1

    .line 75
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$drawable;->qs_page_indicator_selected:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v0

    .line 77
    aget-object v6, v5, v1

    iget v7, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    aget-object v6, v5, v0

    iget v7, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 83
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerWidth:I

    iget v8, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerHeight:I

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    .line 86
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 87
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 88
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 89
    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->accessibility_quick_settings_page:I

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v8, v2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v0

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v4, Lcom/android/systemui/qs/SecPageIndicator$1;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/qs/SecPageIndicator$1;-><init>(Lcom/android/systemui/qs/SecPageIndicator;I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    iget v6, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v2, v8

    goto/16 :goto_2

    .line 103
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method protected setPosition(I)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->animate(II)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    .line 131
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void
.end method

.method public setSecIndicatorColor(II)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 58
    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    return-void
.end method

.method public setSecPageIndicatorCallback(Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

    return-void
.end method
