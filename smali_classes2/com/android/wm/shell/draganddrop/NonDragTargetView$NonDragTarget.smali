.class Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;
.super Ljava/lang/Object;
.source "NonDragTargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/NonDragTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonDragTarget"
.end annotation


# instance fields
.field private mAnimatingExit:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mBaseBounds:Landroid/graphics/Rect;

.field private mBlurAnimator:Landroid/animation/ValueAnimator;

.field private final mBlurView:Landroid/widget/ImageView;

.field private final mCurrentOutlineInsets:Landroid/graphics/Rect;

.field private final mDownScale:Landroid/graphics/PointF;

.field private mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

.field private final mEndBounds:Landroid/graphics/Rect;

.field private mHasProtectedContent:Z

.field private final mInitialOutlineInsets:Landroid/graphics/Rect;

.field private mInsetsInitialized:Z

.field private final mOriginBounds:Landroid/graphics/Rect;

.field private mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

.field private final mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private final mTargetOutlineInsets:Landroid/graphics/Rect;

.field private final mTmpInsetsRect:Landroid/graphics/Rect;

.field private mTransitAnimator:Landroid/animation/ValueAnimator;

.field private final mView:Landroid/widget/ImageView;

.field private final mWindowingMode:I

.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)V
    .locals 4

    .line 835
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 796
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 797
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 798
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 800
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInsetsInitialized:Z

    .line 801
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mHasProtectedContent:Z

    .line 802
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    .line 803
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 804
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 805
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 807
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 809
    new-instance v0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$1;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    const/4 v0, 0x5

    .line 836
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mWindowingMode:I

    .line 837
    sget v0, Lcom/android/wm/shell/R$id;->drop_target_freeform:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 838
    sget v1, Lcom/android/wm/shell/R$id;->drop_target_freeform_blur:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 840
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2100(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object p0

    .line 841
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 842
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 843
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2200(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 845
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2300(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/android/wm/shell/R$dimen;->dnd_drop_freeform_height:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, v2

    .line 847
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p0, p1

    .line 848
    div-int/lit8 p0, p0, 0x2

    .line 849
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    add-int/2addr v2, v1

    add-int/2addr p1, p0

    .line 850
    invoke-virtual {v3, v1, p0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 851
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 852
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 853
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 854
    iget p1, v3, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 855
    iget p1, v3, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView;ILandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 4

    .line 818
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 796
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 797
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 798
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    const/4 v3, 0x0

    .line 800
    iput-boolean v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInsetsInitialized:Z

    .line 801
    iput-boolean v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mHasProtectedContent:Z

    .line 802
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    .line 803
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 804
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 805
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 807
    iput-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 809
    new-instance v3, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$1;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V

    iput-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 819
    iput p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mWindowingMode:I

    .line 820
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 821
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 822
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$1900(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Lcom/android/wm/shell/draganddrop/TaskVisibility;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 823
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$1900(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Lcom/android/wm/shell/draganddrop/TaskVisibility;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 824
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 825
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 826
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 827
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2000(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)I

    move-result p3

    sub-int p3, p0, p3

    int-to-float p3, p3

    int-to-float p0, p0

    div-float/2addr p3, p0

    iput p3, v2, Landroid/graphics/PointF;->x:F

    .line 828
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2000(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)I

    move-result p0

    sub-int p0, p2, p0

    int-to-float p0, p0

    int-to-float p1, p2

    div-float/2addr p0, p1

    iput p0, v2, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V
    .locals 0

    .line 785
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->initNonTarget()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;
    .locals 0

    .line 785
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->getView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V
    .locals 0

    .line 785
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->getCurrentBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)I
    .locals 0

    .line 785
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)I
    .locals 0

    .line 785
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mWindowingMode:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Z)V
    .locals 0

    .line 785
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->startTransition(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/widget/ImageView;)V
    .locals 0

    .line 785
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->updateImageMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V
    .locals 0

    .line 785
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->animate(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Z
    .locals 0

    .line 785
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimatingExit:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Z)Z
    .locals 0

    .line 785
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimatingExit:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Z
    .locals 0

    .line 785
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->isVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V
    .locals 0

    .line 785
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->adjustNonTarget()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Lcom/android/wm/shell/draganddrop/DropTargetView;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 785
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;)V
    .locals 0

    .line 785
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private adjustNonTarget()V
    .locals 4

    .line 965
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 966
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 967
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 968
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 969
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 970
    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 971
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mHasProtectedContent:Z

    if-eqz v0, :cond_0

    .line 972
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 975
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method private animate(Landroid/graphics/Rect;)V
    .locals 4

    .line 985
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 989
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 991
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 992
    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    .line 993
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 994
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 997
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 998
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1000
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1001
    new-instance v3, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1015
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$3;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1021
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3100()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1022
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1023
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1025
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->animateBlurEffectIfNeeded()V

    .line 1026
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->startOutlineInsetsAnimationIfNeeded()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateBlurEffectIfNeeded()V
    .locals 5

    .line 1030
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mHasProtectedContent:Z

    if-eqz v0, :cond_0

    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1034
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 1035
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x2

    if-eqz v1, :cond_5

    new-array v0, v0, [F

    .line 1040
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-array v0, v0, [F

    .line 1041
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 1042
    new-instance v2, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$4;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1048
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$5;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$5;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1054
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1055
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-nez v1, :cond_6

    .line 1057
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1059
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    .line 867
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private getCurrentBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 958
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 960
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private getCurrentLayoutBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 981
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getView()Landroid/widget/ImageView;
    .locals 0

    .line 859
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getWindowingMode()I
    .locals 0

    .line 871
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mWindowingMode:I

    return p0
.end method

.method private initNonTarget()V
    .locals 1

    .line 930
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->shouldInitNonTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2600(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->setThumbnail()V

    goto :goto_0

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->setDropTargetView()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isVisible()Z
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCornerRound()V
    .locals 3

    .line 918
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 919
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 920
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 921
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private setDropTargetView()V
    .locals 3

    .line 879
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->dnd_drop_target_view:I

    const/4 v2, 0x0

    .line 880
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetView;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 881
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetView;->bindByNaturalSwitching(Landroid/graphics/Rect;)V

    .line 882
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 883
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 884
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 885
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 886
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 887
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 888
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setThumbnail()V
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$1900(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Lcom/android/wm/shell/draganddrop/TaskVisibility;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mWindowingMode:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getRootTaskInfo(I)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 896
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->setCornerRound()V

    .line 897
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 898
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    iget v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 901
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasProtectedContent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mHasProtectedContent:Z

    .line 903
    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mHasProtectedContent:Z

    if-eqz v1, :cond_2

    .line 904
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$color;->protected_content_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 905
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$drawable;->mw_splitview_ic_previewlock_mtrl:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    .line 908
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 909
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2500(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 911
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 912
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private shouldInitNonTarget()Z
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2700(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mWindowingMode:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/16 v0, 0xc

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    return v2

    .line 949
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$1900(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Lcom/android/wm/shell/draganddrop/TaskVisibility;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isSplit()Z

    move-result p0

    return p0

    .line 947
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$1900(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Lcom/android/wm/shell/draganddrop/TaskVisibility;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isPrimaryVisible()Z

    move-result p0

    return p0

    .line 951
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$1900(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Lcom/android/wm/shell/draganddrop/TaskVisibility;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isMultiSplit()Z

    move-result p0

    return p0

    .line 945
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$1900(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Lcom/android/wm/shell/draganddrop/TaskVisibility;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isFullsceenVisible()Z

    move-result p0

    return p0
.end method

.method private startOutlineInsetsAnimationIfNeeded()V
    .locals 5

    .line 1146
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$2600(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1149
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInsetsInitialized:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1150
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->updateTargetOutlineInsets()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1153
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 1154
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 1157
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1158
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 1159
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 1160
    new-instance v4, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1174
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$9;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$9;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1181
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1182
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1183
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startTransition(Z)V
    .locals 7

    .line 1068
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    if-eqz p1, :cond_1

    .line 1072
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->startOutlineInsetsAnimationIfNeeded()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1074
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mAnimatingExit:Z

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1076
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    .line 1077
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v3

    .line 1078
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleY()F

    move-result v5

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 1079
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 1080
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    move v6, p1

    goto :goto_2

    :cond_3
    move v6, v0

    .line 1082
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1096
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$7;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$7;-><init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1106
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3100()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1107
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1108
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTransitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateImageMatrix(Landroid/widget/ImageView;)V
    .locals 7

    .line 1187
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 1189
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1190
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3600(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v6, v4

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1191
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3600(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1192
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3600(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1193
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v3}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3600(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v3, p0

    .line 1194
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_0
    const/4 p0, 0x0

    int-to-float v1, v1

    .line 1196
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1197
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1198
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private updateTargetOutlineInsets()Z
    .locals 6

    .line 1112
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1113
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$1900(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Lcom/android/wm/shell/draganddrop/TaskVisibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isLandscape()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1114
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 1116
    :goto_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_1

    .line 1117
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1120
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_2

    if-eqz v0, :cond_2

    .line 1121
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1123
    :cond_2
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_3

    .line 1124
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v5}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1126
    :cond_3
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_4

    .line 1127
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->this$0:Lcom/android/wm/shell/draganddrop/NonDragTargetView;

    invoke-static {v4}, Lcom/android/wm/shell/draganddrop/NonDragTargetView;->access$3400(Lcom/android/wm/shell/draganddrop/NonDragTargetView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_4

    .line 1128
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_4

    .line 1129
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1133
    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInsetsInitialized:Z

    if-nez v0, :cond_5

    .line 1134
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInsetsInitialized:Z

    .line 1135
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1138
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1139
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bringToFront()V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 926
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->bringToFront()V

    return-void
.end method
