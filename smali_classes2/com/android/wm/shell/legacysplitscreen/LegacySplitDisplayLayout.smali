.class public Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;
.super Ljava/lang/Object;
.source "LegacySplitDisplayLayout.java"


# instance fields
.field mAdjustedCell:Landroid/graphics/Rect;

.field mAdjustedPrimary:Landroid/graphics/Rect;

.field mAdjustedSecondary:Landroid/graphics/Rect;

.field mCell:Landroid/graphics/Rect;

.field private mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field mContext:Landroid/content/Context;

.field mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field mDividerSize:I

.field mDividerSizeInactive:I

.field private mForceMultiSplitLayout:Z

.field private mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field mPrimary:Landroid/graphics/Rect;

.field mResourcesValid:Z

.field private mReverseDockMode:I

.field mSecondary:Landroid/graphics/Rect;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V
    .locals 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mResourcesValid:Z

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 94
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 95
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 96
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 97
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    .line 98
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    .line 101
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedCell:Landroid/graphics/Rect;

    .line 106
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 110
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 114
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mReverseDockMode:I

    .line 118
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mForceMultiSplitLayout:Z

    .line 123
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 124
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 125
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private adjustForIME(Lcom/android/wm/shell/common/DisplayLayout;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 359
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    .line 361
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    .line 369
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x1

    .line 370
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    sub-int v1, p2, p3

    int-to-float v1, v1

    sub-int v2, p4, p3

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p6

    mul-float/2addr v2, v1

    int-to-float v3, p5

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 377
    invoke-direct {p0, p4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->isEnsureDockEnabled(I)Z

    move-result v2

    .line 380
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->isMultiSplitActive()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getCellSplitSide()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 382
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mCell:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    :goto_0
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    :goto_1
    if-eqz v2, :cond_3

    .line 387
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinTopStackBottom()I

    move-result v3

    goto :goto_2

    .line 390
    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 395
    :goto_2
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    sub-int/2addr p3, p4

    sub-int/2addr p3, v4

    const/4 p4, 0x0

    .line 405
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/2addr p2, p3

    .line 412
    sget-boolean p3, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz p3, :cond_4

    .line 414
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_3

    .line 417
    :cond_4
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 422
    :goto_3
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    invoke-virtual {p2, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v2, :cond_5

    .line 425
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget p3, p7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p1

    sub-int/2addr p5, v1

    add-int/2addr p3, p5

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 434
    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    neg-int p3, p1

    sub-int/2addr p5, v1

    add-int/2addr p3, p5

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 439
    :goto_4
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {p2, p8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v2, :cond_6

    .line 442
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    neg-int p1, p1

    add-int/2addr v3, p6

    iget p2, p8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p2

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p4, p1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    .line 451
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    neg-int p1, p1

    invoke-virtual {p0, p4, p1}, Landroid/graphics/Rect;->offset(II)V

    :goto_5
    return-void
.end method

.method private calculatePositionFromRatio(FILandroid/graphics/Rect;Lcom/android/internal/policy/DividerSnapAlgorithm;)I
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    .line 590
    invoke-virtual {p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0

    .line 592
    :cond_0
    invoke-static {p2}, Lcom/android/internal/policy/DockedDividerUtils;->isHorizontalDivision(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 594
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    if-eqz p0, :cond_2

    iget p0, p3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 596
    :cond_2
    iget p0, p3, Landroid/graphics/Rect;->left:I

    :goto_1
    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    .line 598
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0
.end method

.method private getMinTopStackBottom()I
    .locals 0

    .line 483
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0
.end method

.method static getPrimarySplitSide(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 557
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    sub-int/2addr p2, p0

    if-gez p2, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 566
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    sub-int/2addr p2, p0

    if-gez p2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method static getSmallestWidthDpForBounds(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/graphics/Rect;)I
    .locals 16

    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v1

    .line 489
    invoke-static {v0, v1}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerSize(Landroid/content/res/Resources;I)I

    move-result v0

    .line 496
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 497
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 498
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 500
    new-instance v11, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-direct {v11}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    const v2, 0x7fffffff

    move v12, v2

    move v13, v10

    :goto_0
    const/4 v2, 0x4

    if-ge v13, v2, :cond_0

    move-object/from16 v14, p1

    .line 502
    invoke-virtual {v11, v14}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v11, v2, v13}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    move-object/from16 v15, p0

    .line 504
    invoke-static {v15, v11, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->initSnapAlgorithmForRotation(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;I)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    move-object/from16 v7, p2

    .line 506
    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result v3

    invoke-static {v1, v9, v3, v13}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 508
    invoke-virtual {v11}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    invoke-virtual {v8, v10, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 510
    invoke-virtual {v11}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v3

    .line 509
    invoke-static {v1, v8, v3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 511
    invoke-static {v1, v3, v0}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v4

    .line 515
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 517
    invoke-virtual {v11}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v5

    invoke-virtual {v11}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v6

    move-object v4, v1

    move v7, v0

    .line 516
    invoke-static/range {v2 .. v7}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 518
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    .line 519
    invoke-virtual {v11, v3}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 520
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 521
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    int-to-float v0, v12

    .line 523
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static initSnapAlgorithmForRotation(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;I)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 12

    .line 528
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 529
    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 530
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 531
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 532
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->nonDecorInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 533
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 534
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x1

    .line 535
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 536
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v5

    div-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 537
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 538
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 539
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v8

    iget p0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v2, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v4

    .line 541
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v11

    move-object v5, v1

    move v9, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    return-object v1
.end method

.method private isEnsureDockEnabled(I)Z
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x40038e39

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinTopStackBottom()I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSizeInactive:I

    add-int/2addr v0, v2

    .line 476
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result p0

    sub-int/2addr p1, v0

    const/high16 v0, 0x43040000    # 132.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updateResources()V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mResourcesValid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mResourcesValid:Z

    .line 156
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v1

    .line 164
    invoke-static {v0, v1}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerSize(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    .line 169
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSizeInactive:I

    return-void
.end method


# virtual methods
.method calcSplitBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->calcSplitBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method calcSplitBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    .line 314
    sget-boolean p4, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz p4, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object p4

    goto :goto_0

    .line 317
    :cond_0
    sget-boolean p4, Lcom/android/wm/shell/CoreShellRune;->MW_BOUNDS_POLICY_WITH_EXTRA_STABLE_INSETS:Z

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 318
    invoke-virtual {p4}, Lcom/android/wm/shell/common/DisplayLayout;->hasExtraStableInset()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 319
    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p4}, Lcom/android/wm/shell/common/DisplayLayout;->extraInsets()Landroid/graphics/Rect;

    move-result-object p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 322
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v7

    .line 323
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 324
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    move v0, p1

    move v1, v7

    move-object v2, p2

    move-object v6, p4

    .line 323
    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 327
    invoke-static {v7}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v3

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 328
    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    move-object v2, p3

    .line 326
    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    return-void
.end method

.method calculatePositionFromRatio(F)I
    .locals 3

    const v0, 0x3efae148    # 0.49f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f028f5c    # 0.51f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    .line 581
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 582
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getSplitAreaBounds(Landroid/graphics/Rect;)V

    .line 583
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v1

    .line 584
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    .line 583
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->calculatePositionFromRatio(FILandroid/graphics/Rect;Lcom/android/internal/policy/DividerSnapAlgorithm;)I

    move-result p0

    return p0
.end method

.method canChangeDockSide()Z
    .locals 1

    .line 678
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->changeDivisionDirection(I)I

    move-result v0

    .line 679
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->canDockTo(I)Z

    move-result p0

    return p0
.end method

.method canDockTo(I)Z
    .locals 8

    .line 683
    new-instance v7, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    .line 684
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    .line 685
    invoke-static {p1}, Lcom/android/internal/policy/DockedDividerUtils;->isHorizontalDivision(I)Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 686
    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result p0

    return p0
.end method

.method changeDockSide()V
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->changeDivisionDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->changeDockSide(I)V

    return-void
.end method

.method changeDockSide(I)V
    .locals 1

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->dockTo(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 658
    invoke-virtual {p0, p1, v0, v0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplitsByMode(IFFZ)V

    :cond_0
    return-void
.end method

.method dockTo(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMultiSplitController()Lcom/android/wm/shell/legacysplitscreen/MultiSplitController;

    const/4 p0, 0x0

    throw p0
.end method

.method getCellSplitSide()I
    .locals 3

    .line 726
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method getFullPrimaryBounds(Landroid/graphics/Rect;)V
    .locals 7

    .line 746
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v1

    .line 747
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 748
    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    .line 747
    invoke-static {v0, v2, v3}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v0

    .line 749
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 750
    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v3

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    .line 751
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, p1

    .line 749
    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    return-void
.end method

.method getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 12

    .line 225
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateResources()V

    .line 227
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v7, v0, 0x1

    .line 228
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 229
    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 230
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v8

    .line 231
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v9

    const/4 v10, 0x1

    move-object v2, v0

    move v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZZ)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object p0
.end method

.method getMultiSplitController()Lcom/android/wm/shell/legacysplitscreen/MultiSplitController;
    .locals 0

    .line 690
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getMultiSplitController()Lcom/android/wm/shell/legacysplitscreen/MultiSplitController;

    move-result-object p0

    return-object p0
.end method

.method getPrimarySplitSide()I
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getNavigationBarPosition(Landroid/content/res/Resources;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 196
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 10

    .line 207
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateResources()V

    .line 209
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v7, v0, 0x1

    .line 216
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 217
    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v4

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v5

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 218
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v8

    .line 219
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 221
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object p0
.end method

.method public getStableBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 840
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method layoutSplitTasks(IFFI)V
    .locals 0

    .line 642
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplitsByMode(IFF)V

    return-void
.end method

.method resizeSplits(I)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 238
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 245
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->calcSplitBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method resizeSplits(ILandroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;ZI)V

    return-void
.end method

.method resizeSplits(ILandroid/window/WindowContainerTransaction;ZI)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 258
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;ZII)V

    return-void
.end method

.method resizeSplits(ILandroid/window/WindowContainerTransaction;ZII)V
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(I)V

    const/4 p1, 0x3

    if-ne p5, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 273
    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p3, p3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, p4, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)Landroid/window/WindowContainerTransaction;

    .line 274
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p3, p3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, p4, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)Landroid/window/WindowContainerTransaction;

    .line 288
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 289
    invoke-static {p3, p4, p5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSmallestWidthDpForBounds(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/graphics/Rect;)I

    move-result p3

    .line 288
    invoke-virtual {p2, p1, p3}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 290
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 291
    invoke-static {p3, p4, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSmallestWidthDpForBounds(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/graphics/Rect;)I

    move-result p0

    .line 290
    invoke-virtual {p2, p1, p0}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method resizeSplitsByMode(IFF)V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplitsByMode(IFFZ)V

    return-void
.end method

.method resizeSplitsByMode(IFFZ)V
    .locals 0

    const/4 p3, 0x0

    .line 608
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-gtz p3, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->calculatePositionFromRatio(F)I

    move-result p2

    .line 620
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p3, p3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getWmProxy()Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    move-result-object p3

    invoke-virtual {p3, p2, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyResizeSplits(ILcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;I)V

    .line 623
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 624
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateDividers()V

    :cond_1
    return-void
.end method

.method rotateTo(I)V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    .line 130
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/content/res/Configuration;->unset()V

    .line 132
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->nonDecorInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 135
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 136
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 137
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 140
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 142
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 143
    iput-boolean v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mResourcesValid:Z

    return-void
.end method

.method public stableInsets()Landroid/graphics/Rect;
    .locals 1

    .line 836
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 858
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{  Configuration="

    .line 859
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPrimary="

    .line 860
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSecondary="

    .line 861
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAdjustedPrimary="

    .line 862
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAdjustedSecondary="

    .line 863
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDisplayLayout="

    .line 865
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  }"

    .line 866
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateAdjustedBounds(III)V
    .locals 9

    .line 352
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSizeInactive:I

    iget-object v7, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->adjustForIME(Lcom/android/wm/shell/common/DisplayLayout;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
