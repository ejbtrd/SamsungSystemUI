.class public Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;,
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field protected mCellHeight:I

.field protected mCellVerticalMargin:I

.field protected mCellWidth:I

.field protected mColumns:I

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private final mDistribute:Ljava/lang/Runnable;

.field private mDragListener:Landroid/view/View$OnDragListener;

.field private mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field private mPageIndicatorPosition:F

.field private mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;",
            ">;"
        }
    .end annotation
.end field

.field mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private mRows:I

.field private mTileSpec:Ljava/lang/String;

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 41
    new-instance p2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v0, 0x4

    .line 84
    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    .line 97
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    .line 108
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 109
    new-instance p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateFadingEdgeEnabled()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicatorPosition:F

    return p1
.end method

.method private addPage()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_customizer_paged_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    .line 226
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMatrix(II)V

    .line 227
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    .line 229
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellWidth:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCellWidth(I)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private distributeTiles()V
    .locals 9

    .line 438
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 442
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$layout;->qs_customizer_paged_page:I

    invoke-virtual {v0, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    .line 447
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMatrix(II)V

    .line 448
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellWidth:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCellWidth(I)V

    :cond_0
    move v0, v3

    move v4, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 455
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 456
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 457
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 458
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$layout;->qs_customizer_paged_page:I

    invoke-virtual {v6, v7, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    .line 459
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMatrix(II)V

    .line 460
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellWidth:I

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCellWidth(I)V

    .line 466
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 467
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v4, v1

    if-eq v0, v4, :cond_5

    .line 471
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    const-string v0, "CSTMPagedTileLayout"

    const-string v2, "mPages.remove"

    .line 472
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v0, :cond_4

    .line 476
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 480
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    :cond_5
    move v0, v3

    .line 483
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 484
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 486
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v0, :cond_7

    .line 487
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 489
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_8

    .line 493
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 494
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 495
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int v0, v2, v0

    .line 496
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCustomizerPage(I)V

    goto :goto_3

    :cond_8
    move v0, v3

    .line 499
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileSpec:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    .line 500
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 501
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileSpec:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v5, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 502
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    mul-int/2addr v0, v3

    div-int/2addr v2, v0

    .line 503
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 508
    :cond_b
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method private movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 10

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v7

    .line 320
    iget v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v1, 0xcc

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v7, v3, :cond_1

    return-void

    :cond_0
    if-nez v7, :cond_1

    return-void

    :cond_1
    if-ne v0, v1, :cond_2

    move v8, v2

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    move v8, v3

    :goto_0
    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    move v4, v3

    goto :goto_1

    .line 329
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v4, v5

    sub-int/2addr v4, v2

    :goto_1
    if-ne v0, v1, :cond_4

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    move v6, v0

    goto :goto_2

    :cond_4
    move v6, v3

    .line 331
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 334
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v2, v7, v8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v5

    if-nez v5, :cond_5

    return-void

    .line 336
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 339
    iget-object v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 340
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p1, v4, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 341
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p1, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 343
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    new-instance v9, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$5;

    move-object v0, v9

    move-object v1, p0

    move v2, v7

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$5;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;IILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 354
    new-instance p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;

    invoke-direct {p1, p0, v7, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;II)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postDistributeTiles()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removePage()V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 251
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateFadingEdgeEnabled()V
    .locals 2

    .line 616
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 617
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_paged_tile_layout_fading_edge_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    return-void
.end method

.method private updateTilesInfo()V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 398
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v1

    .line 400
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 401
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 7

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSTMPagedTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v0, :cond_2

    .line 275
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addPage()V

    .line 278
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v3

    .line 279
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v3, v4, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 280
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    goto :goto_1

    .line 282
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v3

    .line 283
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v3, v4, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 284
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 289
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    return-void
.end method

.method public addTiles(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;)V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 257
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tiles added"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CSTMPagedTileLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->postDistributeTiles()V

    return-void
.end method

.method public getColumnCount()I
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 539
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    return p0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 183
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getRtlPosition(I)I

    move-result p0

    return p0
.end method

.method public getMinimumTileNum()I
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    mul-int/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method protected getRtlPosition(I)I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method public getSpec()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 379
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 380
    iget-object v3, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newspecs =  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CSTMPagedTileLayout"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTilesInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 389
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 391
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTotalPages()I
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleAnimate(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 5

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 546
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 547
    iget v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAnimate addInfo.spce"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "animation type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CSTMPagedTileLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xca

    if-ne v3, v4, :cond_0

    .line 550
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    goto :goto_1

    :cond_0
    const/16 v2, 0xc9

    if-ne v3, v2, :cond_1

    .line 552
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0xcb

    if-eq v3, v2, :cond_3

    const/16 v2, 0xcc

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0xc8

    if-ne v3, p1, :cond_4

    .line 556
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_1

    .line 554
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 164
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRtlPropertiesChanged(I)V

    .line 165
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    .line 166
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method public removeAllPage()V
    .locals 2

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v0, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 429
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeAllViews()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 1

    .line 606
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 607
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 7

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_2

    .line 299
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 302
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 304
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    :cond_1
    move v2, v4

    goto :goto_0

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 310
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCount()I

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 313
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    :cond_3
    return-void
.end method

.method public setCellWidth(I)V
    .locals 0

    .line 513
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellWidth:I

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 174
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method public setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V
    .locals 1

    .line 150
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/qs/SecPageIndicator;->onPanelModeChanged()V

    .line 152
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicatorPosition:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 153
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setExpansion(F)V

    .line 154
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setSecPageIndicatorCallback(Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;)V

    return-void
.end method

.method public setPageMatrix(II)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    .line 196
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    return-void
.end method

.method public setPanelTileLayout(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    return-void
.end method

.method public setSearchedTileSpec(Ljava/lang/String;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileSpec:Ljava/lang/String;

    return-void
.end method

.method public setSecIndicatorColor(I)V
    .locals 0

    return-void
.end method

.method public updateResources()Z
    .locals 5

    const-string v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "updateResources"

    .line 518
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_edit_tile_vertical_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellVerticalMargin:I

    .line 522
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_tile_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    const/4 v0, 0x0

    move v1, v0

    .line 523
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMatrix(II)V

    .line 525
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateTilesInfo()V

    .line 529
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
