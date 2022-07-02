.class Lcom/samsung/android/edgelighting/view/MorphView$6;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;->changeNotificationWidth(JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/MorphView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/MorphView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$6;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueAnimator"
        }
    .end annotation

    .line 777
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 778
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$6;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$600(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 779
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$6;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$600(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method
