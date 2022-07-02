.class final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;
.super Ljava/lang/Object;
.source "ToggleRangeBehavior.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $gestureDetector:Landroid/view/GestureDetector;

.field final synthetic $gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$CustomToggleRangeGestureListener;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;


# direct methods
.method constructor <init>(Landroid/view/GestureDetector;Lcom/android/systemui/controls/ui/ToggleRangeBehavior$CustomToggleRangeGestureListener;Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureDetector:Landroid/view/GestureDetector;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$CustomToggleRangeGestureListener;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {p2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->access$initialize$updateInProgress(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$CustomToggleRangeGestureListener;

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$CustomToggleRangeGestureListener;->isDragging()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 100
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$CustomToggleRangeGestureListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$CustomToggleRangeGestureListener;->setDragging(Z)V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->endUpdateRange()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string p0, "ControlsUiController"

    const-string p1, "Touch action occurred during view updating."

    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method
