.class public Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;
.super Ljava/lang/Object;
.source "LegacySplitScreenController.java"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/legacysplitscreen/DividerPanel$DividerPanelCallbacks;
.implements Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;,
        Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitAdjacentEventListener;,
        Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final APPLY_CORNER_RADIUS_DELAY_MS:I

.field private final UPDATE_KEYGUARD_STATE_DELAY_MS:I

.field private volatile mAdjustedForIme:Z

.field private mAppPairShortcutController:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

.field private final mApplyCornerRadius:Ljava/lang/Runnable;

.field private final mBoundsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCellDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

.field private final mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

.field mDividerPanelAutoOpen:Ljava/lang/Runnable;

.field private mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

.field private mDividerSmartTipController:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;

.field private final mDividerState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

.field private mDividerViewForRemoteConfigChanges:Lcom/android/wm/shell/legacysplitscreen/DividerView;

.field private final mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mFocusedWindowingMode:I

.field private final mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

.field private mHomeStackResizable:Z

.field private final mImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

.field private final mImpl:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;

.field private mIsAdjacentLaunched:Z

.field private mIsFirstAutoOpenDividerPanel:Z

.field private mIsFlexPanelMode:Z

.field private mIsKeyguardShowing:Z

.field private mIsPendingFirstAutoOpenDividerPanel:Z

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private volatile mMinimized:Z

.field private mMultiSplitController:Lcom/android/wm/shell/legacysplitscreen/MultiSplitController;

.field private mMultiWindowEnableChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mMultistarListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPref:Landroid/content/SharedPreferences;

.field private mReadyToStartRemoteConfigChanges:Z

.field private final mRemoteConfigChangesTimeout:Ljava/lang/Runnable;

.field private final mResetCornerRadiusAndSplitBackground:Ljava/lang/Runnable;

.field private mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private mSavedSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field private final mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

.field private mShowingFirstAutoOpenDividerPanel:Z

.field private mSingleThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

.field private mSplitInited:Z

.field private mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field private final mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field private final mTaskOrganizer:Landroid/window/TaskOrganizer;

.field private mTaskStackListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;

.field private final mTmpRect:Landroid/graphics/Rect;

