.class Lcom/android/wm/shell/draganddrop/DragAndDropController$2;
.super Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Stub;
.source "DragAndDropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method public static synthetic $r8$lambda$zxYkqJwGOmcJZaMH5i-7ZVB7a34(Lcom/android/wm/shell/draganddrop/DragAndDropController$2;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->lambda$show$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$show$0(I)V
    .locals 0

    .line 857
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->showDragTargetWindow(I)V

    return-void
.end method

.method private showDragTargetWindow(I)V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$900(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    if-nez v0, :cond_0

    .line 863
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t show dropTarget since display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was removed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 868
    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-nez v1, :cond_1

    .line 869
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DropTarget not handling for display Id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 872
    iput-boolean p1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    .line 873
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {p0, v0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$600(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 875
    iget-object p0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    invoke-interface {p0}, Lcom/android/wm/shell/draganddrop/IDragLayout;->performDropTargetChangedHaptic()V

    return-void
.end method


# virtual methods
.method public show(I)V
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$900(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    if-nez v0, :cond_0

    .line 849
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t show dropTarget since wrong displayId #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 852
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 854
    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Couldn\'t show dropTarget since handler isn\'t existed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 857
    :cond_1
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
