.class public Lcom/android/systemui/statusbar/KshView;
.super Ljava/lang/Object;
.source "KshView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mForceScroll:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mHardKeyScrolled:Z

.field private final mHorizontalScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKeyboardShortcutsDialog:Landroid/app/Dialog;

.field private mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

.field private mLastPosition:I

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mMaxColumn:I

.field private mMoveSelectorX:F

.field private mNeedForceScroll:Z

.field private mPosition:I

.field private mPresenter:Lcom/android/systemui/statusbar/KshPresenter;

.field private mResources:Landroid/content/res/Resources;

.field private mRightScrolled:Z

.field private mSelectorMoveRange:F

.field private mSelectorView:Landroid/view/View;

.field private mTabKeyIn:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public static synthetic $r8$lambda$4b-OihVTULi3uE091sUfJhpZkxk(Lcom/android/systemui/statusbar/KshView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KshView;->lambda$populateKshRecyclerView$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EZMwHubiYwm4pB6ukcA1elb3HVg(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KshView;->lambda$updateKshDialog$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q5-4TAqbulhExVqnjTU40pOtZIk(Lcom/android/systemui/statusbar/KshView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KshView;->lambda$populateKshRecyclerView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SHBSv_BOvvtVlf0IbkywXcRfWkU(Lcom/android/systemui/statusbar/KshView;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KshView;->lambda$showKshDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bxO6SYVwkRaSWgmddkWP6y0faOU(Lcom/android/systemui/statusbar/KshView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KshView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mForceScroll:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/KshView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshView$1;-><init>(Lcom/android/systemui/statusbar/KshView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mHorizontalScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/systemui/statusbar/KshView;->mPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    const-string p2, "layout_inflater"

    .line 136
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mInflater:Landroid/view/LayoutInflater;

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    .line 138
    sget p2, Lcom/android/systemui/R$dimen;->ksh_selector_move_range:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/KshView;->mSelectorMoveRange:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KshView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/KshView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KshView;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KshView;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KshView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/KshView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KshView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KshView;->mNeedForceScroll:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/KshView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KshView;->mNeedForceScroll:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KshView;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mForceScroll:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KshView;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KshView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KshView;->mTabKeyIn:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KshView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/KshView;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/KshView;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/KshView;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    return p0
.end method

.method private isRTL()Z
    .locals 1

    .line 309
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    .line 64
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v2

    .line 65
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    return-void

    :cond_1
    if-nez v4, :cond_3

    if-nez v2, :cond_3

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    :cond_2
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    return-void

    .line 74
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 75
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 76
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    if-ne v2, v1, :cond_6

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    goto :goto_2

    .line 79
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    if-eqz v2, :cond_7

    move v3, v1

    :cond_7
    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 81
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    if-gez v0, :cond_8

    iput v5, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 82
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_9

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 85
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 86
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    return-void
.end method

.method private synthetic lambda$populateKshRecyclerView$2(I)V
    .locals 1

    .line 238
    iput p1, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 240
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    return-void
.end method

.method private synthetic lambda$populateKshRecyclerView$3(Landroid/view/View;)V
    .locals 2

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 236
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    if-eq p1, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KshView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showKshDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    const/16 p3, 0x15

    if-eq p2, p3, :cond_0

    const/16 p3, 0x16

    if-ne p2, p3, :cond_1

    .line 173
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    :cond_1
    const/16 p3, 0x3d

    if-ne p2, p3, :cond_2

    .line 176
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KshView;->mTabKeyIn:Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateKshDialog$4(Ljava/util/List;)V
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KshView;->showKshDialog(Ljava/util/List;)V

    return-void
.end method

.method private moveSelector(I)V
    .locals 5

    .line 265
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr v0, p1

    .line 268
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 269
    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    if-ge v0, v1, :cond_1

    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    .line 273
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    if-ne v1, v3, :cond_3

    return-void

    :cond_3
    sub-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v4, 0x0

    if-le v1, v3, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v4

    .line 276
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 278
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    if-eqz v1, :cond_6

    .line 279
    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    iget v3, p0, Lcom/android/systemui/statusbar/KshView;->mSelectorMoveRange:F

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    goto :goto_2

    .line 281
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    iget v3, p0, Lcom/android/systemui/statusbar/KshView;->mSelectorMoveRange:F

    int-to-float v0, v0

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    .line 284
    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mSelectorView:Landroid/view/View;

    new-array v0, v2, [F

    iget p0, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    aput p0, v0, v4

    const-string/jumbo p0, "translationX"

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    .line 287
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 288
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private populateKshRecyclerView(Landroid/view/View;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 188
    iget-object v3, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x44160000    # 600.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 190
    iget-object v4, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$dimen;->ksh_dialog_width_ratio:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    int-to-float v1, v1

    .line 191
    invoke-virtual {v0, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KshView;->mViewWidth:I

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->ksh_dialog_height_ratio:I

    invoke-virtual {v1, v4, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    int-to-float v1, v2

    .line 194
    invoke-virtual {v0, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    const/4 v1, -0x1

    if-lt v0, v2, :cond_0

    .line 196
    iput v1, p0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    if-le v0, v3, :cond_1

    .line 199
    iput v3, p0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    .line 201
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->ksh_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 202
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/KshView;->mViewWidth:I

    iget v4, p0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$integer;->ksh_max_column:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 205
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 206
    iget v3, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    if-ge v2, v3, :cond_2

    .line 207
    iput v2, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 211
    :cond_2
    sget v3, Lcom/android/systemui/R$id;->ksh_group_recycler_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 213
    iget-object v4, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 215
    new-instance v3, Lcom/android/systemui/statusbar/KshViewAdapter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/KshViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 216
    iget v4, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/KshViewAdapter;->setMaxColumn(I)V

    .line 217
    iget-object v3, p0, Lcom/android/systemui/statusbar/KshView;->mPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    invoke-virtual {v3, v4, p2}, Lcom/android/systemui/statusbar/KshPresenter;->getData(Lcom/android/systemui/statusbar/KshViewAdapter;Ljava/util/List;)V

    .line 218
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    .line 220
    iput p2, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    .line 221
    iput v5, p0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    .line 222
    iput v5, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 223
    sget p2, Lcom/android/systemui/R$id;->indicator_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 224
    iget v3, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    if-le v2, v3, :cond_4

    .line 226
    sget p2, Lcom/android/systemui/R$id;->label_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_3

    .line 230
    iget-object v4, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/KshViewAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    iget-object v6, p0, Lcom/android/systemui/statusbar/KshView;->mInflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/android/systemui/R$layout;->samsung_ksh_indicator_label_view:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 232
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 234
    new-instance v4, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshView;)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {p2, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    :cond_3
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    sget p2, Lcom/android/systemui/R$id;->label_selector:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mSelectorView:Landroid/view/View;

    .line 250
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->ksh_selector_width:I

    .line 251
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {p2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mSelectorView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$dimen;->ksh_padding_bottom_with_indicator:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, v5, v5, v5, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 256
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mHorizontalScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_1

    :cond_4
    const/16 p1, 0x8

    .line 258
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 259
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$dimen;->ksh_padding_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, v5, v5, v5, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 260
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mHorizontalScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dismissKshDialog()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 300
    iput-object v1, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showKshDialog(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->samsung_keyboard_shortcuts_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/KshView;->populateKshRecyclerView(Landroid/view/View;Ljava/util/List;)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 157
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d8

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 163
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$drawable;->ksh_dialog_background_material:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "KeyboardShortcutsDialog"

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mViewWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 168
    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 171
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KshView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public updateKshDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->dismissKshDialog()V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
