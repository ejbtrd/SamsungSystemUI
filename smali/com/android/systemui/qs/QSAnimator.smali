.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;
    }
.end annotation


# instance fields
.field private mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private mNeedsAnimatorUpdate:Z

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

.field private mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mQuickQsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecQuickStatusBarHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field private final mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private mShowCollapsedOnKeyguard:Z

.field private mTranslateWhileExpanding:Z

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$X3NBs2olMRBkDKYFVdJQOpLFabM(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSSecurityFooter;Ljava/util/concurrent/Executor;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSExpansionPathInterpolator;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 604
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 617
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 123
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 124
    iput-object p4, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 125
    iput-object p5, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 127
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mSecQuickStatusBarHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 131
    iput-object p7, p0, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 132
    iput-object p6, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 133
    iput-object p8, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    .line 134
    iput-object p9, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 135
    iput-object p10, p0, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 136
    invoke-virtual {p6, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 137
    invoke-virtual {p4, p0}, Lcom/android/systemui/util/ViewController;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 138
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 139
    invoke-virtual {p4}, Lcom/android/systemui/util/ViewController;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 142
    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    .line 143
    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 144
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    :cond_1
    const-string p1, "QSAnimator"

    const-string p2, "QS Not using page layout"

    .line 146
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    invoke-virtual {p4, p0}, Lcom/android/systemui/qs/QSPanelController;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method private clearAnimationState()V
    .locals 6

    .line 566
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 569
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 570
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 571
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 572
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 573
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    .line 574
    instance-of v5, v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    if-eqz v5, :cond_0

    .line 575
    check-cast v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 576
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->resetViewsHeights()V

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_3

    .line 583
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->resetViewsHeights()V

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 587
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 477
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 478
    aput v1, p1, v0

    .line 479
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 4

    if-eq p2, p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSAnimator;->isAPage(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 487
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v2

    .line 488
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v1

    .line 490
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v0, :cond_2

    .line 492
    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, p1, v2

    .line 493
    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    aput v0, p1, v1

    .line 495
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isAPage(Landroid/view/View;)Z
    .locals 0

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lcom/android/systemui/qs/SideLabelTileLayout;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 472
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 473
    iget p0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr p0, v0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    if-ge p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 618
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 619
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method

.method private setCurrentPosition()V
    .locals 1

    .line 195
    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    return-void
.end method

.method private translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V
    .locals 6

    .line 247
    invoke-direct {p0, p6, p1, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 248
    aget v1, p6, v0

    const/4 v2, 0x1

    .line 249
    aget v3, p6, v2

    .line 250
    invoke-direct {p0, p6, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 251
    aget p3, p6, v0

    .line 252
    aget p6, p6, v2

    sub-int/2addr p3, v1

    sub-int/2addr p3, p4

    const/4 p4, 0x2

    new-array v1, p4, [F

    const/4 v4, 0x0

    aput v4, v1, v0

    int-to-float v5, p3

    aput v5, v1, v2

    const-string/jumbo v5, "translationX"

    .line 255
    invoke-virtual {p7, p1, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v1, p4, [F

    neg-int p3, p3

    int-to-float p3, p3

    aput p3, v1, v0

    aput v4, v1, v2

    .line 256
    invoke-virtual {p7, p2, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    sub-int/2addr p6, v3

    sub-int/2addr p6, p5

    new-array p3, p4, [F

    aput v4, p3, v0

    int-to-float p5, p6

    aput p5, p3, v2

    const-string/jumbo p5, "translationY"

    .line 258
    invoke-virtual {p8, p1, p5, p3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array p3, p4, [F

    neg-int p4, p6

    int-to-float p4, p4

    aput p4, p3, v0

    aput v4, p3, v2

    .line 259
    invoke-virtual {p8, p2, p5, p3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 260
    iget-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateAnimators()V
    .locals 30

    move-object/from16 v9, p0

    const/4 v10, 0x0

    .line 265
    iput-boolean v10, v9, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 266
    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 267
    new-instance v12, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 268
    new-instance v13, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 270
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    const/4 v14, 0x2

    new-array v15, v14, [I

    new-array v8, v14, [I

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 276
    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    .line 278
    iput-object v7, v9, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 279
    iput-object v7, v9, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 281
    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v1

    iput v1, v9, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 283
    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v6

    .line 284
    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object v2, v6

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v10

    .line 286
    :goto_0
    iget-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 287
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 288
    iget-boolean v2, v9, Lcom/android/systemui/qs/QSAnimator;->mTranslateWhileExpanding:Z

    if-nez v2, :cond_1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :cond_1
    move v5, v1

    new-array v1, v14, [F

    int-to-float v2, v5

    aput v2, v1, v10

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput v17, v1, v16

    const-string/jumbo v4, "translationY"

    .line 291
    invoke-virtual {v11, v6, v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 295
    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->areThereTiles()Z

    move-result v1

    const-string v3, "alpha"

    if-eqz v1, :cond_7

    .line 296
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v2, v10

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 297
    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    if-nez v1, :cond_2

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tileView is null "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 302
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v7

    .line 303
    iget-object v14, v9, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v14}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v14

    .line 306
    iget-object v10, v9, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v10

    if-ge v2, v10, :cond_5

    iget-boolean v10, v9, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v10, :cond_5

    .line 309
    iget-object v7, v9, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v7, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v10

    if-nez v10, :cond_3

    :goto_2
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x2

    goto :goto_1

    .line 312
    :cond_3
    invoke-direct {v9, v15, v10, v14}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 313
    invoke-direct {v9, v8, v1, v14}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 314
    aget v0, v8, v16

    aget v7, v15, v16

    sub-int v21, v0, v7

    const/4 v0, 0x0

    .line 315
    aget v7, v8, v0

    aget v20, v15, v0

    sub-int v7, v7, v20

    move/from16 v22, v2

    move-object/from16 v23, v3

    const/4 v2, 0x2

    new-array v3, v2, [F

    aput v17, v3, v0

    int-to-float v0, v7

    aput v0, v3, v16

    const-string/jumbo v0, "translationX"

    .line 318
    invoke-virtual {v13, v10, v0, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v3, v2, [F

    neg-int v2, v7

    int-to-float v2, v2

    const/16 v20, 0x0

    aput v2, v3, v20

    aput v17, v3, v16

    .line 319
    invoke-virtual {v13, v1, v0, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 321
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-nez v0, :cond_4

    .line 322
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 323
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-direct {v0, v9, v2, v3}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;-><init>(Lcom/android/systemui/qs/TouchAnimator$Listener;II)V

    iput-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 324
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getHeight()I

    .line 327
    :cond_4
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->addView(Landroid/view/View;)V

    .line 331
    invoke-virtual {v10}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v2

    .line 332
    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v24, v1

    move-object v1, v2

    move-object/from16 v25, v11

    move/from16 v11, v22

    move-object v2, v3

    move-object/from16 v26, v23

    move-object v3, v14

    move-object/from16 v27, v4

    move v4, v7

    move/from16 v28, v5

    move/from16 v5, v21

    move-object/from16 v29, v6

    move-object v6, v15

    move/from16 v19, v7

    move-object v7, v13

    move-object/from16 v22, v8

    move-object v8, v12

    .line 330
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 343
    invoke-virtual {v10}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    move-result-object v1

    .line 344
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    move-result-object v2

    move/from16 v4, v19

    .line 342
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 355
    invoke-virtual {v10}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    move-result-object v1

    .line 356
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    move-result-object v2

    .line 354
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 366
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    move-object/from16 v6, v26

    move-object/from16 v5, v27

    move/from16 v2, v28

    goto :goto_3

    :cond_5
    move-object/from16 v24, v1

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v22, v8

    move-object/from16 v25, v11

    move v11, v2

    .line 374
    iget-boolean v0, v9, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    if-eqz v0, :cond_6

    invoke-direct {v9, v11}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    new-array v1, v0, [F

    move/from16 v2, v28

    neg-int v3, v2

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v1, v4

    aput v17, v1, v16

    move-object/from16 v4, v24

    move-object/from16 v3, v25

    move-object/from16 v5, v27

    .line 376
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 378
    iget-object v1, v9, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v26

    goto :goto_3

    :cond_6
    move-object/from16 v4, v24

    move-object/from16 v3, v25

    move-object/from16 v5, v27

    move/from16 v2, v28

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 381
    fill-array-data v1, :array_0

    move-object/from16 v6, v26

    invoke-virtual {v3, v4, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v1, v0, [F

    neg-int v7, v2

    int-to-float v7, v7

    const/4 v8, 0x0

    aput v7, v1, v8

    aput v17, v1, v16

    .line 382
    invoke-virtual {v3, v4, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 401
    invoke-virtual {v4}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v1

    new-array v7, v0, [F

    fill-array-data v7, :array_1

    invoke-virtual {v3, v1, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 404
    :goto_3
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v11, 0x1

    move-object v11, v3

    move-object v4, v5

    move-object v3, v6

    move-object/from16 v8, v22

    move-object/from16 v6, v29

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x2

    move v5, v2

    move v2, v0

    goto/16 :goto_1

    :cond_7
    move-object v5, v4

    move-object/from16 v29, v6

    move-object v6, v3

    move-object v3, v11

    .line 409
    iget-boolean v0, v9, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_b

    .line 411
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->getBrightnessView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    new-array v4, v2, [F

    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    const/4 v8, 0x0

    aput v7, v4, v8

    aput v17, v4, v16

    .line 413
    invoke-virtual {v3, v0, v5, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 415
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    .line 416
    invoke-virtual {v4, v0, v6, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    new-array v5, v2, [F

    fill-array-data v5, :array_3

    const-string/jumbo v2, "sliderScaleY"

    .line 417
    invoke-virtual {v4, v0, v2, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    sget-object v4, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 418
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    const v4, 0x3e99999a    # 0.3f

    .line 419
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 421
    iget-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 423
    iput-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 426
    :goto_4
    invoke-virtual {v3, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 429
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    move-object/from16 v4, v29

    .line 430
    invoke-virtual {v0, v4, v6, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 434
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v3, 0x3f5c28f6    # 0.86f

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 435
    iget-object v3, v9, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v3

    new-array v5, v2, [F

    fill-array-data v5, :array_5

    invoke-virtual {v0, v3, v6, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 436
    iget-object v3, v9, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanelControllerBase;->shouldUseHorizontalLayout()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v9, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object v3, v3, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v3, :cond_9

    new-array v5, v2, [F

    .line 438
    fill-array-data v5, :array_6

    invoke-virtual {v0, v3, v6, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto :goto_5

    .line 441
    :cond_9
    iget-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object v2, v2, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 443
    :goto_5
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 444
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 446
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 447
    invoke-virtual {v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 448
    invoke-virtual {v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 449
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_a

    .line 450
    iget-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 451
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 450
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 453
    :cond_a
    iget-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_c

    .line 454
    iget-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 455
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 454
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    :cond_b
    move-object/from16 v4, v29

    .line 458
    :cond_c
    :goto_6
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x2

    new-array v5, v3, [F

    fill-array-data v5, :array_7

    .line 459
    invoke-virtual {v0, v2, v6, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v2, v9, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 460
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 463
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v1, 0x3e0f5c29    # 0.14f

    .line 464
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_8

    .line 465
    invoke-virtual {v0, v4, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateQQSVisibility()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 200
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 199
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 550
    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 1

    .line 542
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    .line 556
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    .line 557
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 560
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 594
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 234
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "sysui_qs_fancy_anim"

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 218
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez p1, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sysui_qs_move_whole_rows"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    .line 225
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 205
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v0, "sysui_qs_fancy_anim"

    const-string/jumbo v1, "sysui_qs_move_whole_rows"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public requestAnimatorUpdate()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    return-void
.end method

.method public setPosition(F)V
    .locals 2

    .line 504
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    if-eqz v0, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_1

    return-void

    .line 508
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 509
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move p1, v1

    .line 515
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 516
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_5

    .line 517
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_4

    .line 523
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setPosition(F)V

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_6

    .line 526
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setPosition(F)V

    goto :goto_1

    .line 529
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 532
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_7

    .line 533
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 534
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_7

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_7
    return-void
.end method
