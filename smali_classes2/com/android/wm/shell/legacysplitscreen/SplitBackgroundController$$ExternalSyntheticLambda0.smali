.class public final synthetic Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;->$r8$lambda$bdfX4DxgAozeQT3eo9jwrHCusvM(Lcom/android/wm/shell/legacysplitscreen/SplitBackgroundController;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method
