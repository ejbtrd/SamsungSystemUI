.class public Landroidx/leanback/widget/picker/Picker;
.super Landroid/widget/FrameLayout;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;,
        Landroidx/leanback/widget/picker/Picker$ViewHolder;,
        Landroidx/leanback/widget/picker/Picker$PickerValueListener;
    }
.end annotation


# instance fields
.field private mAlphaAnimDuration:I

.field private final mColumnChangeListener:Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

.field final mColumnViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/VerticalGridView;",
            ">;"
        }
    .end annotation
.end field

.field mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/picker/PickerColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mFocusedAlpha:F

.field private mInvisibleColumnAlpha:F

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/picker/Picker$PickerValueListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerItemLayoutId:I

.field private mPickerItemTextViewId:I

.field private mPickerView:Landroid/view/ViewGroup;

.field private mSelectedColumn:I

.field private mSeparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mUnfocusedAlpha:F

.field private mVisibleColumnAlpha:F

.field private mVisibleItems:F

.field private mVisibleItemsActivated:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attributeSet"
        }
    .end annotation

    .line 188
    sget v0, Landroidx/leanback/R$attr;->pickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    const/high16 v0, 0x40400000    # 3.0f

    .line 88
    iput v0, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 89
    iput v0, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItems:F

    const/4 v1, 0x0

    .line 90
    iput v1, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 523
    new-instance v2, Landroidx/leanback/widget/picker/Picker$1;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/picker/Picker$1;-><init>(Landroidx/leanback/widget/picker/Picker;)V

    iput-object v2, p0, Landroidx/leanback/widget/picker/Picker;->mColumnChangeListener:Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    .line 197
    sget-object v5, Landroidx/leanback/R$styleable;->lbPicker:[I

    invoke-virtual {p1, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    .line 199
    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 201
    sget p1, Landroidx/leanback/R$styleable;->lbPicker_pickerItemLayout:I

    sget p2, Landroidx/leanback/R$layout;->lb_picker_item:I

    invoke-virtual {v2, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    .line 203
    sget p1, Landroidx/leanback/R$styleable;->lbPicker_pickerItemTextViewId:I

    invoke-virtual {v2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    .line 204
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 206
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 p2, 0x40000

    .line 207
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 209
    iput v0, p0, Landroidx/leanback/widget/picker/Picker;->mFocusedAlpha:F

    .line 210
    iput v0, p0, Landroidx/leanback/widget/picker/Picker;->mUnfocusedAlpha:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 211
    iput p2, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleColumnAlpha:F

    const/4 p2, 0x0

    .line 212
    iput p2, p0, Landroidx/leanback/widget/picker/Picker;->mInvisibleColumnAlpha:F

    const/16 p2, 0xc8

    .line 214
    iput p2, p0, Landroidx/leanback/widget/picker/Picker;->mAlphaAnimDuration:I

    .line 217
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40200000    # 2.5f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 219
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 220
    sget p3, Landroidx/leanback/R$layout;->lb_picker:I

    invoke-virtual {p2, p3, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 221
    sget p2, Landroidx/leanback/R$id;->picker:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    return-void
.end method

.method private notifyValueChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columnIndex"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 368
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/picker/Picker$PickerValueListener;

    invoke-interface {v1, p0, p1}, Landroidx/leanback/widget/picker/Picker$PickerValueListener;->onValueChanged(Landroidx/leanback/widget/picker/Picker;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "animate",
            "destAlpha",
            "startAlpha",
            "interpolator"
        }
    .end annotation

    .line 433
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez p2, :cond_0

    .line 435
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-ltz p2, :cond_1

    .line 439
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 441
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mAlphaAnimDuration:I

    int-to-long p2, p0

    .line 442
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 443
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private updateColumnSize()V
    .locals 2

    const/4 v0, 0x0

    .line 579
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 580
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/VerticalGridView;

    invoke-direct {p0, v1}, Landroidx/leanback/widget/picker/Picker;->updateColumnSize(Landroidx/leanback/widget/VerticalGridView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateColumnSize(Landroidx/leanback/widget/VerticalGridView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columnView"
        }
    .end annotation

    .line 585
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 586
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getActivatedVisibleItemCount()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getVisibleItemCount()F

    move-result v1

    .line 587
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getPickerItemHeightPixels()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    .line 588
    invoke-virtual {p1}, Landroidx/leanback/widget/BaseGridView;->getVerticalSpacing()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    mul-float/2addr v2, v1

    add-float/2addr p0, v2

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 589
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateItemFocusable()V
    .locals 6

    .line 593
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 594
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 595
    iget-object v3, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/VerticalGridView;

    move v4, v1

    .line 596
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 597
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 598
    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    .line 554
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 549
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 550
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    :cond_1
    return v0

    .line 558
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getActivatedVisibleItemCount()F
    .locals 0

    .line 610
    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    return p0
.end method

.method public getColumnAt(I)Landroidx/leanback/widget/picker/PickerColumn;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colIndex"
        }
    .end annotation

    .line 231
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/picker/PickerColumn;

    return-object p0
.end method

.method public getColumnsCount()I
    .locals 0

    .line 243
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 246
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method protected getPickerItemHeightPixels()I
    .locals 1

    .line 575
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/leanback/R$dimen;->picker_item_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getPickerItemLayoutId()I
    .locals 0

    .line 148
    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    return p0
.end method

.method public final getPickerItemTextViewId()I
    .locals 0

    .line 168
    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    return p0
.end method

.method public getSelectedColumn()I
    .locals 0

    .line 733
    iget p0, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    return p0
.end method

.method public getVisibleItemCount()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public onColumnValueChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "newValue"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/picker/PickerColumn;

    .line 459
    invoke-virtual {v0}, Landroidx/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 460
    invoke-virtual {v0, p2}, Landroidx/leanback/widget/picker/PickerColumn;->setCurrentValue(I)V

    .line 461
    invoke-direct {p0, p1}, Landroidx/leanback/widget/picker/Picker;->notifyValueChanged(I)V

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getSelectedColumn()I

    move-result v0

    if-ltz v0, :cond_0

    .line 564
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 565
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "focused"
        }
    .end annotation

    .line 699
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 700
    :goto_0
    iget-object p2, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 701
    iget-object p2, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 702
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/Picker;->setSelectedColumn(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setActivated(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activated"
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 662
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    return-void

    .line 665
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 666
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v0

    .line 667
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getSelectedColumn()I

    move-result v1

    const/high16 v2, 0x20000

    .line 678
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 682
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_1
    const/4 v2, 0x0

    .line 685
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 686
    iget-object v3, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    :cond_2
    invoke-direct {p0}, Landroidx/leanback/widget/picker/Picker;->updateColumnSize()V

    .line 690
    invoke-direct {p0}, Landroidx/leanback/widget/picker/Picker;->updateItemFocusable()V

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    if-ltz v1, :cond_3

    .line 692
    iget-object p1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_3
    const/high16 p1, 0x40000

    .line 694
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    return-void
.end method

.method public setColumnAt(ILandroidx/leanback/widget/picker/PickerColumn;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "column"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/VerticalGridView;

    .line 334
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 338
    :cond_0
    invoke-virtual {p2}, Landroidx/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result p1

    invoke-virtual {p2}, Landroidx/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public setColumnValue(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "columnIndex",
            "value",
            "runAnimation"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/picker/PickerColumn;

    .line 350
    invoke-virtual {v0}, Landroidx/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 351
    invoke-virtual {v0, p2}, Landroidx/leanback/widget/picker/PickerColumn;->setCurrentValue(I)V

    .line 352
    invoke-direct {p0, p1}, Landroidx/leanback/widget/picker/Picker;->notifyValueChanged(I)V

    .line 353
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_1

    .line 355
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result p0

    sub-int/2addr p2, p0

    if-eqz p3, :cond_0

    .line 357
    invoke-virtual {v0, p2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPositionSmooth(I)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColumns(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columns"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/picker/PickerColumn;",
            ">;)V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 260
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 261
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 262
    iget-object v3, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 263
    iget-object v3, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    const-string v4, ""

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 264
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_0

    .line 265
    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ne v0, v3, :cond_6

    .line 275
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 278
    iget p1, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_2

    .line 279
    iget-object p1, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 281
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 282
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v0

    .line 284
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 285
    sget v1, Landroidx/leanback/R$layout;->lb_picker_separator:I

    iget-object v3, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 287
    iget-object v3, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v3, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_5

    .line 291
    sget v3, Landroidx/leanback/R$layout;->lb_picker_column:I

    iget-object v4, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/VerticalGridView;

    .line 294
    invoke-direct {p0, v3}, Landroidx/leanback/widget/picker/Picker;->updateColumnSize(Landroidx/leanback/widget/VerticalGridView;)V

    .line 296
    invoke-virtual {v3, v2}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    .line 298
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 299
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 304
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 306
    iget-object v4, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v4, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 310
    iget-object v4, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 312
    sget v4, Landroidx/leanback/R$layout;->lb_picker_separator:I

    iget-object v6, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 314
    iget-object v6, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v6, p0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    :cond_4
    new-instance v4, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    .line 319
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getPickerItemLayoutId()I

    move-result v6

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/Picker;->getPickerItemTextViewId()I

    move-result v7

    invoke-direct {v4, p0, v6, v7, v1}, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;-><init>(Landroidx/leanback/widget/picker/Picker;III)V

    .line 318
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 320
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnChangeListener:Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v3, v1}, Landroidx/leanback/widget/BaseGridView;->setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V

    move v1, v5

    goto :goto_2

    :cond_5
    return-void

    .line 270
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Separators size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " mustequal the size of columns: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " + 1"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Separators size is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". At least one separator must be provided"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setOrAnimateAlpha(Landroid/view/View;ZIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "selected",
            "colIndex",
            "animate"
        }
    .end annotation

    .line 412
    iget v1, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    if-eq p3, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz p2, :cond_3

    if-eqz v1, :cond_2

    .line 416
    iget v3, p0, Landroidx/leanback/widget/picker/Picker;->mFocusedAlpha:F

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 418
    :cond_2
    iget v3, p0, Landroidx/leanback/widget/picker/Picker;->mUnfocusedAlpha:F

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 423
    iget v3, p0, Landroidx/leanback/widget/picker/Picker;->mVisibleColumnAlpha:F

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 425
    :cond_4
    iget v3, p0, Landroidx/leanback/widget/picker/Picker;->mInvisibleColumnAlpha:F

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Landroidx/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    :goto_2
    return-void
.end method

.method public setSelectedColumn(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columnIndex"
        }
    .end annotation

    .line 715
    iget v0, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    if-eq v0, p1, :cond_0

    .line 716
    iput p1, p0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    const/4 v0, 0x0

    .line 717
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    .line 718
    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/picker/Picker;->updateColumnAlpha(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 722
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p0

    if-nez p0, :cond_1

    .line 723
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public final setSeparator(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "separator"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 113
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/Picker;->setSeparators(Ljava/util/List;)V

    return-void
.end method

.method public final setSeparators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "separators"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object p0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method updateColumnAlpha(IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "colIndex",
            "animate"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 399
    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->getSelectedPosition()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 402
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 403
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    if-ne v1, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    .line 405
    :goto_1
    invoke-virtual {p0, v4, v5, p1, p2}, Landroidx/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZIZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
