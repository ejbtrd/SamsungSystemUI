.class public final synthetic Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$3:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p5, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$4:F

    iput p6, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$5:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$3:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$4:F

    iget v5, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda1;->f$5:F

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/draganddrop/DragTargetView;->$r8$lambda$pMfnk9DNpA7l2LIO01tIOzisovk(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
