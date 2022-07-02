.class Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;
.super Ljava/lang/Object;
.source "DragAndDropController.java"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchableDataDropTargetController"
.end annotation


# instance fields
.field private mDragStartedWithinThreshold:Z

.field private mEdgeFlags:I

.field private mIgnoreActionDragLocation:Z

.field private mShowDropTarget:Z

.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method public static synthetic $r8$lambda$vieSVwic1xN_RiEMLInFnggHv_M(Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->lambda$onDrag$0(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 572
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    .line 573
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$1;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    return-void
.end method

.method private calculateEdgeFlags(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Landroid/view/DragEvent;)V
    .locals 1

    const/4 v0, 0x3

    .line 672
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 675
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$500(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 677
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$800(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getNavigationBarPosition(Landroid/content/res/Resources;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    goto :goto_0

    .line 679
    :cond_1
    iget p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 688
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 690
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setIgnoreEdgeFlags. clipData null."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 693
    :cond_3
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    const-string/jumbo p2, "setIgnoreEdgeFlags. description null."

    if-nez p1, :cond_4

    .line 695
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 698
    :cond_4
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_5

    .line 700
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string p2, "com.samsung.android.content.clipdescription.extra.IGNORE_LEFT_EDGE"

    .line 703
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 704
    iget p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    and-int/lit8 p2, p2, -0x2

    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    :cond_6
    const-string p2, "com.samsung.android.content.clipdescription.extra.IGNORE_RIGHT_EDGE"

    .line 706
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 707
    iget p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    :cond_7
    return-void
.end method

.method private containsFlag(II)Z
    .locals 0

    and-int p0, p1, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getEdgeThresholdSize(Landroid/graphics/Rect;)I
    .locals 0

    .line 741
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 742
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 743
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3d656042    # 0.056f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private isInThreshold(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 2

    .line 723
    iget-object p2, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 724
    invoke-direct {p0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->getEdgeThresholdSize(Landroid/graphics/Rect;)I

    move-result p0

    .line 725
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    int-to-float v1, p0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 726
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p1

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

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

.method private synthetic lambda$onDrag$0(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 1

    .line 655
    iget v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-nez v0, :cond_0

    .line 658
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$600(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    :cond_0
    return-void
.end method

.method private needToShowDropTarget(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 3

    .line 730
    iget-object p2, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 731
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 732
    invoke-direct {p0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->getEdgeThresholdSize(Landroid/graphics/Rect;)I

    move-result v0

    .line 733
    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    .line 736
    iget v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->containsFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mEdgeFlags:I

    const/4 v1, 0x2

    .line 737
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->containsFlag(II)Z

    move-result p0

    if-eqz p0, :cond_1

    if-le p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private showDragAndSplitNotAvailableToast()V
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$800(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$string;->drag_and_split_not_available_toast:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    .line 716
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$800(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 719
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 9

    .line 579
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    const/4 p2, 0x2

    if-eq v0, p2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    const/4 p2, 0x4

    if-eq v0, p2, :cond_1

    const/4 p0, 0x6

    if-eq v0, p0, :cond_0

    goto/16 :goto_0

    .line 647
    :cond_0
    iget-object p0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 651
    :cond_1
    iget-object p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    invoke-interface {p2}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hasDropped()Z

    move-result p2

    if-nez p2, :cond_2

    .line 652
    iget p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    sub-int/2addr p2, v2

    iput p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 653
    iget-boolean p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mShowDropTarget:Z

    if-eqz p2, :cond_2

    .line 654
    iget-object p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    invoke-interface {p2, p1, v0}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    .line 663
    :cond_2
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mShowDropTarget:Z

    .line 664
    iget-object p0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/SmartTipController;->dismissHelpTipIfPossible()V

    goto/16 :goto_0

    .line 642
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    invoke-static {p0, p1, p3, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$700(Lcom/android/wm/shell/draganddrop/DragAndDropController;Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Lcom/android/wm/shell/draganddrop/IDragLayout;)Z

    move-result p0

    return p0

    .line 596
    :cond_4
    iget-boolean p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    if-eqz p2, :cond_5

    return v1

    .line 601
    :cond_5
    iget p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-nez p2, :cond_6

    .line 602
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Workaround for input system issue."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 607
    :cond_6
    iget-boolean p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    if-eqz p2, :cond_8

    .line 608
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->isInThreshold(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 609
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    :cond_7
    return v2

    .line 613
    :cond_8
    iget-boolean p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mShowDropTarget:Z

    if-eqz p2, :cond_9

    .line 614
    iget-object p0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->update(Landroid/view/DragEvent;)V

    .line 615
    iget-object p0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/SmartTipController;->dismissHelpTipIfPossible()V

    goto/16 :goto_0

    .line 617
    :cond_9
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->needToShowDropTarget(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 618
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 619
    invoke-static {p2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$800(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 620
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "multi-window disable"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$800(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;->show(Landroid/content/Context;)V

    .line 622
    iput-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    return v1

    .line 625
    :cond_a
    iget-object p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    invoke-virtual {p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->hasResizableResolveInfo()Z

    move-result p2

    if-nez p2, :cond_b

    .line 626
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->showDragAndSplitNotAvailableToast()V

    .line 627
    iput-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    return v1

    .line 631
    :cond_b
    invoke-interface {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;->performDragStartedHapticAndSound(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    .line 633
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {p2, p3, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$600(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 634
    iget-object p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    invoke-interface {p2}, Lcom/android/wm/shell/draganddrop/IDragLayout;->show()V

    .line 635
    iput-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mShowDropTarget:Z

    .line 636
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    const/16 p2, 0x1e

    invoke-virtual {p0, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->hideInputMethod(I)V

    .line 638
    :cond_c
    iget-object p0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/SmartTipController;->moveHelpTipAxisY(I)V

    goto :goto_0

    .line 581
    :cond_d
    iget v0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-eqz v0, :cond_e

    .line 582
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unexpected drag start during an active drag"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    add-int/2addr v0, v2

    .line 585
    iput v0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 586
    iget-object v3, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$500(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    .line 587
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v7, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v8, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 586
    invoke-interface/range {v3 .. v8}, Lcom/android/wm/shell/draganddrop/IDragLayout;->prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    .line 589
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->isInThreshold(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    .line 590
    iget-object v0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 591
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v4}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$500(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    .line 592
    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    .line 590
    invoke-virtual {v0, v1, v3, p2, v4}, Lcom/android/wm/shell/draganddrop/SmartTipController;->showHelpTipIfPossible(IILcom/android/wm/shell/common/DisplayLayout;I)V

    .line 593
    invoke-direct {p0, p3, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$LaunchableDataDropTargetController;->calculateEdgeFlags(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Landroid/view/DragEvent;)V

    :goto_0
    return v2
.end method
