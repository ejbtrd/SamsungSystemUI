.class Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$6;
.super Ljava/lang/Object;
.source "DividerResizeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startBoundsAnimation(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

.field final synthetic val$startBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;)V
    .locals 0

    .line 1163
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$6;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$6;->val$startBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1165
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1166
    sget-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$6;->val$startBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$6;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-static {v2}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$2500(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1167
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$6;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-static {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$2600(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;)V

    return-void
.end method
