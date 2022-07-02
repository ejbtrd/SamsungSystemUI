.class Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NonDragTargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->startTransition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$7;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1099
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1100
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$7;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1302(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1101
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$7;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$3300(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1102
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$7;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$3302(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Z)Z

    :cond_0
    return-void
.end method
