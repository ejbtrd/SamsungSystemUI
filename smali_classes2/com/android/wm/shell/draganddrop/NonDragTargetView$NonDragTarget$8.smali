.class Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;
.super Ljava/lang/Object;
.source "NonDragTargetView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->startOutlineInsetsAnimationIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

.field final synthetic val$fromOutlineInset:Landroid/graphics/Rect;

.field final synthetic val$isFirstTransition:Z

.field final synthetic val$toOutlineInset:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->val$fromOutlineInset:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->val$toOutlineInset:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->val$isFirstTransition:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1163
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1164
    sget-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->val$fromOutlineInset:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->val$toOutlineInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1165
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1700(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1166
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 1167
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 1168
    iget-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->val$isFirstTransition:Z

    if-nez p1, :cond_0

    .line 1169
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2900(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/widget/ImageView;)V

    .line 1170
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$8;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2900(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
