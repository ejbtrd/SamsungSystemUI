.class abstract Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;
.super Ljava/lang/Object;
.source "DividerResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DividerResizeTarget"
.end annotation


# instance fields
.field private mBlurAnimator:Landroid/animation/ValueAnimator;

.field private final mBlurView:Landroid/widget/ImageView;

.field private mBoundsAnimator:Landroid/animation/ValueAnimator;

.field protected mDirection:I

.field private final mEndBounds:Landroid/graphics/Rect;

.field private mFadeOutEndPosition:I

.field private mFadeOutStartPosition:I

.field private final mGuideBarBounds:Landroid/graphics/Rect;

.field private mGuideBarView:Landroid/widget/ImageView;

.field private mGuideViewBarThickness:I

.field private mHasProtectedContent:Z

.field private mIsResizing:Z

.field private final mOriginBounds:Landroid/graphics/Rect;

.field private final mOriginOutlineInsets:Landroid/graphics/Rect;

.field private final mOutlineInsets:Landroid/graphics/Rect;

.field private mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

.field private final mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mScaleDownEndPosition:I

.field private mScaleDownStartPosition:I

.field private mSplitDismissSide:I

.field protected mTaskId:I

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mView:Landroid/widget/ImageView;

.field protected final mWindowingMode:I

