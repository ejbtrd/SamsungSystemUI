.class public Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;
.super Ljava/lang/Object;
.source "MiniSViewCoverContentView.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;,
        Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;,
        Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$RootView;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

.field private mAnimator:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;

.field private mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mContext:Landroid/content/Context;

.field private final mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field private final mDialog:Landroid/app/Dialog;

.field private mForceDismiss:Z

.field private final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field private mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private mMiniSViewCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

.field private final mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field private final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field private final mResources:Landroid/content/res/Resources;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field private mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

.field private final mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field private mVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$BPHTTcrz4E_HEAqp4wl9pYC2kcM(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->lambda$setInterceptor$0(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Landroid/app/Dialog;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mMiniSViewCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 67
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 68
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 69
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 70
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 71
    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 72
    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 73
    iput-object p9, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mDialog:Landroid/app/Dialog;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResources:Landroid/content/res/Resources;

    .line 75
    sget-object p1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Landroid/app/Dialog;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mForceDismiss:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mForceDismiss:Z

    return p1
.end method

.method private getScreenDensityRateBaseOnDefaultDpi()F
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 113
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 114
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x44b40000    # 1440.0f

    div-float/2addr v1, p0

    mul-float/2addr v1, v0

    const/high16 p0, 0x44200000    # 640.0f

    div-float/2addr p0, v1

    return p0
.end method

.method private synthetic lambda$setInterceptor$0(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->showSideCoverToast(Ljava/lang/String;)V

    return-void
.end method

.method private showSideCoverToast(Ljava/lang/String;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mMiniSViewCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;->setToastMessage(Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->COVER_TOAST:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 152
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    if-eqz p0, :cond_0

    .line 153
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

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public hideConfirm()V
    .locals 1

    .line 165
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public hideDialogOnSecureConfirm()V
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public initAnimations()V
    .locals 7

    .line 127
    new-instance v6, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mMiniSViewCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;

    invoke-virtual {v6, v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->setCallback(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$ViewUpdateCallback;)V

    .line 129
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimator:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    return-void
.end method

.method public initDimens()V
    .locals 0

    return-void
.end method

.method public initLayouts()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/basic/util/CoverUtilWrapper;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$RootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$RootView;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mRootView:Landroid/widget/FrameLayout;

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->getScreenDensityRateBaseOnDefaultDpi()F

    .line 89
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 97
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    .line 101
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setGravity(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mDialog:Landroid/app/Dialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setAnimationState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method public setInterceptor()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/ToastController;->setInterceptor(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public show()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 160
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public updateItemLists(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 3

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->getValidActions()Ljava/util/List;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 136
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power"

    if-eq v1, v2, :cond_1

    .line 137
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "restart"

    if-ne v1, v2, :cond_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->addViewModel(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->saveViewModelList()V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
