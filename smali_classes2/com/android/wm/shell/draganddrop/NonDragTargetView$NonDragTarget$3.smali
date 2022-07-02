.class Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NonDragTargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->animate(Landroid/graphics/Rect;)V
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

    .line 1015
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$3;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1018
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$3;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$3002(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
