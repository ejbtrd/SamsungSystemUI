.class public Lcom/android/systemui/globalactions/GlobalActionsGridLayout;
.super Lcom/android/systemui/globalactions/GlobalActionsLayout;
.source "GlobalActionsGridLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getAnimationDistance()F
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->global_actions_grid_item_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public getAnimationOffsetX()F
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getAnimationDistance()F

    move-result p0

    neg-float p0, p0

    return p0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getAnimationDistance()F

    move-result p0

    return p0
.end method

.method protected bridge synthetic getListView()Landroid/view/ViewGroup;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    move-result-object p0

    return-object p0
.end method

.method protected getListView()Lcom/android/systemui/globalactions/ListGridLayout;
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/ListGridLayout;

    return-object p0
.end method

.method protected setupListView()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    const/4 p0, 0x0

    .line 41
    throw p0
.end method

.method protected shouldReverseSublists()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected shouldSwapRowsAndColumns()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected updateSeparatedItemSize()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 p0, -0x1

    .line 68
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x2

    .line 71
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void
.end method