.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V
    .locals 2

    .line 692
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 652
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    .line 664
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 665
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 666
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    .line 667
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsets:Landroid/graphics/Rect;

    .line 668
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 669
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mIsResizing:Z

    .line 670
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    .line 671
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    .line 675
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 682
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 693
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mWindowingMode:I

    .line 694
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    .line 695
    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 696
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 697
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 698
    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 699
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->setRoundedCorner()V

    .line 701
    sget-boolean p2, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz p2, :cond_0

    .line 702
    sget p2, Lcom/android/wm/shell/R$id;->guide_bar_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarView:Landroid/widget/ImageView;

    .line 703
    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 704
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarView:Landroid/widget/ImageView;

    .line 705
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/wm/shell/R$color;->guide_view_bar_color:I

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    .line 704
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 706
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->split_guide_view_bar_thickness:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideViewBarThickness:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->loadSnapshot()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;II)V
    .locals 0

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->onActionMove(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/widget/ImageView;
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/widget/ImageView;
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->onResizeFinished()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/widget/ImageView;
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/graphics/Rect;
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->updateViewBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;II)V
    .locals 0

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->onActionDrop(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Z
    .locals 0

    .line 649
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/graphics/Rect;
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method private applyGuideViewEffects()V
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$drawable;->split_guide_view:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 838
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 839
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getGradientOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 841
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_0
    return-void
.end method

.method private cancelBlurAnimation()V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DividerResizeLayout"

    const-string v1, "cancelBlurAnimation"

    .line 959
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method private computeGuideBarBounds()V
    .locals 5

    .line 1039
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 1040
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1041
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v4, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1045
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1063
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideViewBarThickness:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1060
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideViewBarThickness:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideViewBarThickness:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1056
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideViewBarThickness:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1052
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideViewBarThickness:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1048
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideViewBarThickness:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method

.method private getCurrentLayoutBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1201
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 1202
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result p0

    .line 1201
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getFadeOutFraction(I)F
    .locals 4

    .line 1116
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1118
    invoke-static {}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1400()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DividerResizeLayout"

    const-string p1, "getFadeOutFraction: failed, fadeOutZoneWidth is zero"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 1121
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1122
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    if-gt p1, v1, :cond_3

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    if-lt p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1126
    :cond_4
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method private getGradientOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 854
    :cond_0
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 852
    :cond_1
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 850
    :cond_2
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 848
    :cond_3
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0
.end method

.method private getPositionByDirection()I
    .locals 2

    .line 1185
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1193
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p0

    return p0

    .line 1187
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result p0

    return p0

    .line 1191
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result p0

    return p0

    .line 1189
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result p0

    return p0
.end method

.method private getScaleDownFraction(I)F
    .locals 4

    .line 1132
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1134
    invoke-static {}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1400()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DividerResizeLayout"

    const-string p1, "getScaleDownFraction: failed, scaleDownZoneWith is zero"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 1137
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1138
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    if-gt p1, v1, :cond_3

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    if-lt p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    const v1, 0x3f666666    # 0.9f

    if-eqz v2, :cond_4

    return v1

    .line 1142
    :cond_4
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    const p1, 0x3dccccd0    # 0.100000024f

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    return p0
.end method

.method private hasOutlineInsets()Z
    .locals 1

    .line 788
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private initDirection()V
    .locals 2

    .line 731
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mWindowingMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    goto :goto_0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    :goto_0
    return-void
.end method

.method private initDismissRanges()V
    .locals 1

    .line 739
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->getFirstFadeOutPosition()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    .line 741
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->getDismissStartThreshold()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    .line 742
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->getFirstSplitTargetPosition()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    goto :goto_0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->getLastFadeOutPosition()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    .line 745
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->getDismissEndThreshold()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutEndPosition:I

    .line 746
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1100(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$ResizeAlgorithm;->getLastSplitTargetPosition()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    .line 748
    :goto_0
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownEndPosition:I

    return-void
.end method

.method private initOutlineInsets()V
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    .line 759
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    .line 762
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1200(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method private isAnimating()Z
    .locals 1

    .line 861
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isBoundsAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isBoundsAnimating()Z
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInFadeOutZone(I)Z
    .locals 3

    .line 1107
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1108
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1110
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mFadeOutStartPosition:I

    if-lt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private isInScaleDownZone(I)Z
    .locals 3

    .line 1099
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isLeftOrTopDirection()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1100
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1102
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mScaleDownStartPosition:I

    if-lt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private isLeftOrTopDirection()Z
    .locals 2

    .line 784
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getDirection()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private loadSnapshot()V
    .locals 5

    .line 801
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTaskId:I

    const-string v1, "DividerResizeLayout"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSnapshot: Cannot find taskId for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1300(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTaskId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 806
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 810
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasProtectedContent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    .line 811
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->containsSecureLayer()Z

    move-result v2

    .line 812
    invoke-static {}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSnapshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", hasProtectedContent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", containsSecureLayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_2
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    if-eqz v1, :cond_3

    .line 818
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$color;->protected_content_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 819
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 820
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$drawable;->mw_splitview_ic_previewlock_mtrl:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 821
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 822
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 824
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasWallpaperBitmap()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 825
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->createSnapshotBitmapWithWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 827
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1500(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 828
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 829
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    move-object v0, v1

    :cond_5
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_6

    .line 831
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)V

    :cond_6
    :goto_1
    return-void

    .line 807
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSnapshot: Failed to get snapshot for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onActionDrop(II)V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->calculateBoundsForPosition(ILandroid/graphics/Rect;)V

    .line 889
    invoke-direct {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->updateDismissSide(I)Z

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 892
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    .line 893
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startBoundsAnimation(Landroid/graphics/Rect;)V

    return-void
.end method

.method private onActionMove(II)V
    .locals 2

    .line 869
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mIsResizing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 870
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mIsResizing:Z

    .line 871
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->onResizeStarted()V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->calculateBoundsForPosition(ILandroid/graphics/Rect;)V

    .line 874
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 876
    sget-boolean p1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->updateDismissSide(I)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 878
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    .line 879
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startBoundsAnimation(Landroid/graphics/Rect;)V

    .line 882
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isBoundsAnimating()Z

    move-result p1

    if-nez p1, :cond_3

    .line 883
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->updateViewBounds(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method private onResizeFinished()V
    .locals 2

    .line 920
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 922
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    :cond_0
    return-void
.end method

.method private onResizeStarted()V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 910
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 915
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startBlurAnimation()V

    const/4 v0, 0x1

    .line 916
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    return-void
.end method

.method private onViewBoundsChanged()V
    .locals 1

    .line 1069
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1072
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getPositionByDirection()I

    move-result v0

    .line 1073
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->updateScaleDownStateIfNeeded(I)V

    .line 1074
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->updateFadeOutStateIfNeeded(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setRoundedCorner()V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 794
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 796
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 797
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private startBlurAnimation()V
    .locals 3

    .line 927
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 930
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 931
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 941
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$3;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 950
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 951
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 952
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startBoundsAnimation(Landroid/graphics/Rect;)V
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1151
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1152
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    .line 1153
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1154
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "DividerResizeLayout"

    const-string/jumbo v1, "startBoundsAnimation: failed, invalid start bounds"

    .line 1155
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->updateViewBounds(Landroid/graphics/Rect;)V

    return-void

    .line 1159
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 1162
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 1163
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$6;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$6;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1170
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$7;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$7;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1178
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$2400()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1179
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1180
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startOutlineInsetsAnimation(Z)V
    .locals 3

    .line 964
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->hasOutlineInsets()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 968
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 970
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_2

    .line 971
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 972
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 973
    new-instance v2, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$4;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 986
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$5;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$5;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 994
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$2400()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 995
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 996
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateDismissSide(I)Z
    .locals 2

    .line 897
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    if-eq v0, p1, :cond_1

    .line 898
    invoke-static {}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDismissSide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->splitDismissSideToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerResizeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateFadeOutStateIfNeeded(I)V
    .locals 1

    .line 1089
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isInFadeOutZone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->cancelBlurAnimation()V

    .line 1091
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getFadeOutFraction(I)F

    move-result p1

    .line 1092
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1094
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private updateGuideBarViewBounds()V
    .locals 3

    .line 1023
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 1026
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->computeGuideBarBounds()V

    .line 1028
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarView:Landroid/widget/ImageView;

    .line 1029
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1030
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1031
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1032
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1033
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1034
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mGuideBarView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private updateScaleDownStateIfNeeded(I)V
    .locals 1

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->isInScaleDownZone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->getScaleDownFraction(I)F

    move-result p1

    .line 1080
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1081
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    .line 1083
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1084
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method private updateViewBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1000
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    .line 1001
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1002
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 1003
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1004
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1005
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1006
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1007
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1008
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->onViewBoundsChanged()V

    .line 1012
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 1013
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 1014
    sget-boolean p1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz p1, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->updateGuideBarViewBounds()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract calculateBoundsForPosition(ILandroid/graphics/Rect;)V
.end method

.method protected abstract getDirection()I
.end method

.method protected initTaskId()V
    .locals 2

    .line 723
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mWindowingMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$800(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTaskId:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 726
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$900(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mTaskId:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected initialize()V
    .locals 1

    .line 712
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->initTaskId()V

    .line 713
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->initDirection()V

    .line 714
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->initDismissRanges()V

    .line 715
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->initOutlineInsets()V

    .line 717
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v0, :cond_0

    .line 718
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->applyGuideViewEffects()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DividerResizeTarget{#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOriginBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mOriginOutlineInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Side="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
