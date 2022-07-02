.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;
.super Ljava/lang/Object;
.source "FreeformContainerViewController.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

.field private final mContext:Landroid/content/Context;

.field private mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

.field private final mDisplayFrame:Landroid/graphics/Rect;

.field private mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

.field private final mFullscreenModeRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

.field private mHideCallback:Ljava/lang/Runnable;

.field private final mHideContainerViewRunnable:Ljava/lang/Runnable;

.field private mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mNonDecorDisplayFrame:Landroid/graphics/Rect;

.field private mState:I

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpPointF:Landroid/graphics/PointF;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$I-bhV62zUsNVZJgUK26d0mTUrOM(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$RJQmXEiBIV545lvqyNCCRKA1MgA(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->lambda$init$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$qNgK0e3KWRKwN4Mq8ULbiVZxft4(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->lambda$hideDismissButtonAndDismissIcon$2(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 77
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mTmpPointF:Landroid/graphics/PointF;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mState:I

    .line 104
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "layout_inflater"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 4

    .line 133
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, p2

    iget v2, p0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    sub-int/2addr v0, p2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 135
    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int v0, p2, p3

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1

    add-int/2addr p2, p3

    sub-int v0, p2, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 138
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Landroid/graphics/Rect;->top:I

    if-le p2, p3, :cond_2

    sub-int v3, p2, p3

    goto :goto_1

    .line 140
    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_3

    sub-int v3, p1, p2

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    .line 145
    :cond_4
    invoke-virtual {p0, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_5
    return-void
.end method

.method private static containerStateToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "STATE_FOLDER"

    return-object p0

    :cond_1
    const-string p0, "STATE_POINTER"

    return-object p0
.end method

.method private createOrUpdateDismissButton()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    .line 353
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->createOrUpdateDismissButton()V

    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 466
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0xa2c

    const v4, 0x1800328

    const/4 v5, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v0, "FreeformContainer"

    .line 477
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 478
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 479
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v0, 0x1

    .line 480
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v0, 0x11

    .line 482
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object p0
.end method

.method private synthetic lambda$hideDismissButtonAndDismissIcon$2(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 370
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->throwAwayItemFromFolder(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->throwAwayFromPointer()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$init$1()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->cleanUpDismissTarget()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private notifyViewDestroyed()V
    .locals 3

    .line 540
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;

    .line 541
    sget-boolean v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewController] onViewDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreeformContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;->onViewDestroyed()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeTaskIfNeeded(I)Z
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isEnterDismissButton()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 339
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/16 v1, 0x10

    invoke-interface {p0, p1, v1}, Landroid/app/IActivityTaskManager;->semRemoveTask(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] Failed to removeTask: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FreeformContainer"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method private setFocusable(Z)V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    and-int/lit8 v2, v1, -0x9

    .line 455
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    or-int/lit8 v2, v1, 0x8

    .line 457
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 459
    :goto_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_1

    .line 460
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ViewController] setFocusable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method closeFullscreenMode(Ljava/lang/String;)Z
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    const/4 v1, 0x0

    const-string v2, "FreeformContainer"

    if-nez v0, :cond_1

    .line 420
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "[ViewController] close failed: mContainerView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 425
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ViewController] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist, close failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 430
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ViewController] close FullscreenMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    const-string p1, "[ViewController] FullscreenMode Disabled"

    .line 433
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->requestTransparentRegion(Landroid/view/View;)V

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method destroy()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    if-eqz v0, :cond_1

    .line 181
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[ViewController] destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->notifyViewDestroyed()V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 190
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getDisplayFrame()Landroid/graphics/Rect;
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method getIconViewListCount()I
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getIconViewListCount()I

    move-result p0

    return p0
.end method

.method getItemByPosition(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->getItemByPosition(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object p0

    return-object p0
.end method

.method public getNonDecorDisplayFrame()Landroid/graphics/Rect;
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method handleOutsideTouchFolderView(Landroid/view/MotionEvent;)V
    .locals 4

    .line 249
    iget v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 254
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->getBounds(Landroid/graphics/Rect;)V

    .line 255
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] onTouchEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), close folder"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FreeformContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 260
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZ)V

    :cond_1
    return-void
.end method

.method hideDismissButtonAndDismissIcon(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "FreeformContainer"

    const-string v1, "[ViewController] hideDismissButtonAndDismissIcon"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mHideCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->hide(Ljava/lang/Runnable;)V

    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isEnterDismissButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    .line 375
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    invoke-virtual {p0, p2, p3, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->dismissIcon(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method hideDismissButtonAndRemoveFreeform(ILandroid/os/IRemoteCallback;)V
    .locals 3

    const-string v0, "FreeformContainer"

    const-string v1, "[ViewController] hideDismissButtonAndRemoveFreeform"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    if-nez v1, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mHideCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->hide(Ljava/lang/Runnable;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->removeTaskIfNeeded(I)Z

    move-result p0

    if-eqz p2, :cond_1

    .line 313
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bundle_task_removed"

    .line 315
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    :try_start_0
    invoke-interface {p2, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] Failed to send result: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 326
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getFreeformHeaderType()I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Bottom option_Handle type"

    goto :goto_1

    :cond_2
    const-string p0, "Bottom option_Header type"

    :goto_1
    const-string p1, "2003"

    .line 330
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method hideWindow()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    if-eqz v0, :cond_3

    .line 280
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[ViewController] Hide Window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZ)V

    .line 282
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updatePointerViewVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->setDismissButtonShowing(Z)V

    const-string v0, "fullscreen_mode_request_remove_target"

    .line 287
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->clear()V

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method init(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V
    .locals 2

    .line 150
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[ViewController] init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    .line 153
    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mItemController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mState:I

    .line 155
    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 158
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateDisplayFrame(Z)V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/android/systemui/R$layout;->freeform_container_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    .line 162
    sget p2, Lcom/android/systemui/R$id;->freeform_container_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    .line 164
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->init(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->init(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    const/16 p2, 0x200

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mHideCallback:Ljava/lang/Runnable;

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->createOrUpdateDismissButton()V

    return-void
.end method

.method isDismissButtonShowing()Z
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->isDismissButtonShowing()Z

    move-result p0

    return p0
.end method

.method isEnterDismissButton()Z
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->isEnterDismissButton()Z

    move-result p0

    return p0
.end method

.method isFolderCollapseAnimating()Z
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->isCollapseAnimating()Z

    move-result p0

    return p0
.end method

.method isFullscreenMode()Z
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isPointerViewState()Z
    .locals 1

    .line 298
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyIconPositionChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    if-nez p0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->updateDismissButtonView(Landroid/graphics/Rect;)V

    return-void
.end method

.method notifyItemAdded(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 3

    .line 526
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;

    .line 527
    sget-boolean v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewController] onItemAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreeformContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;->onItemAdded(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyItemRemoved(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 3

    .line 533
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;

    .line 534
    sget-boolean v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewController] onItemRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreeformContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;->onItemRemoved(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyRotationChanged(II)V
    .locals 4

    .line 547
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->createOrUpdateDismissButton()V

    .line 548
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;

    .line 549
    sget-boolean v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ViewController] onRotationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FreeformContainer"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;->onRotationChanged(IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method onKeyDown(I)V
    .locals 2

    .line 444
    iget v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 446
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] onKeyDown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), close folder"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FreeformContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 447
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZ)V

    :cond_1
    return-void
.end method

.method openFullscreenMode(Ljava/lang/String;)Z
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    const/4 v1, 0x0

    const-string v2, "FreeformContainer"

    if-nez v0, :cond_1

    .line 398
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "[ViewController] open failed: mContainerView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ViewController] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already opened"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ViewController] open FullscreenMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_5

    const-string p1, "[ViewController] FullscreenMode Enabled"

    .line 411
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->requestTransparentRegion(Landroid/view/View;)V

    :cond_6
    return v1
.end method

.method registerCallback(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerCallback;)V
    .locals 2

    .line 555
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] registerCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method requestLayout()V
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method showDismissButton(Landroid/graphics/Rect;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->createOrUpdateDismissButton()V

    .line 358
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDismissButtonView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerDismissButtonView;->show(Landroid/graphics/Rect;)V

    return-void
.end method

.method showWindow()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    if-eqz v0, :cond_2

    .line 268
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[ViewController] Show Window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getBackgroundDimView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, v0, v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZZ)V

    :cond_2
    return-void
.end method

.method updateContainerState(IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->updateContainerState(IZZ)V

    return-void
.end method

.method updateContainerState(IZZ)V
    .locals 3

    .line 198
    iget v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mState:I

    if-eq v0, p1, :cond_5

    .line 199
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] updateContainerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->containerStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    .line 200
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->setPointerViewAccessibility(Z)V

    .line 224
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->hideTailIconViews()V

    .line 226
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    iget-object p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    .line 227
    invoke-virtual {p3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->getFolderWidth()I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->getFolderHeight()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mTmpPointF:Landroid/graphics/PointF;

    .line 226
    invoke-virtual {p1, p3, v0, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->getFolderPosition(IILandroid/graphics/PointF;)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    iget-object p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mTmpPointF:Landroid/graphics/PointF;

    invoke-virtual {p1, p3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->setFolderPosition(Landroid/graphics/PointF;)V

    .line 229
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    iget-object p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->getBounds(Landroid/graphics/Rect;)V

    .line 230
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    iget-object p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->hidePointerView(Landroid/graphics/Rect;)V

    .line 232
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateIconViewListPosition()V

    .line 234
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->animateBackgroundDim(Z)V

    .line 235
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->setFocusable(Z)V

    .line 237
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->expand(Z)V

    .line 238
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    const/16 p2, 0x40

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->setPointerViewAccessibility(Z)V

    .line 207
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updatePointerViewVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mFolderView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerFolderView;->collapse(Z)V

    if-eqz p3, :cond_3

    .line 212
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->animateBackgroundDim(Z)V

    .line 214
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->setFocusable(Z)V

    if-eqz p2, :cond_4

    .line 216
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->animateToShowPointerGroupView()V

    .line 244
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->updateTouchableRegion()V

    :cond_5
    return-void
.end method

.method updateDisplayFrame(Z)V
    .locals 5

    .line 495
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 497
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 498
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 499
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 500
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 502
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 503
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    .line 504
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 507
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 508
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 509
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->mContainerView:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerView;->setScaledPointerPosition(FF)V

    :cond_0
    return-void
.end method
