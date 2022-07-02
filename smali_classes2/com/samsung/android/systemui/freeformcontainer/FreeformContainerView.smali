.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;
.super Landroid/widget/FrameLayout;
.source "FreeformContainerView.java"

# interfaces
.implements Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;


# static fields
.field private static final DEBUG:Z

.field private static final TAIL_ICON_ALPHA_ARRAY:[F

.field private static final TAIL_ICON_SCALE_ARRAY:[F


# instance fields
.field private mActivatedXSpringList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field private mActivatedYSpringList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimElevation:I

.field private mBackgroundDimView:Landroid/widget/FrameLayout;

.field private final mContext:Landroid/content/Context;

.field private mDefaultGapTop:I

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mFirstPointerX:F

.field private mFirstPointerY:F

.field private mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

.field private mIconItemTopMarginInFolder:I

.field private mIconLeftMarginInFolder:I

.field private final mIconViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsAppIconMoving:Z

.field private mLastIconPosition:I

.field private mLastPositionX:F

.field private mLastPositionY:F

.field private mNeedInitPosition:Z

.field private mPointerFolderDescription:Ljava/lang/String;

.field private mPointerGroupView:Landroid/view/ViewGroup;

.field private final mPointerPosition:Landroid/graphics/PointF;

.field private mPointerSettleDownEffectRequested:Z

.field private mPointerSettleDownGap:I

.field private mPointerView:Landroid/widget/ImageView;

.field private mPointerViewSize:I

.field private mSpringChainX:Lcom/facebook/rebound/SpringChain;

.field private mSpringChainY:Lcom/facebook/rebound/SpringChain;

.field private final mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mSystemGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdToMove:I

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;


# direct methods
.method public static synthetic $r8$lambda$0FR2Z-2kH87Cki5-MQw_2CMejn0(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->lambda$settleDownPointerEffect$3(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BJKKFUTjwVkz4ABzIAx__7lTY1o(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->lambda$animateBackgroundDim$2(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BR0Ym4kF0qAMr3_bHmjcTJAjmhw(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->lambda$scaleIconViewList$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D0m9axyqHVU9q8n7SQy6G-TNLLA(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->lambda$settleDownPointerEffect$5(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FE84swrqoD-OOoXfku-1lvmd3Q8(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->lambda$handlePointerTouch$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$QbeR9Axi0fn9BJpttRzEN30Sar0(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->handlePointerTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Vmj3mjl-GoLykg1TequyMSFQQL8(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->lambda$settleDownPointerEffect$4(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dpn12ubIaGEGx4y9VCZN6FvoFnU(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o8HTcEM6-_VtFUJjHi_tVjILiH0(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateSystemGestureExcludeRects()V

    return-void
.end method

.method public static synthetic $r8$lambda$t01XSh0HgCQfENqWJOQ_w29Kwig(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->lambda$animateToShowPointerGroupView$6()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 81
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->DEBUG:Z

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 90
    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    new-array v0, v0, [F

    .line 91
    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->TAIL_ICON_SCALE_ARRAY:[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f4f5c29    # 0.81f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 94
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 97
    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpRegion:Landroid/graphics/Region;

    .line 98
    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    .line 99
    new-instance p2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    const/4 p2, 0x0

    .line 109
    iput-boolean p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    .line 125
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    .line 126
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 130
    iput-boolean p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    .line 132
    iput-boolean p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mNeedInitPosition:Z

    const/4 p2, -0x1

    .line 135
    iput p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mLastIconPosition:I

    const/16 p2, 0x96

    const/16 v0, 0xa

    .line 925
    invoke-static {p2, v0, p2, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 926
    invoke-static {p2, v0, p2, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 927
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 928
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    const-string p2, "FreeformContainer"

    const-string v0, "[ContainerView] Create FreeformContainerView"

    .line 140
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mBackgroundDimView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Landroid/view/ViewGroup;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->settleDownPointerEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mAnimElevation:I

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Ljava/util/ArrayList;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Z
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->isSpringEffectCompleted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)Ljava/util/ArrayList;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->clearTailIconViews()V

    return-void
.end method

.method private addIconView(Landroid/widget/ImageView;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 653
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateIconViewListPosition()V

    .line 655
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isPointerViewState()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 656
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updatePointerViewVisibility(I)V

    .line 657
    iget-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    if-eqz p1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 659
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x4

    .line 660
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->animateToShowPointerGroupView()V

    .line 667
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->buildSpringChainsOfAllAppIcons()V

    return-void
.end method

.method private buildSpringChainsOfAllAppIcons()V
    .locals 8

    .line 931
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 936
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, 0x96

    const/16 v1, 0xa

    .line 939
    invoke-static {v0, v1, v0, v1}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 940
    invoke-static {v0, v1, v0, v1}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 942
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_2

    .line 944
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-int v6, v0, v2

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    if-ge v2, v1, :cond_1

    const/4 v3, 0x4

    .line 948
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 950
    :cond_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 951
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    new-instance v6, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$8;

    invoke-direct {v6, p0, v4, v5}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$8;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;F)V

    invoke-virtual {v3, v6}, Lcom/facebook/rebound/SpringChain;->addSpring(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/SpringChain;

    .line 990
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    new-instance v5, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;

    invoke-direct {v5, p0, v4}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$9;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/SpringChain;->addSpring(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/SpringChain;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1032
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateAllSpringsCurrentValue()V

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0, v3}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex(I)Lcom/facebook/rebound/SpringChain;

    .line 1035
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p0, v3}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex(I)Lcom/facebook/rebound/SpringChain;

    return-void
.end method

.method private clearTailIconViews()V
    .locals 3

    .line 904
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 905
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->isTailIconViewOrder(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 908
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 909
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 910
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    const/4 v2, 0x4

    .line 911
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private createIconView(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)Landroid/widget/ImageView;
    .locals 2

    .line 809
    new-instance v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 810
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getShowingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 813
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 815
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->setIconView(Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private deltaRotation(II)I
    .locals 0

    sub-int/2addr p2, p1

    if-gez p2, :cond_0

    add-int/lit8 p2, p2, 0x4

    :cond_0
    return p2
.end method

.method private getPointerViewBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 641
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 642
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerViewSize:I

    add-int v2, v0, p0

    add-int/2addr p0, v1

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private handlePointerTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 295
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 296
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v2, ")"

    const-string v3, "[ContainerView] onTouch("

    const-string v4, "FreeformContainer"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_a

    const/4 v7, 0x2

    if-eq p2, v6, :cond_3

    if-eq p2, v7, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    goto/16 :goto_1

    .line 313
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    if-nez v2, :cond_1

    .line 315
    iget p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mFirstDownX:F

    sub-float/2addr v0, p1

    float-to-double v7, v0

    iget p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mFirstDownY:F

    sub-float/2addr v1, p1

    float-to-double v0, v1

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 317
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 318
    iget v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mThresholdToMove:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    .line 319
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result p1

    if-nez p1, :cond_b

    .line 320
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->showDismissButton(Landroid/graphics/Rect;)V

    .line 321
    iput-boolean v6, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->requestPointerSettleDownEffect()V

    const/16 p1, 0x96

    const/16 v0, 0xa

    .line 323
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateSpringConfig(II)V

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->clearTailIconViews()V

    .line 325
    invoke-direct {p0, v5}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->scaleIconViewList(Z)V

    .line 326
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->DEBUG:Z

    if-eqz p0, :cond_b

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): Ready to move"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 332
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mLastPositionX:F

    sub-float v2, v0, v2

    add-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mLastPositionY:F

    sub-float v2, v1, v2

    add-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 335
    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mLastPositionX:F

    .line 336
    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mLastPositionY:F

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateSpringChainEndValue()V

    .line 339
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 340
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v6

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 341
    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 342
    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 346
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->notifyIconPositionChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 353
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") mIsAppIconMoving="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    if-eqz p1, :cond_6

    .line 356
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isEnterDismissButton()Z

    move-result p1

    if-nez p1, :cond_4

    .line 358
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->setPointerPosition(FF)V

    .line 360
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateSpringChainEndValue()V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 364
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 365
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 368
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    .line 382
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isFolderCollapseAnimating()Z

    move-result p1

    if-nez p1, :cond_8

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    if-ne p1, v6, :cond_7

    .line 384
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1, v5}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getItemByPosition(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 386
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZ)V

    .line 393
    :cond_8
    :goto_0
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->DEBUG:Z

    if-eqz p0, :cond_9

    .line 394
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v5

    .line 301
    :cond_a
    iput-boolean v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    .line 302
    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mFirstDownX:F

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mLastPositionX:F

    .line 303
    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mFirstDownY:F

    iput v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mLastPositionY:F

    .line 304
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mFirstPointerX:F

    .line 305
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mFirstPointerY:F

    .line 306
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->DEBUG:Z

    if-eqz p0, :cond_b

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 307
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    return v6
.end method

.method private initResources()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_pointer_default_gap_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mDefaultGapTop:I

    .line 227
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_move_interval:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mThresholdToMove:I

    .line 229
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_pointer_settle_down_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerSettleDownGap:I

    .line 232
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_item_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconLeftMarginInFolder:I

    .line 234
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_item_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconItemTopMarginInFolder:I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_folder_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mAnimElevation:I

    .line 239
    sget v0, Lcom/android/systemui/R$id;->freeform_container_dim_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mBackgroundDimView:Landroid/widget/FrameLayout;

    .line 240
    sget v0, Lcom/android/systemui/R$id;->freeform_container_pointer_group_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 241
    sget v0, Lcom/android/systemui/R$id;->freeform_container_pointer_control_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->freeform_container_outer_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerViewSize:I

    .line 244
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->freeform_container_pointer_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerFolderDescription:Ljava/lang/String;

    return-void
.end method

.method private isSpringEffectCompleted()Z
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTailIconViewOrder(I)Z
    .locals 3

    .line 752
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 v0, p0, -0x1

    add-int/lit8 p0, p0, -0x2

    .line 757
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lt v0, p1, :cond_1

    if-lt p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private synthetic lambda$animateBackgroundDim$2(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 426
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 427
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mBackgroundDimView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private synthetic lambda$animateToShowPointerGroupView$6()V
    .locals 4

    .line 829
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateIconViewListPosition()V

    .line 830
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$6;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    .line 848
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 849
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 851
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 850
    invoke-static {v2, v3, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createShowPointerViewAnimation(FFLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 849
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 852
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->requestPointerSettleDownEffect()V

    return-void
.end method

.method private synthetic lambda$handlePointerTouch$1(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 370
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->scaleIconViewList(Z)V

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    .line 372
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->hideDismissButtonAndDismissIcon(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 376
    iget p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mFirstPointerX:F

    iget v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mFirstPointerY:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->setPointerPosition(FF)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    .line 101
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 102
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 103
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 p0, 0x3

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method private synthetic lambda$scaleIconViewList$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 917
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 918
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 919
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 920
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$settleDownPointerEffect$3(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 784
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    if-nez p0, :cond_0

    .line 785
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 786
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$settleDownPointerEffect$4(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 789
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    if-nez p0, :cond_0

    .line 790
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 791
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$settleDownPointerEffect$5(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 794
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIsAppIconMoving:Z

    if-nez p0, :cond_0

    .line 795
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 796
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setY(F)V

    :cond_0
    return-void
.end method

.method private loadPositionFromSharedPreferences()V
    .locals 11

    .line 176
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    const-string v1, "freeform_container_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "position_x"

    .line 179
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "FreeformContainer"

    if-eqz v2, :cond_3

    const-string/jumbo v2, "position_y"

    .line 180
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    .line 185
    invoke-virtual {v4}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 186
    iget-object v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v5}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mDefaultGapTop:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 188
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 189
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 190
    iget-object v6, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int v7, v1

    float-to-int v8, v2

    iget v9, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerViewSize:I

    add-int v10, v7, v9

    add-int/2addr v9, v8

    invoke-virtual {v6, v7, v8, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 193
    iget-object v6, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    const-string/jumbo v7, "rotation"

    .line 194
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v6, v0, :cond_1

    .line 196
    iget-object v7, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v7}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 198
    :cond_1
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ContainerView] loadPositionFromSharedPreferences, position=("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") default=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->setPointerPosition(FF)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "[ContainerView] loadPositionFromSharedPreferences, need to init position"

    .line 181
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mNeedInitPosition:Z

    :goto_1
    return-void
.end method

.method private removeAllSpringsListeners()V
    .locals 3

    .line 1056
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[ContainerView] removeAllSpringsListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 1058
    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 1061
    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    goto :goto_1

    :cond_2
    const/16 v0, 0x96

    const/16 v1, 0xa

    .line 1064
    invoke-static {v0, v1, v0, v1}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 1065
    invoke-static {v0, v1, v0, v1}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    return-void
.end method

.method private removeIconView(Landroid/widget/ImageView;)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isPointerViewState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 674
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$3;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;)V

    .line 675
    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createIconFadeOutAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 674
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 694
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->buildSpringChainsOfAllAppIcons()V

    return-void
.end method

.method private requestPointerSettleDownEffect()V
    .locals 1

    const/4 v0, 0x1

    .line 763
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    return-void
.end method

.method private rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->deltaRotation(II)I

    move-result p0

    .line 544
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    if-eqz p0, :cond_3

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    iget p0, p4, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 563
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 564
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 565
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 556
    :cond_1
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 557
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p2, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 558
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 559
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 550
    :cond_2
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p2, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 551
    iget p0, p4, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 552
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 553
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 547
    :cond_3
    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 570
    :goto_0
    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private savePositionToSharedPreferences()V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mNeedInitPosition:Z

    if-eqz v0, :cond_0

    const-string p0, "FreeformContainer"

    const-string v0, "[ContainerView] savePositionToSharedPreferences, skip saving. Need to init position first"

    .line 210
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "freeform_container_pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const-string/jumbo v2, "position_x"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 219
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const-string/jumbo v2, "position_y"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 220
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const-string/jumbo v1, "rotation"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private scaleIconViewList(Z)V
    .locals 1

    .line 916
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    invoke-static {v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createScaleIconViewListAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)Landroid/animation/Animator;

    move-result-object p0

    .line 922
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private setPointerPosition(FF)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerViewSize:I

    add-int v2, p1, v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 254
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 255
    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setX(F)V

    .line 258
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setY(F)V

    .line 261
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 263
    iget-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mNeedInitPosition:Z

    if-nez p1, :cond_0

    .line 264
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V

    .line 267
    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 268
    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 269
    new-instance p2, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    .line 270
    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 271
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    div-int/2addr p1, p2

    add-int/2addr v0, p1

    .line 272
    iget p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mLastIconPosition:I

    if-eq p1, v0, :cond_1

    .line 273
    sget-object p1, Lcom/samsung/android/core/CoreSaConstant;->FREEFORM_DETAIL_MOVE_ICON:[Ljava/lang/String;

    aget-object p1, p1, v0

    const-string p2, "2203"

    invoke-static {p2, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mLastIconPosition:I

    :cond_1
    return-void
.end method

.method private settleDownPointerEffect()V
    .locals 12

    .line 767
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 770
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    .line 772
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 773
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 774
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->isTailIconViewOrder(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 776
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 777
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 778
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 779
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v10

    .line 780
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerSettleDownGap:I

    mul-int/2addr v5, v2

    int-to-float v5, v5

    add-float v11, v4, v5

    .line 782
    new-instance v5, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;)V

    new-instance v6, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;)V

    new-instance v7, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/widget/ImageView;)V

    sget-object v3, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    add-int/lit8 v4, v2, -0x1

    aget v8, v3, v4

    sget-object v3, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->TAIL_ICON_SCALE_ARRAY:[F

    aget v9, v3, v4

    invoke-static/range {v5 .. v11}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createSettleDownPointerEffectAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;FFFF)Landroid/animation/Animator;

    move-result-object v3

    .line 799
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 801
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 802
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 803
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateAllSpringsCurrentValue()V
    .locals 6

    .line 1069
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 1070
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 1071
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 1072
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 1075
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 1076
    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 1077
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updatePointerViewDescription()V
    .locals 3

    .line 719
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 722
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    const/4 v2, 0x0

    .line 723
    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getItemByPosition(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$4;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 734
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerFolderDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$5;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePointerViewImmediately()V
    .locals 0

    .line 580
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateIconViewListPosition()V

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateAllSpringsCurrentValue()V

    .line 583
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateTailIconViewsImmediately()V

    .line 585
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private updateSpringChainEndValue()V
    .locals 3

    .line 1043
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getY()F

    move-result p0

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :cond_1
    return-void
.end method

.method private updateSpringConfig(II)V
    .locals 7

    .line 1082
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 1084
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    int-to-double v3, p2

    .line 1085
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 1086
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 1088
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    .line 1089
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 1091
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    .line 1092
    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 1093
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    .line 1094
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 1095
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    .line 1096
    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 1097
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p0}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p0

    .line 1098
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/rebound/SpringConfig;->friction:D

    return-void
.end method

.method private updateSystemGestureExcludeRects()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSystemGestureExclusionRects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 286
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private updateTailIconViewsImmediately()V
    .locals 5

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 592
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->isTailIconViewOrder(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 596
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 597
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 598
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerSettleDownGap:I

    mul-int/2addr v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public animateBackgroundDim(Z)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    .line 405
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x11b

    .line 406
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 407
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 415
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x14d

    .line 416
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$2;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    :goto_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 425
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 429
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method animateToShowPointerGroupView()V
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    new-instance v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 611
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 612
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[ContainerView] dispatchKeyEvent(DOWN)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->onKeyDown(I)V

    .line 618
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 5

    .line 453
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateTouchableRegion()V

    .line 457
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isPointerViewState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 461
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 463
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public getBackgroundDimView()Landroid/view/View;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mBackgroundDimView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method getFolderPosition(IILandroid/graphics/PointF;)V
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerViewSize:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    .line 647
    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerViewSize:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    div-float/2addr p0, v1

    sub-float/2addr p1, p0

    .line 646
    invoke-virtual {p3, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method getIconViewListCount()I
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method hidePointerView(Landroid/graphics/Rect;)V
    .locals 3

    .line 873
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerViewSize:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconLeftMarginInFolder:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 877
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconLeftMarginInFolder:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    .line 880
    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    .line 881
    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconItemTopMarginInFolder:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 883
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$7;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    invoke-static {v2, v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createHidePointerAnimation(Landroid/view/animation/Animation$AnimationListener;II)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method hideTailIconViews()V
    .locals 5

    .line 859
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 860
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->isTailIconViewOrder(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 864
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 865
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 866
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerSettleDownGap:I

    mul-int/2addr v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 867
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->createHideAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method init(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    .line 146
    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->registerCallback(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;)V

    .line 147
    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    .line 149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 151
    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->initResources()V

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->loadPositionFromSharedPreferences()V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 156
    new-instance p2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const/4 p1, 0x0

    .line 159
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    const/16 p1, 0x8

    .line 160
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->isRotating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateDisplayFrame(Z)V

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updatePointerViewImmediately()V

    .line 442
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 447
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 448
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1

    .line 604
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCloseSystemDialogs(Ljava/lang/String;)V

    .line 605
    sget-boolean p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "FreeformContainer"

    const-string v0, "[ContainerView] onCloseSystemDialogs"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZ)V

    return-void
.end method

.method public onItemAdded(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 5

    .line 478
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mNeedInitPosition:Z

    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformContainerDefaultPoint()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 483
    iput-boolean v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mNeedInitPosition:Z

    .line 484
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerViewSize:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->setPointerPosition(FF)V

    .line 488
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->createIconView(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->addIconView(Landroid/widget/ImageView;)V

    .line 490
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 491
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->showWindow()V

    .line 494
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updatePointerViewDescription()V

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->requestPointerSettleDownEffect()V

    return-void
.end method

.method public onItemRemoved(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 1

    .line 500
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->removeIconView(Landroid/widget/ImageView;)V

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 505
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->hideWindow()V

    .line 508
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updatePointerViewDescription()V

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->requestPointerSettleDownEffect()V

    return-void
.end method

.method public onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isPointerViewState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZ)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 535
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 537
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->setPointerPosition(FF)V

    .line 538
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updatePointerViewImmediately()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->handleOutsideTouchFolderView(Landroid/view/MotionEvent;)V

    .line 473
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewDestroyed()V
    .locals 2

    .line 514
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->savePositionToSharedPreferences()V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 516
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->removeAllSpringsListeners()V

    .line 520
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 521
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->hideWindow()V

    .line 523
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 525
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method setPointerViewAccessibility(Z)V
    .locals 0

    .line 823
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    return-void
.end method

.method setScaledPointerPosition(FF)V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    mul-float/2addr v0, p2

    add-float/2addr v0, v2

    .line 167
    sget-boolean v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ContainerView] scalePointerPosition, new position=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ") scale=("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FreeformContainer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->setPointerPosition(FF)V

    :cond_1
    return-void
.end method

.method updateIconViewListPosition()V
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    .line 699
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    .line 701
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 702
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 703
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 704
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setY(F)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updatePointerViewVisibility(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 711
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 715
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateTouchableRegion()V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 623
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isPointerViewState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getPointerViewBounds(Landroid/graphics/Rect;)V

    .line 625
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mPointerSettleDownGap:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 631
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 633
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 634
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 635
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    return-void
.end method
