.class abstract Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;
.super Ljava/lang/Object;
.source "DividerResizeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "DividerResizeTransactionHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract handleDismissPrimary(Landroid/window/WindowContainerTransaction;)V
.end method

.method abstract handleDismissSecondary(Landroid/window/WindowContainerTransaction;)V
.end method

.method abstract handleResizeSplit(Landroid/window/WindowContainerTransaction;)V
.end method

.method protected setSyncAppCallbackIfNeeded(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$800(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Landroid/os/RemoteCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->access$800(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)Landroid/os/RemoteCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/window/WindowContainerTransaction;->setSyncAppsCallback(Landroid/os/RemoteCallback;)V

    :cond_0
    return-void
.end method
