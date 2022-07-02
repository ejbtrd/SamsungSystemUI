.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIcon"
.end annotation


# instance fields
.field protected final mDrawable:Landroid/graphics/drawable/Drawable;

.field protected final mInvisibleDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 926
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 927
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 928
    instance-of v0, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v0, :cond_0

    .line 929
    check-cast p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getCloneDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 931
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2

    .line 941
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 942
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 943
    instance-of v0, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v0, :cond_0

    .line 944
    check-cast p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getCloneDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 945
    invoke-static {p2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 946
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 947
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$dimen;->qs_non_default_tile_icon_resize_ratio:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    mul-float/2addr v0, p2

    .line 948
    new-instance p2, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 950
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 937
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 956
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DrawableIcon"

    return-object p0
.end method
