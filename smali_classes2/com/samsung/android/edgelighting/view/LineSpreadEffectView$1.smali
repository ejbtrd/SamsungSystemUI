.class Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$1;
.super Ljava/lang/Object;
.source "LineSpreadEffectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 121
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    iput p2, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;->access$000(Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;)[F

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    aput p1, v0, v1

    .line 125
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/LineSpreadEffectView$1;->this$0:Lcom/samsung/android/edgelighting/view/LineSpreadEffectView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
