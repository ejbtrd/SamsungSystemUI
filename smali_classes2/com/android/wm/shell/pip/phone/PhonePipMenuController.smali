.class public Lcom/android/wm/shell/pip/phone/PhonePipMenuController;
.super Ljava/lang/Object;
.source "PhonePipMenuController.java"

# interfaces
.implements Lcom/android/wm/shell/pip/PipMenuController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;
    }
.end annotation


# instance fields
.field private mAppActions:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final mContext:Landroid/content/Context;

.field private mIsPendingDetach:Z

.field private mIsPipMenuFocused:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaActionListener:Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

.field private mMediaActions:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

.field private mMenuState:I

.field private final mMoveTransform:Landroid/graphics/Matrix;

.field private final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field private mPipMenuInputToken:Landroid/os/IBinder;

.field private mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

.field private final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field private final mTmpDestinationRectF:Landroid/graphics/RectF;

.field private final mTmpSourceBounds:Landroid/graphics/Rect;

.field private final mTmpSourceRectF:Landroid/graphics/RectF;

.field private final mTmpValues:[F

.field private final mUpdateEmbeddedMatrix:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$12-1y6UcwBGCP63YuT7GDMJMd7w(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->lambda$detach$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$CO4ys8gM3FWt8LzlxPJkWnyTzW0(IZLjava/lang/Runnable;Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->lambda$onMenuStateChangeStart$2(IZLjava/lang/Runnable;Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XGdBoullTt_lgK6PHbjeJHNAC_8(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    return-void
.end method

.method public static synthetic $r8$lambda$lOZ8EQayVXMzR-GXJBZDpDLqUsc(ILcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->lambda$onMenuStateChangeFinish$3(ILcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ozRWf-2RVFl99WAmnzdEevWggdQ(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceBounds:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceRectF:Landroid/graphics/RectF;

    .line 111
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpDestinationRectF:Landroid/graphics/RectF;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPipMenuFocused:Z

    .line 132
    new-instance v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 140
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpValues:[F

    .line 141
    new-instance v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    .line 156
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 158
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 159
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 160
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 161
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuActions()V

    return-void
.end method

.method private attachPipMenuView()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->detachPipMenuView()V

    .line 208
    :cond_0
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/wm/shell/pip/phone/PipMenuView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 209
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    const-string v2, "PipMenuView"

    const/4 v3, 0x0

    .line 210
    invoke-interface {p0, v2, v3, v3}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v2, 0x1

    .line 209
    invoke-virtual {v1, v0, p0, v3, v2}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method private clearWindowFocus()V
    .locals 4

    .line 626
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPipMenuFocused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PhonePipMenuController"

    const-string v1, "clearWindowFocus()"

    .line 630
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 631
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPipMenuFocused:Z

    .line 634
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v2

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuInputToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, p0, v1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Unable to update focus"

    .line 637
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private detachPipMenuView()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 219
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 220
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SystemWindows;->removeView(Landroid/view/View;)V

    .line 221
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 222
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuInputToken:Landroid/os/IBinder;

    return-void
.end method

.method private fadeOutMenu()V
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->fadeOutMenu()V

    :cond_0
    return-void
.end method

.method private hideIme()Z
    .locals 2

    .line 652
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_1

    .line 653
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    move-result p0

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hide the Ime, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhonePipMenuController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidActions(Landroid/content/pm/ParceledListSlice;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 533
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$detach$1()V
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->detachPipMenuView()V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPendingDetach:Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpValues:[F

    .line 148
    invoke-interface {v0, p0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->setScreenMatrix([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onMenuStateChangeFinish$3(ILcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V
    .locals 0

    .line 575
    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;->onPipMenuStateChangeFinish(I)V

    return-void
.end method

.method private static synthetic lambda$onMenuStateChangeStart$2(IZLjava/lang/Runnable;Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V
    .locals 0

    .line 547
    invoke-interface {p3, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;->onPipMenuStateChangeStart(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private maybeCreateSyncApplier()Z
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_1

    .line 416
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-direct {v0, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 417
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuInputToken:Landroid/os/IBinder;

    .line 420
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p0, "PhonePipMenuController"

    const-string v0, "Not going to move PiP, either menu or its parent is not created."

    .line 411
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private resolveMenuActions()Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    invoke-static {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isValidActions(Landroid/content/pm/ParceledListSlice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    return-object p0

    .line 514
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p0
.end method

.method private showMenuInternal(ILandroid/graphics/Rect;ZZZZ)V
    .locals 8

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showMenu() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isMenuVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allowMenuTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " willResizeMenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " withDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " showResizeHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " stackBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callers=\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    const-string v2, "    "

    .line 306
    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhonePipMenuController"

    .line 297
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->maybeCreateSyncApplier()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-boolean v0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mIsExpanding:Z

    if-eqz v0, :cond_1

    const-string/jumbo p0, "skip showMenu cause now pip is expanding"

    .line 315
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0, v0, p2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 322
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    .line 325
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getMotionBoundsState()Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->isInMotion()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/pip/phone/PipMenuView;->showMenu(ILandroid/graphics/Rect;ZZZZ)V

    :goto_0
    return-void
.end method

.method private updateMenuActions()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->setActions(Landroid/graphics/Rect;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public attach(Landroid/view/SurfaceControl;)V
    .locals 3

    .line 174
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPendingDetach:Z

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    const/4 v1, 0x1

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->getFadeOutDuration(I)J

    move-result-wide v1

    .line 175
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    :goto_0
    return-void
.end method

.method public detach()V
    .locals 5

    .line 188
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 190
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->clearWindowFocus()V

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPendingDetach:Z

    .line 193
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->getFadeOutDuration(I)J

    move-result-wide v3

    .line 193
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->detachPipMenuView()V

    :goto_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PhonePipMenuController"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMenuState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPipMenuView="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mListeners="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getEstimatedMinMenuSize()Landroid/util/Size;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->getEstimatedMinMenuSize()Landroid/util/Size;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method handlePointerEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 605
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return-void
.end method

.method public hideMenu()V
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu()V

    :cond_0
    return-void
.end method

.method public hideMenu(IZ)V
    .locals 4

    .line 463
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideMenu() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isMenuVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " animationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callers=\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    const-string v3, "    "

    .line 469
    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhonePipMenuController"

    .line 465
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 472
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(ZI)V

    :cond_0
    return-void
.end method

.method public hideMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 484
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 486
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public isMenuVisible()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 4

    .line 341
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->maybeCreateSyncApplier()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 353
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 358
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 359
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 360
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpSourceRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mTmpDestinationRectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p3, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 361
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p3

    .line 362
    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMoveTransform:Landroid/graphics/Matrix;

    .line 363
    invoke-virtual {v1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p3

    .line 364
    invoke-virtual {p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p3

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 366
    new-instance v2, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v2, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 367
    invoke-virtual {v2, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    .line 369
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object p3, v2, v0

    aput-object p1, v2, v1

    invoke-virtual {p2, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_1

    .line 371
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p2, v1, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 374
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 375
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mUpdateEmbeddedMatrix:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method onMenuStateChangeFinish(I)V
    .locals 2

    .line 574
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    if-eq p1, v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 577
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideIme()Z

    .line 588
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(IILandroid/view/View;)V

    goto :goto_0

    .line 580
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(IILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method onMenuStateChangeStart(IZLjava/lang/Runnable;)V
    .locals 4

    .line 546
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    if-eq p1, v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda4;-><init>(IZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 551
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/pip/PipMediaController;->addActionListener(Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V

    goto :goto_0

    .line 555
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/pip/PipMediaController;->removeActionListener(Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V

    :goto_0
    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 559
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuInputToken:Landroid/os/IBinder;

    if-eqz p1, :cond_1

    move v3, p2

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "PhonePipMenuController"

    const-string v2, "Unable to update focus as menu appears/disappears"

    .line 562
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    move p2, p3

    .line 567
    :goto_3
    iput-boolean p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPipMenuFocused:Z

    :cond_3
    return-void
.end method

.method onPipDismiss()V
    .locals 1

    .line 504
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method onPipExpand()V
    .locals 1

    .line 500
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda6;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public pokeMenu()V
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->pokeMenu()V

    :cond_0
    return-void
.end method

.method public setAppActions(Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 495
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    .line 496
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuActions()V

    return-void
.end method

.method public showMenu()V
    .locals 1

    .line 267
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda7;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public showMenu(ILandroid/graphics/Rect;ZZZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 290
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuInternal(ILandroid/graphics/Rect;ZZZZ)V

    return-void
.end method

.method public showMenuWithPossibleDelay(ILandroid/graphics/Rect;ZZZ)V
    .locals 7

    if-eqz p4, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->fadeOutMenu()V

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    .line 281
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenuInternal(ILandroid/graphics/Rect;ZZZZ)V

    return-void
.end method

.method public updateMenuBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-string v4, "PipMenuView"

    .line 232
    invoke-interface {p0, v4, v2, v3}, Lcom/android/wm/shell/pip/PipMenuController;->getPipMenuLayoutParams(Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuLayout(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateMenuLayout(Landroid/graphics/Rect;)V
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateMenuLayout(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
