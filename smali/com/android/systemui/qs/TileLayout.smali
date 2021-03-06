.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "TileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field private mAvailableRows:I

.field protected mCellHeight:I

.field protected mCellHeightResId:I

.field protected mCellMarginHorizontal:I

.field private mCellMarginTop:I

.field protected mCellMarginVertical:I

.field protected mCellWidth:I

.field protected mColumns:I

.field private mEdit:Landroid/view/View;

.field protected mLastCellWidth:I

.field private final mLessRows:Z

.field protected mListening:Z

.field protected mMaxAllowedRows:I

.field protected mMaxCellHeight:I

.field private mMaxColumns:I

.field private mMinRows:I

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mResourceColumns:I

.field protected mRows:I

.field protected mSidePadding:I

.field protected mTileLayoutHeight:I

.field private mTileVerticalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget p2, Lcom/android/systemui/R$dimen;->qs_tile_height:I

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeightResId:I

    const/4 p2, 0x1

    .line 40
    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 48
    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    const/16 v0, 0x64

    .line 49
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    .line 54
    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mTileLayoutHeight:I

    .line 68
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_less_rows"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/qs/TileLayout;->mLessRows:Z

    .line 72
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->sec_qs_tile_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    .line 77
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 78
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method protected static exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 344
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private updateColumns()Z
    .locals 3

    .line 212
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 213
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceColumns:I

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addEditView(Landroid/view/View;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mEdit:Landroid/view/View;

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TileLayout;->addTileView(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 127
    iget-object p0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->saveTileIconAsImage()V

    return-void
.end method

.method protected addTileView(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 0

    .line 132
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected getCellHeight()I
    .locals 0

    .line 348
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    return p0
.end method

.method protected getColumnStart(I)I
    .locals 2

    .line 410
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getNumVisibleTiles()I
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)I
    .locals 0

    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method protected getRowTop(I)I
    .locals 2

    .line 402
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mTileVerticalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getTileVerticalMargin()I
    .locals 0

    .line 439
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mTileVerticalMargin:I

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected layoutTileRecords(I)V
    .locals 11

    .line 352
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 357
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    mul-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, p1, :cond_3

    .line 360
    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v4, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    move v4, v1

    .line 365
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 366
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/TileLayout;->getRowTop(I)I

    move-result v7

    if-eqz v0, :cond_2

    .line 367
    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v2

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/TileLayout;->getColumnStart(I)I

    move-result v8

    .line 368
    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int/2addr v9, v8

    .line 369
    iget-object v6, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/widget/LinearLayout;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public maxTiles()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int/2addr v0, p0

    const/4 p0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 375
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TileLayout;->layoutTileRecords(I)V

    .line 379
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget p3, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    mul-int/2addr p2, p3

    if-eq p1, p2, :cond_4

    .line 380
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mEdit:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 381
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    move p4, p2

    move p5, p4

    move v0, p5

    move v1, v0

    move v2, v1

    .line 386
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, p3

    if-ge p4, v3, :cond_3

    .line 387
    iget p5, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v1, p5, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v1, p2

    .line 391
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/TileLayout;->getRowTop(I)I

    move-result v0

    if-eqz p1, :cond_2

    .line 392
    iget p5, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr p5, v1

    sub-int/2addr p5, p3

    goto :goto_2

    :cond_2
    move p5, v1

    :goto_2
    invoke-virtual {p0, p5}, Lcom/android/systemui/qs/TileLayout;->getColumnStart(I)I

    move-result p5

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mEdit:Landroid/view/View;

    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int/2addr p2, p5

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    add-int/2addr p0, v0

    invoke-virtual {p1, p5, v0, p2, p0}, Landroid/view/View;->layout(IIII)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 223
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 224
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 225
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 228
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr v0, p2

    sub-int/2addr v0, v2

    div-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 232
    :cond_0
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mTileLayoutHeight:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    sub-int/2addr p2, v0

    .line 233
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    const/4 v3, 0x0

    if-ge p2, v0, :cond_1

    .line 234
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$dimen;->sec_qs_tile_height_no_label:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    move v0, v3

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$dimen;->sec_qs_tile_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    move v0, v2

    .line 240
    :goto_0
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    sub-int v5, p2, v4

    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    add-int/2addr v4, v6

    div-int/2addr v5, v4

    iput v5, p0, Lcom/android/systemui/qs/TileLayout;->mAvailableRows:I

    .line 241
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    if-lt v5, v4, :cond_2

    .line 242
    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mAvailableRows:I

    goto :goto_1

    :cond_2
    if-gt v5, v2, :cond_3

    .line 244
    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mAvailableRows:I

    .line 246
    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int v5, v6, v4

    sub-int/2addr p2, v5

    add-int/2addr v4, v2

    div-int/2addr p2, v4

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mTileVerticalMargin:I

    if-gtz p2, :cond_4

    .line 247
    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mTileVerticalMargin:I

    :cond_4
    int-to-float p2, v1

    const v3, 0x3cb43958    # 0.022f

    mul-float/2addr p2, v3

    float-to-int p2, p2

    mul-int/lit8 v3, p2, 0x2

    sub-int/2addr v1, v3

    .line 253
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    add-int/2addr v4, v2

    div-int/2addr v1, v4

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    add-int/2addr p2, v1

    .line 254
    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    .line 263
    invoke-static {v6}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result p2

    .line 264
    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, p0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 265
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 267
    :cond_5
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/plugins/qs/QSTileView;->setShowLabels(Z)V

    .line 269
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v5}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 270
    iget-object v3, v3, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    .line 274
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/qs/TileLayout;->mEdit:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 275
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v0}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-static {v1}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 280
    :cond_7
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mTileLayoutHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 150
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 145
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setCellWidth(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    return-void
.end method

.method public setLastCellWidth(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mLastCellWidth:I

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method public setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 93
    iget-boolean p2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne p2, p1, :cond_0

    return-void

    .line 94
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    .line 95
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 96
    iget-object p2, p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {p2, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxColumns(I)Z
    .locals 0

    .line 115
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/qs/TileLayout;->updateColumns()Z

    move-result p0

    return p0
.end method

.method public setMinRows(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateMaxRows(II)Z
    .locals 5

    .line 302
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    neg-int v0, v0

    add-int/2addr p1, v0

    .line 303
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getCellHeight()I

    move-result v1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    div-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 306
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    if-ge p1, v1, :cond_0

    .line 307
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    goto :goto_0

    .line 308
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    if-lt p1, v1, :cond_1

    .line 309
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 311
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int v3, p2, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    if-le p1, v3, :cond_2

    add-int/2addr p2, v1

    sub-int/2addr p2, v4

    .line 312
    div-int/2addr p2, v1

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 314
    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    if-eq v0, p0, :cond_3

    move v2, v4

    :cond_3
    return v2
.end method

.method public updateMaxRowsAndColumns(III)Z
    .locals 4

    .line 320
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    const v2, 0x3cb43958    # 0.022f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    .line 323
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 324
    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    div-int/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 325
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/systemui/R$integer;->sec_quick_settings_num_columns_power_saving:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 328
    :cond_0
    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsTileColumn(Landroid/content/Context;)I

    move-result p2

    .line 329
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-lt v3, p2, :cond_1

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    goto :goto_0

    .line 331
    :cond_1
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-gt p2, v2, :cond_2

    .line 332
    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 335
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/qs/TileLayout;->updateMaxRows(II)Z

    move-result p1

    if-nez p1, :cond_4

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method public updateResources()Z
    .locals 4

    .line 167
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    sget v1, Lcom/android/systemui/R$integer;->quick_settings_num_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceColumns:I

    .line 169
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 170
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    if-nez v0, :cond_0

    .line 172
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsTileColumn(Landroid/content/Context;)I

    move-result v0

    .line 176
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_tile_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    .line 177
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsTileRow(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 181
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileLayoutTopMargin(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    .line 182
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mLastCellWidth:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    if-eq v0, v1, :cond_2

    .line 184
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mLastCellWidth:I

    .line 185
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return v2

    .line 189
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v1, v0, :cond_2

    .line 190
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
