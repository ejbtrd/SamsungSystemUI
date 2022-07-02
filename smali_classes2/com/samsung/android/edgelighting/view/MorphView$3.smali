.class Lcom/samsung/android/edgelighting/view/MorphView$3;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;->changeNotiText(FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/MorphView;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/MorphView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$value"
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iput p2, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 625
    iget p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->val$value:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 626
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$700(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 617
    iget p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->val$value:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 618
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$700(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 619
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$700(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method
