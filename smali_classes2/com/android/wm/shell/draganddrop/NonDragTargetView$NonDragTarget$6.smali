.class Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;
.super Ljava/lang/Object;
.source "NonDragTargetView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$fromScaleX:F

.field final synthetic val$fromScaleY:F

.field final synthetic val$toScaleX:F

.field final synthetic val$toScaleY:F


# direct methods
.method constructor <init>(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;FFFF)V
    .locals 0

    .line 1082
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    iput p2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->val$fromScaleX:F

    iput p3, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->val$toScaleX:F

    iput p4, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->val$fromScaleY:F

    iput p5, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->val$toScaleY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1085
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1086
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->val$fromScaleX:F

    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->val$toScaleX:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1087
    iget v1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->val$fromScaleY:F

    iget v2, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->val$toScaleY:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 1088
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1089
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1090
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1091
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1092
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$600(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 1093
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget$6;->this$1:Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;->access$2800(Lcom/android/wm/shell/draganddrop/NonDragTargetView$NonDragTarget;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidateOutline()V

    return-void
.end method
