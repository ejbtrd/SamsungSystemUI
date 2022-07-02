.class public Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;
.super Ljava/lang/Object;
.source "SideCoverContentView.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;,
        Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;,
        Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;
    }
.end annotation


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mContext:Landroid/content/Context;

.field private final mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field private final mDialog:Landroid/app/Dialog;

.field private mForceDismiss:Z

.field private mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

.field private final mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field private mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field private final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field protected final mResources:Landroid/content/res/Resources;

.field private mRootView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;

.field private mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field private mSideCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

.field private final mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field private mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

.field private mViewAnimator:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

.field private mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

.field private mVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$S0Rtq-4NztF180WDmuzpRtogaEw(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->lambda$setInterceptor$0(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Landroid/app/Dialog;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSideCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 77
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 78
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 79
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 80
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 81
    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 82
    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 83
    iput-object p9, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mDialog:Landroid/app/Dialog;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResources:Landroid/content/res/Resources;

    .line 85
    sget-object p1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Landroid/app/Dialog;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mForceDismiss:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mForceDismiss:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/samsung/android/globalactions/util/LogWrapper;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    return-object p0
.end method

.method private getDensityFromResolution(Landroid/util/DisplayMetrics;)I
    .locals 0

    .line 129
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 p1, 0x2d0

    if-ne p0, p1, :cond_0

    const/16 p0, 0x140

    return p0

    :cond_0
    const/16 p1, 0x438

    if-ne p0, p1, :cond_1

    const/16 p0, 0x1e0

    return p0

    :cond_1
    const/16 p0, 0x280

    return p0
.end method

.method private getListViewWidth()I
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDE_COVER_WIDTH:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 137
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->getDensityFromResolution(Landroid/util/DisplayMetrics;)I

    move-result p0

    .line 140
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ge v0, p0, :cond_0

    int-to-float p0, v1

    const v0, 0x3f924dd3    # 1.143f

    :goto_0
    mul-float/2addr p0, v0

    float-to-int v1, p0

    goto :goto_1

    :cond_0
    if-le v0, p0, :cond_1

    int-to-float p0, v1

    const v0, 0x3f639581    # 0.889f

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private synthetic lambda$setInterceptor$0(Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->showSideCoverToast(Ljava/lang/String;)V

    return-void
.end method

.method private showSideCoverToast(Ljava/lang/String;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSideCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;->setToastMessage(Ljava/lang/String;)V

    .line 237
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 178
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    if-eqz p0, :cond_0

    .line 179
    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    :cond_0
    return-void
.end method

.method public forceRequestLayout()V
    .locals 0

    return-void
.end method

.method public getAnimationState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public hideConfirm()V
    .locals 1

    .line 191
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public hideDialogOnSecureConfirm()V
    .locals 1

    .line 196
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public initAnimations()V
    .locals 8

    .line 150
    new-instance v7, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimator:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSideCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;

    invoke-virtual {v7, v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->setCallback(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$ViewUpdateCallback;)V

    .line 152
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimator:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    return-void
.end method

.method public initDimens()V
    .locals 0

    return-void
.end method

.method public initLayouts()V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/basic/util/CoverUtilWrapper;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;

    .line 99
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 103
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v5, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    .line 110
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->getListViewWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 114
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 116
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setY(F)V

    const/4 v2, 0x0

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 118
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotY(F)V

    const/high16 v2, 0x42b40000    # 90.0f

    .line 119
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mDialog:Landroid/app/Dialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAnimationState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method public setInterceptor()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/ToastController;->setInterceptor(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public show()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 186
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public updateItemLists(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 4

    .line 157
    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->getValidActions()Ljava/util/List;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_text_direction"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 161
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 162
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power"

    if-eq v1, v2, :cond_2

    .line 163
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "restart"

    if-ne v1, v2, :cond_1

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->addViewModel(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->saveViewModelList()V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
