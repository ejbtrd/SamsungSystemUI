.class public interface abstract Lcom/android/wm/shell/draganddrop/IDragLayout;
.super Ljava/lang/Object;
.source "IDragLayout.java"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;


# virtual methods
.method public abstract drop(Landroid/view/DragEvent;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)Z
.end method

.method public getCurrentTarget()Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract hasDropped()Z
.end method

.method public abstract hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V
.end method

.method public abstract isShowing()Z
.end method

.method public onExecutableAppChanged(Lcom/android/wm/shell/draganddrop/AppInfo;)V
    .locals 0

    return-void
.end method

.method public performDragStartedHapticAndSound()V
    .locals 0

    return-void
.end method

.method public performDropTargetChangedHaptic()V
    .locals 0

    return-void
.end method

.method public prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V
    .locals 0

    return-void
.end method

.method public removeWindows()V
    .locals 0

    return-void
.end method

.method public abstract show()V
.end method

.method public abstract update(Landroid/view/DragEvent;)V
.end method
