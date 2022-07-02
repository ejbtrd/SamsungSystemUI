.class public Lcom/android/systemui/qs/QuickQSPanel;
.super Lcom/android/systemui/qs/QSPanel;
.source "QuickQSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
    }
.end annotation


# instance fields
.field mBarItemsHeightProvider:Lcom/android/systemui/qs/QuickQSPanelController$BarItemsHeightProvider;

.field private mDisabledByPolicy:Z

.field public mHeaderTileBottomMargin:I

.field private mMaxTiles:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHeaderTileBottomMargin:I

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getQuickQsTileNum()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setMaxTiles(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->updateBottomPadding()V

    return-void
.end method

.method public static parseNumTiles(Ljava/lang/String;)I
    .locals 0

    .line 174
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method protected closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 212
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected displayMediaMarginsOnMedia()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 134
    instance-of v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 136
    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    const/4 p2, 0x0

    .line 138
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 139
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    move-object p2, v0

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method protected getDumpableTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QuickQSPanel"

    return-object p0
.end method

.method public getNumQuickTiles()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    return p0
.end method

.method public bridge synthetic getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/TileLayout;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateTileLayout()Lcom/android/systemui/qs/TileLayout;
    .locals 2

    .line 87
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;-><init>(Lcom/android/systemui/qs/QuickQSPanel;Landroid/content/Context;)V

    return-object v0
.end method

.method public getQuickQsTileNum()I
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQuickQsTileNum(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method initialize()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->initialize()V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method protected mediaNeedsTopMargin()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->onMeasure(II)V

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHeaderTileBottomMargin:I

    add-int/2addr p2, v0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mBarItemsHeightProvider:Lcom/android/systemui/qs/QuickQSPanelController$BarItemsHeightProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/qs/QuickQSPanelController$BarItemsHeightProvider;->getBarItemsHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 121
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "qs_show_brightness"

    .line 151
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "0"

    .line 153
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 207
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method public setBarItemHeightProvider(Lcom/android/systemui/qs/QuickQSPanelController$BarItemsHeightProvider;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mBarItemsHeightProvider:Lcom/android/systemui/qs/QuickQSPanelController$BarItemsHeightProvider;

    return-void
.end method

.method setDisabledByPolicy(Z)V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    if-eq p1, v0, :cond_1

    .line 183
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 184
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMaxTiles(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    move p1, v1

    .line 202
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateBottomPadding()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getContainerBottomMargin(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method protected updatePadding()V
    .locals 0

    return-void
.end method
