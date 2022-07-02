.class final Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;
.super Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;
.source "DividerResizeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GuideViewEffectsTransactionHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    return-void
.end method


# virtual methods
.method handleDismissPrimary(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 478
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method handleDismissSecondary(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 488
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method handleResizeSplit(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    const/4 v0, 0x3

    .line 461
    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->addSyncWindowingModes(I)V

    .line 462
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    const/4 v0, 0x4

    .line 465
    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->addSyncWindowingModes(I)V

    .line 466
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$GuideViewEffectsTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$700(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->setSyncAppCallbackIfNeeded(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
