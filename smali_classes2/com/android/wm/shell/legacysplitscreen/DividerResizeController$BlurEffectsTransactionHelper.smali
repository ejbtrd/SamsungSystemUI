.class final Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$BlurEffectsTransactionHelper;
.super Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;
.source "DividerResizeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BlurEffectsTransactionHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$BlurEffectsTransactionHelper;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;)V

    return-void
.end method


# virtual methods
.method handleDismissPrimary(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, 0x4

    .line 399
    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->addSyncWindowingModes(I)V

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->setSyncAppCallbackIfNeeded(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method handleDismissSecondary(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, 0x3

    .line 405
    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->addSyncWindowingModes(I)V

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->setSyncAppCallbackIfNeeded(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method handleResizeSplit(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, 0x3

    .line 387
    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->addSyncWindowingModes(I)V

    const/4 v0, 0x4

    .line 389
    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->addSyncWindowingModes(I)V

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController$DividerResizeTransactionHelper;->setSyncAppCallbackIfNeeded(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
