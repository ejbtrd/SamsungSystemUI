.class public Lcom/android/wm/shell/common/DisplayLayout;
.super Ljava/lang/Object;
.source "DisplayLayout.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mCutout:Landroid/view/DisplayCutout;

.field private mDensityDpi:I

.field private final mExtraStableInsets:Landroid/graphics/Rect;

.field private final mFlexPanelModeInsets:Landroid/graphics/Rect;

.field private mHasNavigationBar:Z

.field private mHasStatusBar:Z

.field private mHasTaskBar:Z

.field private mHeight:I

.field private final mImmersiveStableInsets:Landroid/graphics/Rect;

.field private mIsFlexPanelMode:Z

.field private mNavBarFrameHeight:I

.field private final mNonDecorInsets:Landroid/graphics/Rect;

.field private mRotation:I

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mStableInsetsWithoutCutout:Landroid/graphics/Rect;

.field private mTaskBarPosition:I

.field private mTaskBarWidthForRotation:[I

.field private mUiMode:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 94
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mBounds:Landroid/graphics/Rect;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    .line 105
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mIsFlexPanelMode:Z

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mFlexPanelModeInsets:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 115
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarWidthForRotation:[I

    const/4 v0, 0x2

    .line 116
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarPosition:I

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 170
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;[II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;[II)V
    .locals 5

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 94
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mBounds:Landroid/graphics/Rect;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    .line 105
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mIsFlexPanelMode:Z

    .line 109
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mFlexPanelModeInsets:Landroid/graphics/Rect;

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 115
    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarWidthForRotation:[I

    const/4 v1, 0x2

    .line 116
    iput v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarPosition:I

    .line 120
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    .line 176
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 177
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 178
    invoke-virtual {p2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 180
    sget-boolean p2, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->extraNavBarEnabled:I

    const/4 v4, 0x1

    if-ne p2, v1, :cond_0

    move v0, v4

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasTaskBar:Z

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 184
    :goto_0
    iput v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarPosition:I

    .line 185
    invoke-direct {p0, p3}, Lcom/android/wm/shell/common/DisplayLayout;->updateTaskBarWidthForRotation([I)V

    .line 188
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {v3, p1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->hasNavigationBar(Landroid/view/DisplayInfo;Landroid/content/Context;I)Z

    move-result p1

    .line 189
    invoke-static {v2}, Lcom/android/wm/shell/common/DisplayLayout;->hasStatusBar(I)Z

    move-result p3

    .line 188
    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/wm/shell/common/DisplayLayout;->init(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 94
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mBounds:Landroid/graphics/Rect;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    .line 105
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mIsFlexPanelMode:Z

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mFlexPanelModeInsets:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 115
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarWidthForRotation:[I

    const/4 v0, 0x2

    .line 116
    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarPosition:I

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method public static calculateDisplayCutoutForRotation(Landroid/view/DisplayCutout;III)Landroid/view/DisplayCutout;
    .locals 12

    if-eqz p0, :cond_8

    .line 516
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p1, :cond_1

    .line 520
    invoke-static {p0, p2, p3}, Lcom/android/wm/shell/common/DisplayLayout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    .line 522
    :cond_1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 524
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    .line 525
    array-length v4, v3

    new-array v4, v4, [Landroid/graphics/Rect;

    .line 526
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 527
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_5

    .line 528
    new-instance v6, Landroid/graphics/Rect;

    aget-object v7, v3, v2

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 529
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 530
    invoke-static {v6, v5, p1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 532
    :cond_4
    invoke-static {v2, p1}, Lcom/android/wm/shell/common/DisplayLayout;->getBoundIndexFromRotation(II)I

    move-result v7

    aput-object v6, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 534
    :cond_5
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object p0

    .line 535
    new-instance v2, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 536
    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v8

    .line 537
    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v11

    move-object v5, v2

    move v10, p1

    invoke-direct/range {v5 .. v11}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIFLjava/lang/String;IF)V

    .line 539
    invoke-static {v4, v0, v2}, Landroid/view/DisplayCutout;->constructDisplayCutout([Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz v1, :cond_6

    move p1, p3

    goto :goto_2

    :cond_6
    move p1, p2

    :goto_2
    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move p2, p3

    .line 538
    :goto_3
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayLayout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static computeNonDecorInsets(Landroid/content/res/Resources;IIILandroid/view/DisplayCutout;ILandroid/graphics/Rect;ZLandroid/graphics/Rect;)V
    .locals 0

    .line 445
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz p7, :cond_3

    .line 449
    invoke-static {p0, p2, p3, p1}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result p1

    const/4 p7, 0x1

    if-le p2, p3, :cond_0

    move p2, p7

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 451
    :goto_0
    invoke-static {p0, p1, p2, p5}, Lcom/android/wm/shell/common/DisplayLayout;->getNavigationBarSize(Landroid/content/res/Resources;IZI)I

    move-result p0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 453
    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 455
    iput p0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    if-ne p1, p7, :cond_3

    .line 457
    iput p0, p6, Landroid/graphics/Rect;->left:I

    .line 462
    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz p0, :cond_5

    if-eqz p8, :cond_5

    if-eqz p4, :cond_4

    .line 464
    iget p0, p6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    iget p2, p8, Landroid/graphics/Rect;->left:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->left:I

    .line 465
    iget p0, p6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    iget p2, p8, Landroid/graphics/Rect;->top:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->top:I

    .line 466
    iget p0, p6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    iget p2, p8, Landroid/graphics/Rect;->right:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->right:I

    .line 467
    iget p0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    iget p2, p8, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 469
    :cond_4
    iget p0, p6, Landroid/graphics/Rect;->left:I

    iget p1, p8, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->left:I

    .line 470
    iget p0, p6, Landroid/graphics/Rect;->top:I

    iget p1, p8, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->top:I

    .line 471
    iget p0, p6, Landroid/graphics/Rect;->right:I

    iget p1, p8, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->right:I

    .line 472
    iget p0, p6, Landroid/graphics/Rect;->bottom:I

    iget p1, p8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_5
    if-eqz p4, :cond_6

    .line 477
    iget p0, p6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->left:I

    .line 478
    iget p0, p6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->top:I

    .line 479
    iget p0, p6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->right:I

    .line 480
    iget p0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    :cond_6
    :goto_2
    return-void
.end method

.method private static computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 5

    .line 564
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 569
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    .line 570
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result v1

    .line 569
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 571
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 572
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {p0, v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result v2

    .line 571
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 573
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->right:I

    .line 574
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {p0, v3, v4}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result v3

    .line 573
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 575
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    .line 576
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p1

    const/16 v4, 0x50

    invoke-static {p0, p1, v4}, Lcom/android/wm/shell/common/DisplayLayout;->findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I

    move-result p0

    .line 575
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 579
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 565
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not implemented: display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cutout="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static computeSafeInsets(Landroid/view/DisplayCutout;II)Landroid/view/DisplayCutout;
    .locals 1

    .line 553
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 557
    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 558
    invoke-static {v0, p0}, Lcom/android/wm/shell/common/DisplayLayout;->computeSafeInsets(Landroid/util/Size;Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object p1

    .line 559
    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method private static convertNonDecorInsetsToStableInsets(Landroid/content/res/Resources;Landroid/graphics/Rect;IIZ)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-le p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 427
    :goto_0
    invoke-static {p2, p0}, Lcom/android/wm/shell/common/DisplayLayout;->getStatusBarHeight(ZLandroid/content/res/Resources;)I

    move-result p0

    .line 428
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method private static findCutoutInsetForSide(Landroid/util/Size;Landroid/graphics/Rect;I)I
    .locals 2

    .line 583
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/16 v0, 0x30

    if-eq p2, v0, :cond_2

    const/16 v0, 0x50

    if-ne p2, v0, :cond_1

    .line 592
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 598
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown gravity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 590
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 596
    :cond_3
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 594
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static getBoundIndexFromRotation(II)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    return p0
.end method

.method public static getNavigationBarFrameHeight(Landroid/content/res/Resources;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x1050205

    goto :goto_0

    :cond_0
    const p1, 0x1050204

    .line 675
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getNavigationBarSize(Landroid/content/res/Resources;IZI)I
    .locals 1

    and-int/lit8 p3, p3, 0xf

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x4

    if-eqz p3, :cond_3

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    const p1, 0x105020c

    goto :goto_1

    :cond_1
    const p1, 0x105020a

    .line 655
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_2
    const p1, 0x105020f

    .line 659
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_3
    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    const p1, 0x105020b

    goto :goto_2

    :cond_4
    const p1, 0x1050209

    .line 664
    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_5
    const p1, 0x105020e

    .line 668
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method static getStatusBarHeight(ZLandroid/content/res/Resources;)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x10504c0

    .line 507
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x10504c1

    .line 509
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method static hasNavigationBar(Landroid/view/DisplayInfo;Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    const-string/jumbo p0, "qemu.hw.mainkeys"

    .line 605
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    .line 606
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    const-string p2, "0"

    .line 608
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 611
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x111013b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    .line 613
    :cond_2
    iget p2, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    iget p2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    .line 615
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "force_desktop_mode_on_external_displays"

    .line 616
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    move p1, v1

    .line 619
    :goto_1
    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_6

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :cond_6
    :goto_2
    return v0
.end method

.method static hasStatusBar(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private init(Landroid/view/DisplayInfo;Landroid/content/res/Resources;ZZ)V
    .locals 1

    .line 233
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 234
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 235
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 236
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 237
    iget-object v0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 238
    iget p1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 239
    iput-boolean p3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 240
    iput-boolean p4, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 241
    invoke-direct {p0, p2}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static navigationBarPosition(Landroid/content/res/Resources;III)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_0

    const v2, 0x1110116

    .line 632
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 635
    :goto_0
    sget-boolean v2, Lcom/android/wm/shell/CoreShellRune;->MW_NAVBAR_MOVABLE_POLICY:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    if-eqz v0, :cond_3

    if-le p1, p2, :cond_3

    if-ne p3, v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x4

    return p0
.end method

.method private recalcInsets(Landroid/content/res/Resources;)V
    .locals 11

    .line 251
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz v0, :cond_0

    .line 252
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-direct {p0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->updateExtraStableInsets(I)V

    .line 255
    :cond_0
    iget v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget v4, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v5, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget-object v6, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget v7, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iget-object v8, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-boolean v9, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iget-object v10, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Lcom/android/wm/shell/common/DisplayLayout;->computeNonDecorInsets(Landroid/content/res/Resources;IIILandroid/view/DisplayCutout;ILandroid/graphics/Rect;ZLandroid/graphics/Rect;)V

    .line 257
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 258
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    if-eqz v1, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v4, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/wm/shell/common/DisplayLayout;->convertNonDecorInsetsToStableInsets(Landroid/content/res/Resources;Landroid/graphics/Rect;IIZ)V

    .line 261
    :cond_1
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getNavigationBarFrameHeight(Landroid/content/res/Resources;Z)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 264
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 273
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_WITHOUT_CUTOUT:Z

    if-eqz p1, :cond_6

    .line 275
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 276
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    if-lez p1, :cond_4

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-nez p1, :cond_4

    .line 278
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 279
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    if-lez p1, :cond_6

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-nez p1, :cond_6

    .line 281
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_6
    :goto_1
    return-void
.end method

.method private updateExtraStableInsets(I)V
    .locals 3

    .line 726
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasTaskBar:Z

    if-nez v0, :cond_0

    .line 727
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 731
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 732
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarWidthForRotation:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarWidthForRotation:[I

    aget p0, p0, p1

    invoke-virtual {v0, v2, v2, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method private updateTaskBarWidthForRotation([I)V
    .locals 2

    .line 739
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarWidthForRotation:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x1

    .line 740
    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x2

    .line 741
    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x3

    .line 742
    aget p1, p1, v0

    aput p1, p0, v0

    return-void
.end method


# virtual methods
.method public density()F
    .locals 1

    .line 362
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    int-to-float p0, p0

    const v0, 0x3bcccccd    # 0.00625f

    mul-float/2addr p0, v0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 126
    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 127
    :cond_1
    check-cast p1, Lcom/android/wm/shell/common/DisplayLayout;

    .line 128
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 131
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 134
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 135
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iget-boolean v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public extraInsets()Landroid/graphics/Rect;
    .locals 0

    .line 715
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDisplayBounds(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 691
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public getDisplayBounds(Landroid/graphics/Rect;Z)V
    .locals 3

    .line 695
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->hasExtraStableInset()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 696
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p2

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 699
    :cond_0
    iget p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-virtual {p1, v1, v1, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public getNavigationBarPosition(Landroid/content/res/Resources;)I
    .locals 2

    .line 416
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {p1, v0, v1, p0}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getSplitAreaBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 704
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;Z)V

    :goto_0
    return-void
.end method

.method public getStableBounds(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public getStableBounds(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 387
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public getStableBounds(Landroid/graphics/Rect;ZZ)V
    .locals 2

    .line 392
    iget p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 396
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object p0

    .line 397
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    return-void
.end method

.method public hasExtraStableInset()Z
    .locals 2

    .line 719
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 721
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 143
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 145
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xa

    aput-object p0, v0, v1

    .line 143
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public height()I
    .locals 0

    .line 347
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    return p0
.end method

.method public isLandscape()Z
    .locals 1

    .line 367
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public navBarFrameHeight()I
    .locals 0

    .line 372
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    return p0
.end method

.method public nonDecorInsets()Landroid/graphics/Rect;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public rotateTo(Landroid/content/res/Resources;I)V
    .locals 4

    .line 293
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    .line 294
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 296
    :goto_0
    iget v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 297
    iget v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 299
    iput p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-eqz v1, :cond_1

    .line 301
    iput v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 302
    iput v2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 305
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 306
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-static {p2, v0, v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;->calculateDisplayCutoutForRotation(Landroid/view/DisplayCutout;III)Landroid/view/DisplayCutout;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 310
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    return-void
.end method

.method public rotation()I
    .locals 0

    .line 352
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    return p0
.end method

.method public set(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 2

    .line 198
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mUiMode:I

    .line 199
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 200
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 201
    iget-object v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 202
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 203
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 204
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasNavigationBar:Z

    .line 205
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasStatusBar:Z

    .line 206
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 207
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 210
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz v0, :cond_0

    .line 211
    iget-boolean v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHasTaskBar:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasTaskBar:Z

    .line 212
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarPosition:I

    iput v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarPosition:I

    .line 213
    iget-object v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarWidthForRotation:[I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/DisplayLayout;->updateTaskBarWidthForRotation([I)V

    .line 214
    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/common/DisplayLayout;->updateExtraStableInsets(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 225
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_WITHOUT_CUTOUT:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public stableInsets()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public stableInsets(Z)Landroid/graphics/Rect;
    .locals 1

    if-eqz p1, :cond_1

    .line 325
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_IMMERSIVE_MODE_ENABLED:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVIBAR_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    return-object p0

    .line 333
    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_WITHOUT_CUTOUT:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz p1, :cond_2

    .line 334
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    return-object p0

    .line 337
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 750
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ mWidth="

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRotation="

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNonDecorInsets="

    .line 753
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStableInsets="

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 755
    sget-boolean v1, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_WITHOUT_CUTOUT:Z

    if-eqz v1, :cond_0

    const-string v1, ", mStableInsetsWithoutCutout="

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsetsWithoutCutout:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 758
    :cond_0
    sget-boolean v1, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz v1, :cond_1

    const-string v1, ", mExtraStableInsets="

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mExtraStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHasTaskBar"

    .line 760
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHasTaskBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskBarWidth="

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mTaskBarWidthForRotation:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    const-string/jumbo v5, "|"

    .line 763
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ", mImmersiveStableInsets"

    .line 767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mImmersiveStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    .line 769
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public width()I
    .locals 0

    .line 342
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    return p0
.end method
