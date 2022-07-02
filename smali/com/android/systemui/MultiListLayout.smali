.class public abstract Lcom/android/systemui/MultiListLayout;
.super Landroid/widget/LinearLayout;
.source "MultiListLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/MultiListLayout$MultiListAdapter;,
        Lcom/android/systemui/MultiListLayout$RotationListener;
    }
.end annotation


# instance fields
.field protected mRotation:I

.field protected mRotationListener:Lcom/android/systemui/MultiListLayout$RotationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    return-void
.end method


# virtual methods
.method public abstract getAnimationOffsetX()F
.end method

.method protected abstract getListView()Landroid/view/ViewGroup;
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p1

    .line 88
    iget v0, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    if-eq p1, v0, :cond_0

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/MultiListLayout;->rotate(II)V

    .line 90
    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    :cond_0
    return-void
.end method

.method protected rotate(II)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/MultiListLayout;->mRotationListener:Lcom/android/systemui/MultiListLayout$RotationListener;

    if-eqz p0, :cond_0

    .line 96
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/MultiListLayout$RotationListener;->onRotate(II)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/MultiListLayout$MultiListAdapter;)V
    .locals 0

    return-void
.end method

.method public setListViewAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setRotationListener(Lcom/android/systemui/MultiListLayout$RotationListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/MultiListLayout;->mRotationListener:Lcom/android/systemui/MultiListLayout$RotationListener;

    return-void
.end method

.method public updateList()V
    .locals 1

    .line 106
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "mAdapter must be set before calling updateList"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
