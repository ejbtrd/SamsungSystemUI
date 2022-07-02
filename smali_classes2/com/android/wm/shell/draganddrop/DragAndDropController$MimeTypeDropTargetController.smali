.class Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;
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
    name = "MimeTypeDropTargetController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method public static synthetic $r8$lambda$wy0MH1ibA6kghCO_I3GBuDJ4Tpw(Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->lambda$onDrag$0(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$1;)V
    .locals 0

    .line 461
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    return-void
.end method

.method private synthetic lambda$onDrag$0(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 1

    .line 530
    iget v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-nez v0, :cond_0

    .line 533
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$600(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;
    .locals 0

    .line 543
    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    return-object p0
.end method

.method public onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 10

    .line 464
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 521
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 496
    :pswitch_1
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    .line 500
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/draganddrop/IDragLayout;->show()V

    goto/16 :goto_0

    .line 527
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hasDropped()Z

    move-result p2

    if-nez p2, :cond_4

    .line 528
    iget p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    sub-int/2addr p2, v3

    iput p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 529
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object p2

    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    invoke-interface {p2, p1, v0}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 513
    :pswitch_3
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 515
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object p0

    .line 513
    invoke-static {p2, p1, p3, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$700(Lcom/android/wm/shell/draganddrop/DragAndDropController;Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;Lcom/android/wm/shell/draganddrop/IDragLayout;)Z

    move-result p0

    return p0

    .line 504
    :pswitch_4
    iget p2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-nez p2, :cond_1

    .line 505
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Workaround for input system issue."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 510
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->update(Landroid/view/DragEvent;)V

    goto :goto_0

    .line 466
    :pswitch_5
    iget v0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-eqz v0, :cond_2

    .line 467
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unexpected drag start during an active drag"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    add-int/2addr v0, v3

    .line 470
    iput v0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 472
    invoke-interface {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;->isNaturalSwitching()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    invoke-interface {v0, p1, v1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    .line 476
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object v4

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$500(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    .line 477
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v7

    iget-object v8, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v9, p3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 476
    invoke-interface/range {v4 .. v9}, Lcom/android/wm/shell/draganddrop/IDragLayout;->prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    .line 483
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {p2, p3, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$600(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 486
    invoke-interface {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;->performDragStartedHapticAndSound(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    .line 489
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/wm/shell/draganddrop/IDragLayout;->show()V

    .line 490
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;->getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->update(Landroid/view/DragEvent;)V

    :cond_4
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
