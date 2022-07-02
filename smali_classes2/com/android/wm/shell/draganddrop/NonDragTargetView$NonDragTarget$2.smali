.class Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;
.super Ljava/lang/Object;
.source "NonDragTargetView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$startBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$startBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1003
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1004
    sget-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$startBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {v2}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$1100(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1005
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1006
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1007
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1008
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1009
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2900(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/widget/ImageView;)V

    .line 1012
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$2;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2900(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;Landroid/widget/ImageView;)V

    return-void
.end method
