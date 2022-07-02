.class public Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.super Landroid/view/ViewGroup;
.source "CustomizerTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;
    }
.end annotation


# instance fields
.field protected final mBoundaryBox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected mCellHeight:I

.field private mCellMarginTop:I

.field protected mCellWidth:I

.field private mCircle:Landroid/widget/FrameLayout;

.field protected mColumns:I

.field private mContext:Landroid/content/Context;

.field protected final mCustomTilesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDotIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mDotIconHorizontalMargin:I

.field protected mDotIconSize:I

.field private mDotIconVerticalMargin:I

.field private mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

.field protected mMaxRows:I

.field private mParent:Landroid/view/ViewGroup;

.field protected mSidePadding:I

.field private mTileHorizontalMargin:I

.field private mTileVerticalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIcon:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->updateResources()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "CustomizerTileLayout"

    const-string v0, "CustomizerTileLayout()"

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mParent:Landroid/view/ViewGroup;

    .line 79
    iput p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 80
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->qs_customizer_paged_page:I

    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mParent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->sec_qs_tile_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    move-result-object p0

    return-object p0
.end method

.method private createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;
    .locals 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCustomizeTileView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->qs_tile_icon_off_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 101
    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    iget-boolean v3, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    .line 102
    new-instance v0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    iget-boolean v3, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/customize/SecCustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 103
    iget-object v1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->customTileHandleStateChange(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 104
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->setClickable(Z)V

    .line 106
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScreenReaderFocusable(Z)V

    .line 109
    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->addBadge(Lcom/android/systemui/qs/customize/SecCustomizeTileView;)V

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->getTileLabel()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$color;->qs_edit_panel_tile_label_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private static exactly(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 85
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getColumnStart(I)I
    .locals 2

    .line 558
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    add-int/2addr p1, p0

    return p1
.end method

.method private getRowTop(I)I
    .locals 2

    .line 554
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public addBackgroundBox(IILandroid/view/View$OnDragListener;)V
    .locals 5

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBackgroundBox listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "row = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "col = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, p1, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 386
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$layout;->qs_customize_boundary_panel:I

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 387
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 388
    invoke-virtual {v3, p3}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 389
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 390
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$layout;->qs_customize_circle_panel:I

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 395
    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p1, p2

    :goto_1
    if-ge v1, p1, :cond_1

    .line 399
    new-instance p2, Landroid/view/View;

    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 400
    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$dimen;->qs_edit_dot_icon_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 401
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 402
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->qs_edit_dot_icon_background:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIcon:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tileInfo.isactive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    .line 123
    iget-object v1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 124
    iget-object v2, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const/4 v2, 0x0

    .line 125
    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 126
    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    .line 127
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 128
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 130
    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    .line 131
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    move-result-object v1

    .line 133
    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 134
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V
    .locals 10

    .line 150
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le p2, v0, :cond_0

    move p2, v0

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTile position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "idx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "withAnimation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomizerTileLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    .line 160
    iget-object v2, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 161
    iget-boolean v3, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v3, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    const/4 v3, 0x0

    .line 162
    iput-boolean v3, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 163
    iget-object v2, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 164
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 165
    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 168
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    if-ge p2, v0, :cond_1

    move p3, p2

    :goto_0
    const/4 v2, 0x1

    add-int/lit8 v4, v0, -0x1

    if-le p3, v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v4, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    new-array v5, v2, [Landroid/animation/Animator;

    const/4 v6, 0x2

    new-array v7, v6, [F

    .line 173
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v3

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v9, p3, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v2

    const-string/jumbo v8, "x"

    invoke-static {v4, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v2, [Landroid/animation/Animator;

    new-array v6, v6, [F

    .line 174
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTop()I

    move-result p3

    int-to-float p3, p3

    aput p3, v6, v3

    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTop()I

    move-result p3

    int-to-float p3, p3

    aput p3, v6, v2

    const-string/jumbo p3, "y"

    invoke-static {v4, p3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, v5, v3

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move p3, v9

    goto :goto_0

    .line 177
    :cond_1
    new-instance p3, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;

    invoke-direct {p3, p0, p2, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p2, 0x96

    .line 205
    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 206
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 208
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    move-result-object p1

    .line 209
    iput-object p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 210
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 211
    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 212
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public addTiles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 3

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dropTile tileInfo =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropTile tileView =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 327
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 328
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 329
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getCustomTileInfo()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 3

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInfo position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position is invalid position is  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 340
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object p0
.end method

.method public getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 1

    .line 344
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object p0
.end method

.method public indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I
    .locals 5

    const/4 v0, 0x0

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "CustomizerTileLayout"

    if-ge v0, v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 350
    iget-object v3, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "diffInfo.spec = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " i = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "diffInfo.spec is null"

    .line 355
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 12

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 268
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-le p2, v2, :cond_1

    move p2, v2

    .line 272
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTile from = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "total = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "fromtileInfo = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-string/jumbo v1, "y"

    const-string/jumbo v2, "x"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, p2, :cond_2

    move v6, v0

    :goto_0
    if-ge v6, p2, :cond_3

    .line 277
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v7, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    new-array v9, v5, [Landroid/animation/Animator;

    new-array v10, v3, [F

    .line 278
    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    int-to-float v11, v11

    aput v11, v10, v4

    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    int-to-float v11, v11

    aput v11, v10, v5

    invoke-static {v7, v2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {p1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v9, v5, [Landroid/animation/Animator;

    new-array v10, v3, [F

    .line 279
    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    int-to-float v11, v11

    aput v11, v10, v4

    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    aput v6, v10, v5

    invoke-static {v7, v1, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v9, v4

    invoke-virtual {p1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v6, v8

    goto :goto_0

    :cond_2
    move v6, v0

    :goto_1
    if-le v6, p2, :cond_3

    .line 283
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v7, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    new-array v9, v5, [Landroid/animation/Animator;

    new-array v10, v3, [F

    .line 284
    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    int-to-float v11, v11

    aput v11, v10, v4

    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    int-to-float v11, v11

    aput v11, v10, v5

    invoke-static {v7, v2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {p1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v9, v5, [Landroid/animation/Animator;

    new-array v10, v3, [F

    .line 285
    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    move-result v8

    int-to-float v8, v8

    aput v8, v10, v4

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    move-result v8

    int-to-float v8, v8

    aput v8, v10, v5

    invoke-static {v7, v1, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v9, v4

    invoke-virtual {p1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0xc8

    .line 288
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 290
    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;I)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 301
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 302
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const-string p0, "CustomizerTileLayout"

    const-string v0, "onAttachedToWindow()"

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 486
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 487
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    move p2, p4

    goto :goto_0

    :cond_0
    move p2, p3

    .line 491
    :goto_0
    iget p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr p5, v0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    move v0, p3

    move v1, v0

    move v2, v1

    :goto_1
    if-ge v0, p5, :cond_4

    .line 493
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    if-ne v1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v3

    .line 497
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v3, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    if-eqz p2, :cond_2

    .line 499
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, p4

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getColumnStart(I)I

    move-result v4

    .line 500
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getRowTop(I)I

    move-result v5

    .line 501
    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    add-int/2addr v6, v4

    if-eqz v3, :cond_3

    const/4 v7, 0x0

    .line 503
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 504
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 505
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 511
    :cond_4
    iget-object p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    move v0, p3

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v0, p5, :cond_7

    .line 513
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    if-ne v1, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v3

    .line 517
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getColumnStart(I)I

    move-result v3

    .line 518
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getRowTop(I)I

    move-result v4

    if-eqz p2, :cond_6

    sub-int v3, p1, v3

    .line 522
    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    sub-int v5, v3, v5

    move v8, v5

    move v5, v3

    move v3, v8

    goto :goto_4

    .line 524
    :cond_6
    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    add-int/2addr v5, v3

    .line 526
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 527
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v3, v4, v5, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 530
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p3, p3, p2, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 532
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIcon:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 533
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 536
    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    div-int/lit8 p2, p2, 0x2

    iget p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIconSize:I

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p2, p5

    .line 537
    iget p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIconVerticalMargin:I

    div-int/lit8 p5, p5, 0x2

    move v0, p3

    move v1, v0

    :goto_5
    if-ge p3, p1, :cond_9

    .line 542
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v0, v2

    .line 546
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getColumnStart(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 547
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getRowTop(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    .line 548
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 549
    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIconSize:I

    add-int v6, v2, v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v2, v3, v6, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    add-int/2addr v0, p4

    goto :goto_5

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 440
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 441
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    sub-int/2addr v1, v2

    int-to-float v2, v0

    const v3, 0x3cb43958    # 0.022f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v0, v3

    .line 445
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    mul-int v6, v4, v5

    sub-int/2addr v3, v6

    add-int/lit8 v6, v5, 0x1

    div-int/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileHorizontalMargin:I

    .line 446
    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v6, v7

    sub-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    div-int/2addr v1, v6

    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    const/4 v6, 0x0

    if-gez v1, :cond_0

    .line 447
    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    .line 448
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIconVerticalMargin:I

    add-int/2addr v2, v3

    .line 449
    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    add-int/2addr v0, v2

    mul-int/2addr v4, v5

    sub-int/2addr v0, v4

    add-int/lit8 v1, v5, -0x1

    .line 451
    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIconHorizontalMargin:I

    mul-int/2addr v5, v7

    .line 454
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_3

    .line 457
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    if-eqz v2, :cond_2

    .line 459
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 462
    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v6

    :goto_2
    if-ge v1, v0, :cond_4

    .line 468
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 469
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIcon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v6, v0, :cond_5

    .line 475
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 476
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIconSize:I

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIconSize:I

    invoke-static {v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 479
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 481
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 2

    const-string v0, "CustomizerTileLayout"

    const-string/jumbo v1, "removeAllViews clear"

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIcon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 373
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 2

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result p1

    .line 564
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 567
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    .line 568
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->getIconView()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    if-eqz v1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIconView:Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    if-eqz v1, :cond_1

    .line 571
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->removeBadge(Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;)V

    .line 572
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    :cond_1
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V
    .locals 11

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v0

    .line 218
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeTile index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CustomizerTileLayout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    if-eqz p2, :cond_1

    .line 225
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v4, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    new-array v6, v3, [Landroid/animation/Animator;

    const/4 v7, 0x2

    new-array v8, v7, [F

    .line 229
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    aput v9, v8, v10

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v3

    const-string/jumbo v9, "x"

    invoke-static {v4, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v6, v3, [Landroid/animation/Animator;

    new-array v7, v7, [F

    .line 230
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v10

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    aput v2, v7, v3

    const-string/jumbo v2, "y"

    invoke-static {v4, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v2, v5

    goto :goto_0

    .line 232
    :cond_0
    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecCustomizeTileView;)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0x96

    .line 253
    invoke-virtual {p2, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 254
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 257
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 258
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 2

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result p1

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectTile position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizerTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 317
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setCellWidth(I)V
    .locals 0

    .line 411
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    return-void
.end method

.method public setCircleVisibility(Z)V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public updateResources()Z
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsTileColumn(Landroid/content/Context;)I

    move-result v1

    .line 418
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_tile_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 419
    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_layout_margin_side:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    .line 420
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileLayoutTopMargin(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    .line 422
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileVerticalMargin:I

    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIconVerticalMargin:I

    .line 423
    sget v2, Lcom/android/systemui/R$dimen;->qs_edit_dot_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDotIconSize:I

    .line 425
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 429
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    if-eq v0, v1, :cond_1

    .line 430
    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 431
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method
