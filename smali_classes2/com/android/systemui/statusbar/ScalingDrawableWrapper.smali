.class public Lcom/android/systemui/statusbar/ScalingDrawableWrapper;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ScalingDrawableWrapper.java"


# instance fields
.field private mCloneDrawable:Landroid/graphics/drawable/Drawable;

.field private mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iput p2, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    return-void
.end method


# virtual methods
.method public getCloneDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mCloneDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mScaleFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public setCloneDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mCloneDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