.field final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$0ZQj3xjqR09AsOZ7myZAdPUr4d8(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;IIILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$new$3(IIILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1MFbBBPqrfFQzVN9q5B6RDZP344(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$new$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$4nxOLsONlD6z6vPAYRUotho7Cdo(ZLjava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$updateVisibility$6(ZLjava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$D_utp6tIVLlFZSZckSeHsG02pog(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$updateVisibility$5(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FxnCnAWOt2pbIuo0JeEduUvmjlk(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$MQ0IQLDbHDZhG9SLIkweaNOBTIg(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$N9KVAsYB6hSZS4ZbZbwSfHs8iYs(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$showDividerIfPossible$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$_7IhhsSDYdMSvFKfQKD6ukZitHw(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$onMultiWindowCoreStateChanged$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$aq43cNpqpHbxP-Z1qcB4e8KQuqA(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$updateVisibility$4(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bfcz20tu2AbiaPLolVxLw-DMYYY(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$updateVisibility$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$fl64qrwUqkww8Kp7GthwlbsCS3I(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$notifyBoundsChanged$10(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gRokX64hPjDslKVYMddG-r_XpRM(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jua-NdQtS-BSfnQCl3r_nWPamgM(Ljava/lang/Integer;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->lambda$notifyMultistarListener$9(Ljava/lang/Integer;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 125
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/animation/AnimationHandler;)V
    .locals 13

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 268
    invoke-direct/range {v0 .. v12}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/animation/AnimationHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/animation/AnimationHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 12

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v7, p3

    move-object/from16 v4, p5

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v8, Lcom/android/wm/shell/legacysplitscreen/DividerState;

    invoke-direct {v8}, Lcom/android/wm/shell/legacysplitscreen/DividerState;-><init>()V

    iput-object v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    .line 144
    new-instance v8, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;)V

    iput-object v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImpl:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;

    .line 146
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 148
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    .line 152
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMultistarListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v8, 0x0

    .line 176
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    .line 177
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    .line 178
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    .line 179
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    .line 185
    iput-object v9, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerViewForRemoteConfigChanges:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 186
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mReadyToStartRemoteConfigChanges:Z

    .line 188
    new-instance v10, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda5;

    invoke-direct {v10, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRemoteConfigChangesTimeout:Ljava/lang/Runnable;

    .line 198
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsPendingFirstAutoOpenDividerPanel:Z

    .line 199
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mShowingFirstAutoOpenDividerPanel:Z

    .line 208
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsAdjacentLaunched:Z

    .line 220
    iput v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mCornerRadius:I

    const/16 v10, 0x12c

    .line 221
    iput v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->APPLY_CORNER_RADIUS_DELAY_MS:I

    .line 222
    new-instance v11, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda4;

    invoke-direct {v11, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    iput-object v11, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mApplyCornerRadius:Ljava/lang/Runnable;

    .line 223
    new-instance v11, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda9;

    invoke-direct {v11, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    iput-object v11, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mResetCornerRadiusAndSplitBackground:Ljava/lang/Runnable;

    .line 228
    iput v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->UPDATE_KEYGUARD_STATE_DELAY_MS:I

    .line 232
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTmpRect:Landroid/graphics/Rect;

    .line 242
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsFlexPanelMode:Z

    .line 250
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSingleThreadExecutor:Ljava/util/concurrent/Executor;

    .line 254
    iput v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mFocusedWindowingMode:I

    .line 258
    iput-boolean v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitInited:Z

    .line 497
    new-instance v10, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$2;

    invoke-direct {v10, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$2;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMultiWindowEnableChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1879
    new-instance v10, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerPanelAutoOpen:Ljava/lang/Runnable;

    .line 2159
    new-instance v10, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;

    invoke-direct {v10, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskStackListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;

    .line 281
    iput-object v2, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    .line 282
    iput-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 283
    iput-object v7, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    move-object/from16 v10, p4

    .line 284
    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 285
    iput-object v6, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v10, p11

    .line 286
    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

    .line 287
    new-instance v10, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    invoke-direct {v10, p1, p0, v6}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    .line 289
    iput-object v4, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 290
    new-instance v10, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-direct {v10, v5, v3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/window/TaskOrganizer;)V

    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    .line 291
    iput-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    .line 292
    new-instance v10, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    move-object/from16 v11, p9

    invoke-direct {v10, p0, v3, v11, v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object v10, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 294
    new-instance v5, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-direct {v5, v10, v4, v6, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/TaskOrganizer;)V

    iput-object v5, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    .line 296
    new-instance v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    iput-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 406
    new-instance v3, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-direct {v3, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;-><init>(Lcom/android/wm/shell/common/SystemWindows;)V

    iput-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    .line 412
    invoke-virtual {p2, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 415
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    move-object/from16 v3, p8

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    .line 455
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    const-string v1, "DividerPref"

    .line 458
    invoke-virtual {p1, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "divider_panel_first_auto_open"

    const/4 v5, 0x1

    .line 459
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsFirstAutoOpenDividerPanel:Z

    .line 462
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-direct {v1, p1, v6, v10}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    iput-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    .line 465
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

    invoke-direct {v1, p1, v10}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    iput-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAppPairShortcutController:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

    .line 468
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;

    invoke-direct {v1, p1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    iput-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerSmartTipController:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;

    .line 469
    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitAdjacentEventListener;

    invoke-direct {v1, p0, v9}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitAdjacentEventListener;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;)V

    .line 470
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V

    .line 472
    new-instance v8, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    move-object v1, v8

    move-object v3, v10

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/SystemWindows;)V

    iput-object v8, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    .line 476
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateCornerRadiusDimension()V

    .line 480
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskStackListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$Impl;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :catch_0
    iget-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMultiWindowEnableChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 488
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {v1, p0}, Landroid/app/ActivityThread;->registerMultiWindowCoreStateListener(Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/DividerView;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Ljava/lang/Integer;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->notifyMultistarListener(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsAdjacentLaunched:Z

    return p1
.end method

.method private finishRemoteConfigChanges(Ljava/lang/String;)V
    .locals 2

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishRemoteConfigChanges, reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitScreenCtrl"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 802
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerViewForRemoteConfigChanges:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 803
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRemoteConfigChangesTimeout:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 804
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->finishRemoteConfigChanges()V

    return-void
.end method

.method private getDividerRatio()F
    .locals 3

    .line 1513
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1514
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1515
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getSplitAreaBounds(Landroid/graphics/Rect;)V

    .line 1516
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/policy/DockedDividerUtils;->calculateSplitRatio(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method private getRotatedPosition(FII)I
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-nez v0, :cond_0

    .line 1911
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return p0

    .line 1913
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getCurrentPosition()I

    .line 1918
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->calculatePositionFromRatio(F)I

    move-result p1

    .line 1921
    invoke-static {p2, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->needPositionReversed(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1924
    invoke-static {p3}, Lcom/android/internal/policy/DockedDividerUtils;->isHorizontalDivision(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1925
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p0

    goto :goto_0

    .line 1927
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p0

    :goto_0
    sub-int p1, p0, p1

    :cond_2
    return p1
.end method

.method private handleSplitImmersiveModeChanged()V
    .locals 3

    .line 2237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSplitImmersiveModeChanged:  split_immersive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_IMMERSIVE_MODE_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", navi_immersive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVIBAR_IMMERSIVE_MODE_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenCtrl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 2242
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2243
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->calculatePositionFromRatio(F)I

    move-result v1

    goto :goto_0

    .line 2244
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 2245
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 2247
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getCellDividerRatio()F

    .line 2254
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 2255
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->addSyncWindowingModes(I)V

    const/4 v1, 0x4

    .line 2256
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->addSyncWindowingModes(I)V

    const/4 v1, 0x1

    .line 2260
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->setSyncAppsReason(I)V

    .line 2263
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {v1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 2266
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateDividers()V

    return-void
.end method

.method private injectAdditionalDependency(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V
    .locals 2

    .line 1504
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->injectAdditionalDependency(Lcom/android/wm/shell/legacysplitscreen/MultiSplitController;Lcom/android/wm/shell/legacysplitscreen/DividerPanel;Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const-string/jumbo v0, "timeout"

    .line 188
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->finishRemoteConfigChanges(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 222
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mCornerRadius:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setCornerRadius(F)V

    return-void
.end method

.method private synthetic lambda$new$12()V
    .locals 4

    .line 1880
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    const/4 v1, 0x0

    const-string v2, "SplitScreenCtrl"

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->updateDividerPanel()V

    .line 1882
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setDividerPanelFirstAutoOpenPref(Z)V

    const/4 v0, 0x1

    .line 1883
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mShowingFirstAutoOpenDividerPanel:Z

    const-string v0, "Run DividerPanel first auto open"

    .line 1884
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1886
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to run DividerPanel first auto open mVisible: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :goto_0
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsPendingFirstAutoOpenDividerPanel:Z

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->resetCornerRadiusAndSplitBackground()V

    return-void
.end method

.method private synthetic lambda$new$3(IIILandroid/window/WindowContainerTransaction;)V
    .locals 6

    if-eqz p1, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->isSplitScreenSupported()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    if-nez p2, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p2, v0}, Landroid/window/WindowContainerTransaction;->setHasSplitRotation(Z)V

    .line 318
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v1

    .line 319
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerRatio()F

    move-result v2

    .line 337
    new-instance v3, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 338
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 339
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-direct {p1, v4, v3, v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    .line 341
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->rotateTo(I)V

    .line 342
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 355
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result p3

    .line 354
    invoke-direct {p0, v2, v1, p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getRotatedPosition(FII)I

    move-result p3

    .line 357
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    .line 359
    invoke-virtual {v1, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p3

    .line 360
    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p1, p3, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    if-eqz p3, :cond_2

    .line 371
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 372
    invoke-virtual {p3, p1, v1, p2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyHomeTasksMinimized(Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)Z

    .line 374
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "SplitScreenCtrl"

    const-string p1, "Screen rotated while other operations were pending, this may result in some graphical artifacts."

    .line 380
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {p4, p2, v0}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static synthetic lambda$notifyBoundsChanged$10(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 1337
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/function/BiConsumer;

    if-eqz p2, :cond_0

    .line 1338
    invoke-interface {p2, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$notifyMultistarListener$9(Ljava/lang/Integer;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 1262
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    .line 1263
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onMultiWindowCoreStateChanged$13()V
    .locals 0

    .line 2231
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->handleSplitImmersiveModeChanged()V

    return-void
.end method

.method private synthetic lambda$showDividerIfPossible$11()V
    .locals 2

    .line 1486
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-nez v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1489
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->update(Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v0, 0x1

    .line 1491
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateVisibility$4(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1015
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$updateVisibility$5(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private static synthetic lambda$updateVisibility$6(ZLjava/lang/ref/WeakReference;)Z
    .locals 0

    .line 1025
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    .line 1026
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateVisibility$7()V
    .locals 0

    .line 1043
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/core/RunestoneLogger;->sendDismissMultiWindowState(Landroid/content/Context;)V

    return-void
.end method

.method private notifyMultistarListener(Ljava/lang/Integer;)V
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMultistarListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 1261
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMultistarListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1266
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private resetCornerRadiusAndSplitBackground()V
    .locals 1

    .line 2138
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->isWallpaperVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SplitScreenCtrl"

    const-string/jumbo v0, "resetCornerRadiusAndSplitBackground: skipped, reason=wallpaper_visible"

    .line 2139
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2144
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setCornerRadius(F)V

    .line 2147
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    return-void
.end method

.method private saveCurrentSplitDisplayLayoutIfNeeded(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 810
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSavedSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->hasExtraStableInset()Z

    move-result p2

    .line 823
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->hasExtraStableInset()Z

    move-result p1

    if-eq p2, p1, :cond_1

    .line 830
    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    .line 832
    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 833
    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 837
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSavedSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 838
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "saveCurrentSplitDisplayLayoutIfNeeded: primary="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " secondary="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cell="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mCell:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitScreenCtrl"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setCornerRadius(F)V
    .locals 2

    .line 1967
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1968
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;F)V

    .line 1969
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1970
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private startRemoteConfigChanges()Z
    .locals 3

    .line 783
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const-string v1, "SplitScreenCtrl"

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFirstLayout:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "startRemoteConfigChanges"

    .line 787
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerViewForRemoteConfigChanges:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 789
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRemoteConfigChangesTimeout:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 790
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRemoteConfigChangesTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "startRemoteConfigChanges: failed, invalid divider view"

    .line 784
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private updateCornerRadiusDimension()V
    .locals 2

    .line 1957
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502bd

    .line 1958
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mCornerRadius:I

    return-void
.end method


# virtual methods
.method public addDivider(Landroid/content/res/Configuration;)V
    .locals 13

    .line 888
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    .line 896
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$layout;->docked_stack_divider:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 898
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setAnimationHandler(Landroid/animation/AnimationHandler;)V

    .line 906
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    .line 909
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-object v7, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    iget-object v8, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    iget-object v9, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v10, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v11, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    iget-object v12, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    move-object v5, p0

    invoke-virtual/range {v4 .. v12}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->injectDependencies(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;Lcom/android/wm/shell/legacysplitscreen/DividerState;Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Lcom/android/wm/shell/legacysplitscreen/DividerImeController;Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;)V

    .line 913
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-direct {p0, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->injectAdditionalDependency(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V

    .line 916
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setPointerIcon()V

    .line 919
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 920
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    iget-boolean v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    invoke-virtual {v2, v4, v6, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    .line 924
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050146

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 927
    sget-boolean v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDivider(): mVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SplitScreenCtrl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const/4 v5, 0x1

    .line 940
    :cond_2
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_BOUNDS_POLICY_WITH_EXTRA_STABLE_INSETS:Z

    if-eqz p1, :cond_4

    .line 941
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/DisplayLayout;->getSplitAreaBounds(Landroid/graphics/Rect;)V

    if-eqz v5, :cond_3

    move p1, v0

    goto :goto_1

    .line 942
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    :goto_1
    if-eqz v5, :cond_6

    .line 943
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    move p1, v0

    goto :goto_2

    .line 946
    :cond_5
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p1

    :goto_2
    if-eqz v5, :cond_6

    .line 947
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    .line 950
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->add(Landroid/view/View;III)V

    .line 954
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v7, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v9, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-object v10, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAppPairShortcutController:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;

    move-object v8, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->injectDependencies(Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Lcom/android/wm/shell/legacysplitscreen/DividerPanel$DividerPanelCallbacks;Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;)V

    return-void
.end method

.method public asLegacySplitScreen()Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImpl:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitScreenImpl;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "\nSplitScreenCtrl"

    .line 1174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mVisible="

    .line 1177
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mMinimized="

    .line 1178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mAdjustedForIme="

    .line 1179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1182
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    const-string v1, "\n"

    if-eqz v0, :cond_0

    const-string v0, "  mSplitLayout="

    .line 1183
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1184
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    if-eqz v0, :cond_1

    const-string v0, "  mPrimaryTaskInfo="

    .line 1188
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mSecondaryTaskInfo="

    .line 1189
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1193
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ensureMinimizedSplit()V
    .locals 3

    const/4 v0, 0x1

    .line 1439
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setHomeMinimized(Z)V

    .line 1440
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1442
    sget-boolean v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SplitScreenCtrl"

    const-string v2, " entering split mode with minimized=true"

    .line 1443
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method public ensureNormalSplit()V
    .locals 1

    const/4 v0, 0x0

    .line 1450
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setHomeMinimized(Z)V

    .line 1451
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1453
    sget-boolean p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "SplitScreenCtrl"

    const-string v0, " enter split mode unminimized "

    .line 1454
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public finishEnterSplitTransition(Z)V
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    .line 1371
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1370
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1370
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->update(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    .line 1373
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureMinimizedSplit()V

    goto :goto_0

    .line 1375
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureNormalSplit()V

    :goto_0
    return-void
.end method

.method public getAnimDuration()J
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    .line 1212
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10500a5

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const-string/jumbo v1, "transition_animation_scale"

    .line 1210
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const/high16 v0, 0x43a80000    # 336.0f

    mul-float/2addr p0, v0

    float-to-long v0, p0

    return-wide v0
.end method

.method getCellDividerRatio()F
    .locals 3

    .line 1581
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mCellDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getFullPrimaryBounds(Landroid/graphics/Rect;)V

    .line 1583
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v2, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mCell:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v0, v2, v1, p0}, Lcom/android/internal/policy/DockedDividerUtils;->calculateSplitRatio(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    .line 1904
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getCornerRadius()I
    .locals 0

    .line 1963
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mCornerRadius:I

    return p0
.end method

.method getDividerResizeController()Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;
    .locals 0

    .line 1659
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    return-object p0
.end method

.method public getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;
    .locals 0

    .line 853
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    return-object p0
.end method

.method getFocusedTaskWindowingMode()I
    .locals 0

    .line 2219
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mFocusedWindowingMode:I

    return p0
.end method

.method getFocusedTaskWindowingMode(I)I
    .locals 3

    .line 2190
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v0

    .line 2192
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2193
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 2197
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p0, v2}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object p0

    .line 2199
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2200
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method getMultiSplitController()Lcom/android/wm/shell/legacysplitscreen/MultiSplitController;
    .locals 0

    .line 2037
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMultiSplitController:Lcom/android/wm/shell/legacysplitscreen/MultiSplitController;

    return-object p0
.end method

.method public getSecondaryRoot()Landroid/window/WindowContainerToken;
    .locals 0

    .line 1475
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1478
    :cond_0
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getSplitBackgroundController()Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;
    .locals 0

    .line 2154
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    return-object p0
.end method

.method public getSplitLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;
    .locals 0

    .line 1467
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    return-object p0
.end method

.method public getWmProxy()Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;
    .locals 0

    .line 1471
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    return-object p0
.end method

.method handleTaskSplitLayoutChanged(FFI)V
    .locals 5

    and-int/lit8 v0, p3, 0x38

    .line 1525
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v1

    .line 1526
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->isMultiSplitActive()Z

    move-result v2

    .line 1527
    invoke-static {p3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->multiSplitFlagsToDockSide(I)I

    move-result p3

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layoutSplitTask: splitRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " dockSide="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " splitMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isSplitActive="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isMultiSplitActive="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " reverseMode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplitScreenCtrl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->layoutSplitTasks(IFFI)V

    return-void
.end method

.method initSplit()V
    .locals 3

    const-string v0, "SplitScreenCtrl"

    .line 592
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitInited:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "initSplit: multi-window enabled."

    .line 596
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 603
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitInited:Z

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Failed to register docked stack listener"

    .line 599
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    return-void
.end method

.method isCellDividerVisible()Z
    .locals 0

    .line 1649
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mCellDividerView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isDividerSmartTipShowRequested()Z
    .locals 0

    .line 1951
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerSmartTipController:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->isShowRequested()Z

    move-result p0

    return p0
.end method

.method public isDividerVisible()Z
    .locals 0

    .line 857
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeStackResizable()Z
    .locals 0

    .line 849
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    return p0
.end method

.method isKeyguardShowing()Z
    .locals 0

    .line 2273
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsKeyguardShowing:Z

    return p0
.end method

.method public isMinimized()Z
    .locals 0

    .line 845
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    return p0
.end method

.method public isSplitActive()Z
    .locals 1

    .line 866
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1336
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda10;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1341
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAppTransitionFinished()V
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-nez v0, :cond_0

    return-void

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->onAppTransitionFinished()V

    .line 1148
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->showDividerIfPossible()V

    .line 1156
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsAdjacentLaunched:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerSmartTipController:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->isAvailableToShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->requestToShowDividerSmartTip()V

    .line 1158
    iput-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsAdjacentLaunched:Z

    .line 1161
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsPendingFirstAutoOpenDividerPanel:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsFirstAutoOpenDividerPanel:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    .line 1162
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isSupportPanelOpenPolicy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1164
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsPendingFirstAutoOpenDividerPanel:Z

    const-string v0, "SplitScreenCtrl"

    const-string v1, "Try to run DividerPanel first auto open"

    .line 1165
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerPanelAutoOpen:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public onDismissSplit()V
    .locals 3

    const/4 v0, 0x0

    .line 1416
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateVisibility(Z)V

    .line 1417
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    .line 1420
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsPendingFirstAutoOpenDividerPanel:Z

    if-eqz v2, :cond_0

    .line 1421
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerPanelAutoOpen:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1422
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsPendingFirstAutoOpenDividerPanel:Z

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeCallbacks() DividerPanel first auto open / mIsFirstAutoOpenDividerPanel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsFirstAutoOpenDividerPanel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenCtrl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/wm/shell/legacysplitscreen/DividerState;->mRatioPositionBeforeMinimized:F

    .line 1434
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    .line 1435
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->reset()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 562
    :cond_0
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 563
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 564
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    .line 565
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 572
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    return-void

    .line 577
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 585
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitInited:Z

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SplitScreenCtrl"

    const-string v1, "Failed to register docked stack listener"

    .line 579
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 11

    if-nez p1, :cond_d

    .line 609
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->isSplitScreenSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerRatio()F

    move-result v0

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-virtual {v1, p2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->onDisplayConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 653
    sget-boolean v1, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz v1, :cond_2

    .line 657
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->saveCurrentSplitDisplayLayoutIfNeeded(ILandroid/content/res/Configuration;)V

    .line 661
    :cond_2
    new-instance v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 662
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-direct {v2, v3, p1, v4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V

    iput-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    const-string p1, "SplitScreenCtrl"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 665
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSavedSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    .line 667
    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSavedSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v2, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 668
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, -0x1

    :cond_3
    move v10, v4

    .line 672
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSavedSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v4, v4, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 673
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSavedSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v4, v4, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 677
    iput-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSavedSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 679
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 680
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->calculatePositionFromRatio(F)I

    move-result v6

    const/4 v9, 0x0

    .line 685
    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    const/4 v8, 0x0

    move-object v7, v1

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;ZII)V

    .line 686
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handled saveSplitDisplayLayout: primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mCell:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-nez v1, :cond_6

    .line 692
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    .line 700
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 702
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 703
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->calculatePositionFromRatio(F)I

    move-result p1

    .line 706
    :cond_5
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 707
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 716
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    goto :goto_0

    .line 717
    :cond_6
    iget-object v0, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 718
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->rotation()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 719
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    .line 720
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    .line 726
    iput-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    goto :goto_0

    .line 728
    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    if-nez v0, :cond_9

    :cond_8
    const-string/jumbo v0, "primary and secondary rect is null. resize to middleTarget"

    .line 730
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 732
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 733
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 734
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 737
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 743
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->update(Landroid/content/res/Configuration;)V

    .line 750
    :cond_a
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mReadyToStartRemoteConfigChanges:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 751
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mReadyToStartRemoteConfigChanges:Z

    .line 752
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->startRemoteConfigChanges()Z

    move-result p1

    if-nez p1, :cond_b

    const-string/jumbo p1, "start_failed"

    .line 753
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->finishRemoteConfigChanges(Ljava/lang/String;)V

    .line 757
    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerPanel:Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    if-eqz p1, :cond_c

    .line 758
    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->onDisplayConfigurationChanged()V

    .line 762
    :cond_c
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateCornerRadiusDimension()V

    :cond_d
    :goto_1
    return-void
.end method

.method onDividerSurfaceInitialized(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerViewForRemoteConfigChanges:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-ne v0, p1, :cond_0

    const-string p1, "divider_surface_initialized"

    .line 796
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->finishRemoteConfigChanges(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onImeVisibilityChanged(Z)V
    .locals 2

    .line 2120
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->isWallpaperVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2125
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mResetCornerRadiusAndSplitBackground:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2126
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getCornerRadius()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setCornerRadius(F)V

    .line 2128
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsKeyguardShowing:Z

    xor-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    goto :goto_0

    .line 2132
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mResetCornerRadiusAndSplitBackground:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    .line 528
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsKeyguardShowing:Z

    .line 531
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 539
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setHidden(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMultiWindowCoreStateChanged(I)V
    .locals 2

    and-int/lit16 v0, p1, 0x600

    if-eqz v0, :cond_0

    .line 2229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMultiWindowCoreStateChanged: changes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplitScreenCtrl"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRemoveDividerPanel()V
    .locals 1

    .line 1870
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mShowingFirstAutoOpenDividerPanel:Z

    if-eqz p0, :cond_0

    .line 1871
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->disableDividerPanelFirstAutoOpen()V

    const-string p0, "SplitScreenCtrl"

    const-string v0, "Exit DividerPanel first auto open"

    .line 1872
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSplitScreenSupported()V
    .locals 3

    .line 517
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 518
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 519
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v2, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(ILandroid/window/WindowContainerTransaction;)V

    .line 520
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public onStartRemoteConfigurationChanged(I)V
    .locals 0

    const/4 p1, 0x1

    .line 779
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mReadyToStartRemoteConfigChanges:Z

    return-void
.end method

.method public onTaskVanished()V
    .locals 0

    .line 1002
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    return-void
.end method

.method public onUndockingTask()V
    .locals 0

    .line 1136
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz p0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->onUndockingTask()V

    :cond_0
    return-void
.end method

.method public prepareEnterSplitTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1365
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 1366
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 1365
    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildEnterSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    return-void
.end method

.method public registerBoundsChangeListener(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1237
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1238
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerInSplitScreenListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1220
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1221
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 1222
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerMultistarListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMultistarListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 1245
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMultistarListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeDivider()V
    .locals 2

    .line 961
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v0, :cond_2

    .line 963
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerSmartTipShowRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->requestToDismissDividerSmartTip()V

    const/4 v0, 0x0

    .line 965
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsAdjacentLaunched:Z

    .line 967
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeDivider(): Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenCtrl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->onDividerRemoved()V

    .line 971
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->remove()V

    return-void
.end method

.method requestToDismissDividerSmartTip()V
    .locals 0

    .line 1947
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerSmartTipController:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->requestToDismiss()V

    return-void
.end method

.method requestToShowDividerSmartTip()V
    .locals 0

    .line 1943
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerSmartTipController:Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerSmartTipController;->requestToShow()V

    return-void
.end method

.method public runToggleDividerResizeEffects()Z
    .locals 0

    .line 1663
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDividerResizeController:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->toggleDividerResizeModeByCommand()Z

    move-result p0

    return p0
.end method

.method public setAdjustedForIme(Z)V
    .locals 1

    .line 1119
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1122
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    .line 1123
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateTouchable()V

    return-void
.end method

.method public setDividerPanelFirstAutoOpenPref(Z)V
    .locals 1

    .line 1895
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsFirstAutoOpenDividerPanel:Z

    .line 1896
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "divider_panel_first_auto_open"

    .line 1897
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1898
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHomeMinimized(Z)V
    .locals 8

    .line 1067
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHomeMinimized  min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hrsz:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " split:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenCtrl"

    .line 1068
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1072
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 1075
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    .line 1078
    :cond_2
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v4, v4, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-boolean v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    xor-int/2addr v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1081
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v4, :cond_6

    .line 1082
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1083
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 1085
    :cond_3
    iget-boolean v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-eqz v4, :cond_4

    .line 1086
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->pause(I)V

    :cond_4
    if-eqz v1, :cond_5

    .line 1090
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getAnimDuration()J

    move-result-wide v5

    iget-boolean v7, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZJZ)V

    .line 1092
    :cond_5
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-nez p1, :cond_6

    .line 1094
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mImePositionProcessor:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->resume(I)V

    .line 1097
    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateTouchable()V

    .line 1099
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-nez p1, :cond_7

    if-nez v1, :cond_7

    .line 1100
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getNeedToFocusWindowingMode()I

    move-result p1

    if-eqz p1, :cond_7

    .line 1103
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getWmProxy()Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-static {v1, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->determineWindowContainerToken(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;I)Landroid/window/WindowContainerToken;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1105
    invoke-virtual {v0, p1, v3, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;ZZ)Landroid/window/WindowContainerTransaction;

    .line 1113
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1114
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_8
    return-void
.end method

.method public setMinimized(Z)V
    .locals 0

    return-void
.end method

.method showDividerIfPossible()V
    .locals 2

    .line 1485
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public splitPrimaryTask()Z
    .locals 5

    const/4 v0, 0x0

    .line 1272
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return v0

    .line 1278
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isSplitActive()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1283
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    .line 1284
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 1291
    :cond_2
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1292
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1296
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1298
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v4, :cond_4

    return v0

    .line 1303
    :cond_4
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    if-eq v4, v2, :cond_7

    const/4 v2, 0x3

    if-ne v4, v2, :cond_5

    goto :goto_0

    .line 1308
    :cond_5
    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-nez v1, :cond_6

    .line 1309
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wm/shell/R$string;->dock_non_resizeble_failed_to_dock_text:I

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1310
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    .line 1316
    :cond_6
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->enterSplitScreenTopActivity()V

    return v3

    :catch_0
    :cond_7
    :goto_0
    return v0
.end method

.method public startDismissSplit(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1380
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->startDismissSplit(ZZ)V

    return-void
.end method

.method public startDismissSplit(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1385
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->startDismissSplit(ZZZ)V

    return-void
.end method

.method public startDismissSplit(ZZZ)V
    .locals 3

    .line 1392
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    .line 1393
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 1397
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    .line 1398
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getSplitTransitions()Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;

    move-result-object p3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, v0, p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->dismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;ZZ)V

    goto :goto_0

    .line 1406
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, v0, v1, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyDismissSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;ZZ)V

    .line 1411
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onDismissSplit()V

    :goto_0
    return-void
.end method

.method public startEnterSplit()V
    .locals 3

    .line 1347
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->onStartEnterSplit()V

    .line 1348
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundLayerColor(Z)V

    .line 1349
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    .line 1350
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->isWallpaperVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitBackgroundController:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 1356
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    .line 1357
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1356
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1356
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->update(Landroid/content/res/Configuration;)V

    .line 1359
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 1360
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    .line 1359
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->applyEnterSplit(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    return-void
.end method

.method public update(Landroid/content/res/Configuration;)V
    .locals 5

    .line 975
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 977
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->removeDivider()V

    .line 978
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->addDivider(Landroid/content/res/Configuration;)V

    .line 980
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-eqz p1, :cond_1

    .line 981
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V

    .line 982
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateTouchable()V

    .line 984
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setHidden(Z)V

    if-nez v0, :cond_2

    .line 987
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    if-eqz p1, :cond_2

    .line 990
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {p1, v2, v2}, Lcom/android/wm/shell/common/SystemWindows;->getRootSurface(II)Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 992
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 994
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 995
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    return-void
.end method

.method updateDividers()V
    .locals 2

    .line 1567
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    .line 1569
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1570
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->update(Landroid/content/res/Configuration;)V

    return-void
.end method

.method updateFocusedTaskWindowingMode(I)V
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-nez v0, :cond_0

    return-void

    .line 2177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getFocusedTaskWindowingMode(I)I

    move-result p1

    .line 2178
    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mFocusedWindowingMode:I

    if-eq v0, p1, :cond_1

    .line 2179
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mFocusedWindowingMode:I

    if-nez p1, :cond_1

    .line 2182
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerSmartTipShowRequested()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2183
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->requestToDismissDividerSmartTip()V

    const/4 p1, 0x0

    .line 2184
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mIsAdjacentLaunched:Z

    :cond_1
    return-void
.end method

.method public updateTouchable()V
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setTouchable(Z)V

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 3

    .line 1006
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SplitScreenCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    if-eq v0, p1, :cond_3

    .line 1008
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mVisible:Z

    .line 1009
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->enterSplitMode(Z)V

    .line 1014
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_1

    .line 1018
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->exitSplitMode()V

    .line 1019
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 1023
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 1024
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDockedStackExistsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda12;-><init>(Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1029
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v0, :cond_3

    .line 1041
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_USAGE_RUNESTONE_LOGGING:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 1042
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSingleThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1029
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method
