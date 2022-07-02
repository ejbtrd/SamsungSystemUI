.class interface abstract Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;
.super Ljava/lang/Object;
.source "DragAndDropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IDropTargetUiController"
.end annotation


# virtual methods
.method public isNaturalSwitching()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
.end method

.method public performDragStartedHapticAndSound(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 0

    .line 757
    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    invoke-interface {p0}, Lcom/android/wm/shell/draganddrop/IDragLayout;->performDragStartedHapticAndSound()V

    return-void
.end method
