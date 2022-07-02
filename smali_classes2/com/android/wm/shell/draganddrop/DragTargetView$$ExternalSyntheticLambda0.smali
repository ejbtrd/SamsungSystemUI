.class public final synthetic Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

.field public final synthetic f$1:Landroid/graphics/Point;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/graphics/Point;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Point;

    iput p3, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/DragTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragTargetView$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/draganddrop/DragTargetView;->$r8$lambda$llcep6NLEgIghPqlAwvh1tUoXEY(Lcom/android/wm/shell/draganddrop/DragTargetView;Landroid/graphics/Point;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
