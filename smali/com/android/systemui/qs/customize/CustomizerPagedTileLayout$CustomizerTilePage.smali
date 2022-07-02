.class public Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;
.super Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.source "CustomizerPagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizerTilePage"
.end annotation


# instance fields
.field private mCurrentRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 573
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View$OnDragListener;)V
    .locals 0

    .line 568
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 569
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    return-void
.end method


# virtual methods
.method public isFull()Z
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v1, p0

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setMatrix(II)V
    .locals 1

    .line 592
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUPPORT_CUSTOMIZER_IN_LANDSCAPE:Z

    if-eqz v0, :cond_0

    .line 593
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mCurrentRows:I

    .line 595
    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 596
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    return-void
.end method

.method public updateResources()Z
    .locals 4

    const-string v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "updateResources 2"

    .line 579
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUPPORT_CUSTOMIZER_IN_LANDSCAPE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 583
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mCurrentRows:I

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 585
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 588
    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->updateResources()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method
