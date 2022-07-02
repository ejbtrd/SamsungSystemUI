.class public Lcom/android/wm/shell/draganddrop/SmartTipController;
.super Ljava/lang/Object;
.source "SmartTipController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayBounds:Landroid/graphics/Rect;

.field private mGapWithContent:I

.field private mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

.field private mInitialX:I

.field private mShown:Z

.field private mSurfaceHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/android/wm/shell/draganddrop/SmartTip;

    sget v6, Lcom/android/wm/shell/R$string;->drag_and_split_help_tip_msg:I

    sget v7, Lcom/android/wm/shell/R$integer;->drag_and_split_help_tip_limit_count:I

    sget v8, Lcom/android/wm/shell/R$layout;->drag_and_split_help_tip_view:I

    const-string v3, "ctwHelpTip"

    const-string v4, "CtwSmartTipPopup"

    const-string v5, "helpTipCount"

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/draganddrop/SmartTip;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    return-void
.end method

.method private adjustX(I)I
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/SmartTipController;->xOverDisplayHalf(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->left:I

    :goto_0
    return p0
.end method

.method private adjustY(I)I
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mSurfaceHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mGapWithContent:I

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private xOverDisplayHalf(I)Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dismissHelpTipIfPossible()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mShown:Z

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/SmartTip;->dismissIfPossible()V

    return-void
.end method

.method public moveHelpTipAxisY(I)V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mShown:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    iget v1, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mInitialX:I

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/SmartTipController;->adjustY(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/draganddrop/SmartTip;->moveTipPopup(II)V

    :cond_0
    return-void
.end method

.method public showHelpTipIfPossible(IILcom/android/wm/shell/common/DisplayLayout;I)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->drag_and_split_help_tip_gap_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mGapWithContent:I

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 52
    iput p4, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mSurfaceHeight:I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/SmartTipController;->adjustX(I)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mInitialX:I

    .line 54
    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    invoke-direct {p0, p2}, Lcom/android/wm/shell/draganddrop/SmartTipController;->adjustY(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/SmartTipController;->xOverDisplayHalf(I)Z

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p4, p3, p2, v0, p1}, Lcom/android/wm/shell/draganddrop/SmartTip;->showIfPossible(IIZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mShown:Z

    return-void
.end method
