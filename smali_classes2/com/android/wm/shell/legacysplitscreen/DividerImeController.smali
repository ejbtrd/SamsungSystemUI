.class Lcom/android/wm/shell/legacysplitscreen/DividerImeController;
.super Ljava/lang/Object;
.source "DividerImeController.java"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAdjusted:Z

.field private mAnimation:Landroid/animation/ValueAnimator;

.field private mCellHasFocus:Z

.field private mHiddenTop:I

.field private mImeWasShown:Z

.field private mLastAdjustTop:I

.field private mLastAdjustTopBeforeImeHeightChanged:I

.field private mLastPrimaryDim:F

.field private mLastSecondaryDim:F

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mPaused:Z

.field private mPausedTargetAdjusted:Z

.field private mPrimaryHasFocus:Z

.field private mSecondaryHasFocus:Z

.field private mShownTop:I

.field private final mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field private mTargetAdjusted:Z

.field private mTargetPrimaryDim:F

.field private mTargetSecondaryDim:F

.field private mTargetShown:Z

.field private final mTaskOrganizer:Landroid/window/TaskOrganizer;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public static synthetic $r8$lambda$0zoGRSniJriOBtdW3Mh-yX3lZ_A(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->lambda$startAsyncAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FPsLA1QfnMwsoU3OMou_1_JX_i0(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->lambda$pause$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kH8bS5ohAqD7CQ76DQaDBtSUdEY(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->lambda$resume$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/TaskOrganizer;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    .line 68
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    .line 75
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    .line 82
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    .line 86
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPrimaryHasFocus:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mCellHasFocus:Z

    .line 93
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    .line 94
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    const/4 v1, -0x1

    .line 96
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    .line 102
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTopBeforeImeHeightChanged:I

    .line 107
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    const/4 v1, 0x0

    .line 115
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    .line 118
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    .line 123
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 124
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 125
    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 126
    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)Lcom/android/wm/shell/common/TransactionPool;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onEnd(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private adjustWindowConfiguration(I)V
    .locals 6

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->needWindowLiftUpInIme(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 594
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v1

    .line 595
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 596
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 597
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x3

    if-eq p1, v5, :cond_5

    const/4 v5, 0x4

    if-eq p1, v5, :cond_3

    const/16 v5, 0xc

    if-eq p1, v5, :cond_1

    return-void

    .line 616
    :cond_1
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eqz p1, :cond_2

    .line 617
    iget-object p1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedCell:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 619
    :cond_2
    iget-object p1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mCell:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 620
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mCell:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    .line 609
    :cond_3
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eqz p1, :cond_4

    .line 610
    iget-object p1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 612
    :cond_4
    iget-object p1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 613
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    .line 602
    :cond_5
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eqz p1, :cond_6

    .line 603
    iget-object p1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 605
    :cond_6
    iget-object p1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 606
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 625
    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    .line 626
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 630
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 631
    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 632
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 633
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    .line 637
    :cond_7
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 638
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 639
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, v5, v5}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 642
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getWmProxy()Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 643
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_8
    return-void
.end method

.method private dumpState()Ljava/lang/String;
    .locals 4

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " adj:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") shw:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " dims:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " shf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " desync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " paus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getSplitLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p0

    return-object p0
.end method

.method private getSecondaryHasFocus(I)Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    return-object p0
.end method

.method private isDividerHidden()Z
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHidden()Z

    move-result p0

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

.method private isTargetAdjusted()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$pause$1()V
    .locals 2

    .line 507
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ime pause run posted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DividerImeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    .line 512
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    const/4 v0, 0x0

    .line 513
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    const/4 v0, 0x0

    .line 514
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    .line 515
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState()V

    .line 516
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V

    .line 517
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 518
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$resume$2()V
    .locals 3

    .line 526
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->DEBUG:Z

    const-string v1, "DividerImeController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ime resume run posted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez v0, :cond_1

    return-void

    .line 531
    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "resume : mTargetShown reset false"

    .line 532
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iput-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    .line 536
    :cond_2
    iput-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    .line 537
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    .line 538
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateDimTargets()V

    .line 539
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    .line 540
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isMinimized()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 543
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->finishAnimations()V

    .line 545
    :cond_3
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState()V

    .line 546
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V

    return-void
.end method

.method private synthetic lambda$startAsyncAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 466
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 467
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    .line 468
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 469
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 470
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private onEnd(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 430
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    .line 431
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    .line 432
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    if-eqz p1, :cond_0

    .line 433
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    .line 434
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    .line 435
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    :cond_1
    const/4 p1, -0x1

    .line 439
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTopBeforeImeHeightChanged:I

    return-void
.end method

.method private onProgress(FLandroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 382
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    .line 383
    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez v1, :cond_2

    .line 384
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v1

    .line 385
    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    sub-float v2, v3, p1

    .line 387
    :goto_0
    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTopBeforeImeHeightChanged:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 389
    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float v2, v3, v2

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    .line 391
    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    invoke-virtual {v1, v2, v4, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateAdjustedBounds(III)V

    goto :goto_1

    .line 394
    :cond_1
    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    int-to-float v5, v4

    mul-float/2addr v5, v2

    sub-float v2, v3, v2

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    int-to-float v7, v6

    mul-float/2addr v2, v7

    add-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    .line 395
    invoke-virtual {v1, v2, v6, v4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateAdjustedBounds(III)V

    .line 397
    :goto_1
    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateAdjustedBounds(III)V

    .line 405
    iget-object v2, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v2, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2
    sub-float/2addr v3, p1

    const/4 v1, 0x1

    .line 410
    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    const/4 v1, 0x0

    .line 412
    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    mul-float/2addr v2, v3

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    mul-float/2addr p1, p0

    add-float/2addr v2, p1

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    return-void
.end method

.method private startAsyncAnimation()V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 448
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x113

    .line 449
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 450
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eq v0, v1, :cond_3

    .line 452
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTopBeforeImeHeightChanged:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 457
    :cond_1
    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    .line 460
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 464
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/wm/shell/common/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateDimTargets()V
    .locals 3

    .line 166
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 169
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    .line 175
    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const v1, 0x3e99999a    # 0.3f

    .line 176
    :cond_0
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    return-void
.end method

.method private updateImeAdjustState()V
    .locals 1

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState(Z)V

    return-void
.end method

.method private updateImeAdjustState(Z)V
    .locals 3

    .line 273
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p1

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    invoke-virtual {p1, v0, v1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateAdjustedBounds(III)V

    :cond_1
    const/4 p1, 0x3

    .line 281
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->adjustWindowConfiguration(I)V

    const/4 p1, 0x4

    .line 282
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->adjustWindowConfiguration(I)V

    .line 332
    :cond_2
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez p1, :cond_4

    .line 333
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 335
    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x113

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x154

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setAdjustedForIme(ZJ)V

    .line 351
    :cond_4
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-nez p1, :cond_5

    .line 353
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onImeVisibilityChanged(Z)V

    .line 356
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v0, :cond_6

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->setAdjustedForIme(Z)V

    return-void
.end method


# virtual methods
.method needWindowCropInIme(I)Z
    .locals 3

    .line 571
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    .line 572
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->isMultiSplitActive()Z

    .line 573
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getCellSplitSide()I

    const/4 p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    move p0, v1

    :cond_0
    return p0

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    return p0

    :cond_3
    return v1
.end method

.method needWindowLiftUpInIme(I)Z
    .locals 4

    .line 552
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    .line 553
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->isMultiSplitActive()Z

    .line 554
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getCellSplitSide()I

    const/4 p0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    if-eq v0, v1, :cond_0

    move p0, v2

    :cond_0
    return p0

    :cond_1
    if-ne p1, v1, :cond_3

    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    return p0

    :cond_3
    return v2
.end method

.method public onImeControlTargetChanged(IZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 183
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    .line 185
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    const/4 p1, 0x1

    .line 187
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState(Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V

    :cond_0
    return-void
.end method

.method public onImeEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 374
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerHidden()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onEnd(ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onImePositionChanged(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 362
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerHidden()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p1, p2

    .line 366
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    int-to-float v0, p2

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    .line 367
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    .line 368
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onImeStartPositioning(IIIZZLandroid/view/SurfaceControl$Transaction;)I
    .locals 4

    .line 196
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerHidden()Z

    move-result p6

    const-string v0, "DividerImeController"

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    .line 198
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-nez p1, :cond_0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onImeStartPositioning mTargetShown="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isDividerHidden="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerHidden()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState()V

    :cond_0
    return v1

    .line 207
    :cond_1
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    .line 208
    iput p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    .line 209
    iput-boolean p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    .line 210
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getSecondaryHasFocus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    const/4 p1, 0x1

    if-eqz p4, :cond_2

    if-nez p5, :cond_2

    .line 220
    iget-object p6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p6, p6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 221
    invoke-virtual {p6}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isMinimized()Z

    move-result p6

    if-nez p6, :cond_2

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isTargetAdjusted()Z

    move-result p6

    if-eqz p6, :cond_2

    move p6, p1

    goto :goto_0

    :cond_2
    move p6, v1

    :goto_0
    if-eqz p4, :cond_3

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "targetAdjusted?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " imeIsFloating?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, " minimized?"

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p5, p5, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    .line 224
    invoke-virtual {p5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isMinimized()Z

    move-result p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, " isTargetAdjusted="

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isTargetAdjusted()Z

    move-result p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 223
    invoke-static {v0, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    if-gez p5, :cond_5

    if-eqz p4, :cond_4

    goto :goto_1

    :cond_4
    move p2, p3

    .line 229
    :goto_1
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_6

    .line 230
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    goto :goto_2

    :cond_6
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    :goto_2
    if-eq p5, p2, :cond_8

    .line 231
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eq p2, p6, :cond_7

    iget-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-ne p6, p3, :cond_7

    .line 235
    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    goto :goto_3

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p2, :cond_8

    .line 236
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eqz p2, :cond_8

    .line 239
    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    .line 241
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    if-eqz p2, :cond_8

    if-eqz p4, :cond_8

    .line 243
    iput p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTopBeforeImeHeightChanged:I

    .line 248
    :cond_8
    :goto_3
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz p2, :cond_c

    .line 249
    iput-boolean p6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    .line 250
    sget-boolean p2, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->DEBUG:Z

    if-eqz p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " ime starting but paused "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez p6, :cond_a

    .line 251
    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eqz p0, :cond_b

    :cond_a
    move v1, p1

    :cond_b
    return v1

    .line 253
    :cond_c
    iput-boolean p6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    .line 254
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateDimTargets()V

    .line 255
    sget-boolean p2, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->DEBUG:Z

    if-eqz p2, :cond_d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " ime starting.  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_d
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_e

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    if-eqz p2, :cond_f

    if-eqz p4, :cond_f

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eq p2, p3, :cond_f

    .line 261
    :cond_e
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V

    .line 263
    :cond_f
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState()V

    .line 265
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-nez p2, :cond_10

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eqz p0, :cond_11

    :cond_10
    move v1, p1

    :cond_11
    return v1
.end method

.method public pause(I)V
    .locals 1

    .line 505
    sget-boolean p1, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ime pause posting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DividerImeController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 152
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    const/4 v1, 0x0

    .line 154
    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    .line 155
    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    const/4 v0, -0x1

    .line 162
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 524
    sget-boolean p1, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ime resume posting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->dumpState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DividerImeController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method setDimsHidden(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    .line 417
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->getView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 419
    invoke-virtual {v0, p1, v2, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 420
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateDimTargets()V

    .line 423
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    .line 424
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    :goto_0
    return-void
.end method
