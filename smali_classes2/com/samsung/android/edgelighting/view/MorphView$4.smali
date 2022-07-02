.class Lcom/samsung/android/edgelighting/view/MorphView$4;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;->disappear(J)V
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

    .line 657
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$4;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

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
            "animator"
        }
    .end annotation

    .line 671
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$4;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 665
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$4;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->reset()V

    .line 666
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$4;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
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
            "animator"
        }
    .end annotation

    return-void
.end method
