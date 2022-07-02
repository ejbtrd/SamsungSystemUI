.class public interface abstract Lcom/android/wm/shell/ISplitScreenController;
.super Ljava/lang/Object;
.source "ISplitScreenController.java"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;


# virtual methods
.method public abstract getDockSide()I
.end method

.method public abstract getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public isMultiSplitScreenVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isSplitScreenVisible()Z
.end method
