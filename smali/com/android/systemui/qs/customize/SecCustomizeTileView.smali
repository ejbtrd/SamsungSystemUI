.class public Lcom/android/systemui/qs/customize/SecCustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/SecQSTileView;
.source "SecCustomizeTileView.java"


# instance fields
.field mCustomizeIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    .line 42
    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mIsActive:Z

    .line 43
    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mCustomizeIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public customTileHandleStateChange(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 90
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected getCircleColor(I)I
    .locals 0

    .line 68
    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mIsActive:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$color;->qs_edit_tile_round_background_active:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$color;->qs_edit_tile_round_background_available:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getIconView()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mCustomizeIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public getTileLabel()Landroid/widget/TextView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public isLongClickable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 49
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->qs_edit_panel_tile_label_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mCustomizeIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
