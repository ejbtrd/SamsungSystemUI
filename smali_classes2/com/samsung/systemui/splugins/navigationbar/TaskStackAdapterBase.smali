.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;
.super Ljava/lang/Object;
.source "TaskStackAdapterBase.java"


# virtual methods
.method public abstract addDragAndDropListener(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/content/ComponentName;ILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Bitmap;",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/systemui/splugins/navigationbar/DragEndInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addTaskStackListener(Ljava/lang/Runnable;)V
.end method

.method public abstract getRecentComponents(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecentTasks(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeTaskStackListener()V
.end method
