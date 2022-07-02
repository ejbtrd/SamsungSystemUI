.class Lcom/android/wm/shell/legacysplitscreen/DividerView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerView;->injectDependencies(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;Lcom/android/wm/shell/legacysplitscreen/DividerState;Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Lcom/android/wm/shell/legacysplitscreen/DividerImeController;Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 541
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    .line 542
    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$2700(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->isSupportPanelOpenPolicy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 544
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$2800(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Lcom/android/wm/shell/common/split/DividerHandleView;

    move-result-object p1

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 551
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$2700(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Lcom/android/wm/shell/legacysplitscreen/DividerPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerPanel;->updateDividerPanel()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
