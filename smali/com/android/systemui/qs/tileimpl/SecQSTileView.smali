.class public Lcom/android/systemui/qs/tileimpl/SecQSTileView;
.super Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;
.source "SecQSTileView.java"


# instance fields
.field protected mDualTargetAllowed:Z

.field protected mLabel:Landroid/widget/TextView;

.field private mLabelBackground:Landroid/graphics/drawable/RippleDrawable;

.field protected mLabelContainer:Landroid/view/ViewGroup;

.field protected mMaxLabelLines:I

.field private mSecLabelColor:Landroid/content/res/ColorStateList;

.field protected mSecondLine:Landroid/widget/TextView;

.field private mState:I


# direct methods
.method public static synthetic $r8$lambda$UsCBOUkHmC04nJl9Z6NDlB3_hAI(Lcom/android/systemui/qs/tileimpl/SecQSTileView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->lambda$setShowLabels$0(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 3

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    const/4 p1, 0x2

    .line 48
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mMaxLabelLines:I

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mDualTargetAllowed:Z

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 72
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->setClickable(Z)V

    .line 75
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->createLabel()V

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x31

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 81
    iget-object p3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$integer;->sec_style_qs_tile_label_background_radius:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([FF)V

    .line 82
    new-instance p3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 83
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101042c

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-direct {p3, v1, v0, p1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 87
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$color;->qs_tile_label:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecLabelColor:Landroid/content/res/ColorStateList;

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->onPanelModeChanged()V

    .line 91
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$setShowLabels$0(Z)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 3

    .line 111
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->sec_qs_tile_label:I

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->app_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getDetailY()I
    .locals 2

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public getLabelContainer()Landroid/view/View;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 6

    .line 146
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mState:I

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v0, v3, :cond_3

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mState:I

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 153
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v3, "\n"

    const-string v4, ","

    .line 158
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "-"

    const-string v4, ""

    .line 159
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->quick_settings_dual_label_content_description:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCollapsedView:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mDualTargetAllowed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    if-eqz v0, :cond_7

    move v1, v2

    .line 172
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v0

    if-eq v1, v0, :cond_8

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->sec_style_qs_tile_text_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 102
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    sget p1, Lcom/android/systemui/R$dimen;->sec_style_qs_tile_second_text_size:I

    invoke-static {p0, p1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 123
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->shouldLabelBeSingleLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 129
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public onPanelModeChanged()V
    .locals 3

    .line 208
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->onPanelModeChanged()V

    .line 209
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->qs_tile_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecLabelColor:Landroid/content/res/ColorStateList;

    .line 210
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->sec_qs_ripple_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 213
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelBackground:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public reloadLabelText()V
    .locals 1

    .line 219
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setShowLabels(Z)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/SecQSTileView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected shouldLabelBeSingleLine()Z
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCollapsedView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mMaxLabelLines:I

    if-le v0, v2, :cond_1

    return v1

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    .line 138
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mMaxLabelLines:I

    sub-int/2addr p0, v1

    if-le v0, p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
