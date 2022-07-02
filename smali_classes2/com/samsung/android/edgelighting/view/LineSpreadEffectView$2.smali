.class Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$2;
.super Ljava/lang/Object;
.source "LineSpreadEffectView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->startLineEffect(IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$index"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    iput p2, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$2;->val$index:I

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

    .line 136
    iget p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$2;->val$index:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$2;->this$0:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

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
