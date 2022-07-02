.class public Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;
.super Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.source "CustomizerTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QSCustomIconView"
.end annotation


# instance fields
.field protected final mBadgeSizePx:I

.field private mIconBadge:Landroid/widget/TextView;

.field private mIconStroke:Landroid/graphics/drawable/GradientDrawable;

.field private mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 590
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 583
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->sec_qs_button_badge_background_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mBadgeSizePx:I

    .line 591
    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIsActive:Z

    .line 593
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->createBadgeIcon()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    .line 595
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconStroke:Landroid/graphics/drawable/GradientDrawable;

    const/4 p2, 0x1

    .line 596
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 597
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconStroke:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->qs_edit_available_icon_stroke_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$color;->qs_edit_button_icon_color:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 598
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconStroke:Landroid/graphics/drawable/GradientDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public addBadge(Lcom/android/systemui/qs/customize/SecCustomizeTileView;)V
    .locals 0

    .line 654
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->getIconView()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    .line 655
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public badgelayout(Landroid/view/View;II)V
    .locals 1

    .line 665
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int p0, p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p0, p3, p2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public createBadgeIcon()Landroid/widget/TextView;
    .locals 4

    .line 640
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 642
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->badge_notification_background:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 643
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->badge_notification_text_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->sec_qs_button_badge_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    .line 645
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 646
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->qs_edit_panel_badge_text:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p0, 0x2

    .line 648
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 612
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    .line 613
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    if-eqz p3, :cond_1

    .line 615
    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 616
    :goto_1
    iget-object p4, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    .line 618
    iget-object p4, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p4, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->layout(Landroid/view/View;II)V

    .line 619
    iget-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    add-int/2addr p3, p1

    invoke-virtual {p0, p4, p3, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->badgelayout(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 602
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 603
    iget p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I

    move-result p2

    .line 604
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mBadgeSizePx:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I

    move-result v0

    .line 606
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v1, p2, p2}, Landroid/view/View;->measure(II)V

    .line 607
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 608
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method public removeBadge(Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;)V
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 660
    iget-object p0, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0

    .line 623
    iget-object p3, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    if-eqz p2, :cond_2

    .line 625
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    .line 626
    :cond_1
    iget-object p3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 627
    :goto_1
    instance-of p3, p2, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz p3, :cond_3

    .line 628
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 630
    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    iget-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIsActive:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$color;->qs_edit_tile_icon_active:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    goto :goto_2

    .line 633
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$color;->qs_edit_tile_icon_available:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 634
    :goto_2
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 636
    iget-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIsActive:Z

    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconStroke:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method
