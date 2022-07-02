.class Lcom/android/wm/shell/draganddrop/DragAndDropController$NaturalSwitchingDropTargetController;
.super Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;
.source "DragAndDropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NaturalSwitchingDropTargetController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .locals 1

    .line 548
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$NaturalSwitchingDropTargetController;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$MimeTypeDropTargetController;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$1;)V
    .locals 0

    .line 548
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$NaturalSwitchingDropTargetController;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    return-void
.end method


# virtual methods
.method getDragLayout(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Lcom/android/wm/shell/draganddrop/IDragLayout;
    .locals 0

    .line 551
    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->naturalSwitchingLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    return-object p0
.end method

.method public isNaturalSwitching()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public performDragStartedHapticAndSound(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 0

    return-void
.end method
