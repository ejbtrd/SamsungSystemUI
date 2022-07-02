.class Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;
.super Ljava/lang/Object;
.source "DragAndDropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerDisplay"
.end annotation


# instance fields
.field activeDragCount:I

.field final context:Landroid/content/Context;

.field final displayId:I

.field dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

.field final dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

.field dropTargetUiController:Lcom/android/wm/shell/draganddrop/DragAndDropController$IDropTargetUiController;

.field final executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

.field hideRequested:Z

.field isHandlingDrag:Z

.field final naturalSwitchingLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

.field final rootView:Landroid/widget/FrameLayout;

.field final smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

.field final snackBar:Lcom/android/wm/shell/common/SnackBar;

.field final visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

.field windowVisibility:I

.field final wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/SmartTipController;Lcom/android/wm/shell/draganddrop/VisibleTasks;Lcom/android/wm/shell/common/SnackBar;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    .line 812
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    .line 813
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    .line 814
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 815
    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 817
    iput-object p6, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->naturalSwitchingLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 818
    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 819
    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    .line 820
    iput-object p9, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 821
    iput-object p10, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->snackBar:Lcom/android/wm/shell/common/SnackBar;

    .line 824
    invoke-virtual {p7, p5}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->registerCallback(Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;)V

    .line 827
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->windowVisibility:I

    return-void
.end method


# virtual methods
.method supportDragAndDrop()Z
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
