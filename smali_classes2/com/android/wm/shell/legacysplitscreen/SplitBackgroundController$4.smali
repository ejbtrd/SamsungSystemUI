.class Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SplitBackgroundController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->updateBackgroundLayerWithAlphaAnimation(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

.field final synthetic val$st:Landroid/view/SurfaceControl$Transaction;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$visible:Z

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$st:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 355
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$visible:Z

    if-eqz p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$st:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$900(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$st:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$900(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 360
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$st:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 361
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$1102(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 343
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$visible:Z

    if-nez p1, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$st:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$900(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Landroid/view/SurfaceControl;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$100(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_1
    const v1, 0x3f19999a    # 0.6f

    .line 345
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 348
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$st:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$900(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$1000(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 349
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$st:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->this$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->access$900(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 350
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$4;->val$st:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
