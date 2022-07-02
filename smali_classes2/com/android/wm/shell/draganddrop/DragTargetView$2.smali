.class Lcom/android/wm/shell/draganddrop/DragTargetView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragTargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/draganddrop/DragTargetView;->animateBoundsMove(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;JF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragTargetView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/draganddrop/DragTargetView;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$2;->this$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 512
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 513
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$2;->this$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/wm/shell/draganddrop/DragTargetView;->access$102(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 514
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$2;->this$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/DragTargetView;->access$200(Lcom/android/wm/shell/draganddrop/DragTargetView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 515
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$2;->this$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/DragTargetView;->access$202(Lcom/android/wm/shell/draganddrop/DragTargetView;Z)Z

    :cond_0
    return-void
.end method
