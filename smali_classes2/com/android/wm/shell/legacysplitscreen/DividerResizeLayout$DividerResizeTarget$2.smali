.class Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$2;
.super Ljava/lang/Object;
.source "DividerResizeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startBlurAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$2;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 934
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 935
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$2;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$1800(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 936
    sget-boolean v0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v0, :cond_0

    .line 937
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$2;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$1900(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method
