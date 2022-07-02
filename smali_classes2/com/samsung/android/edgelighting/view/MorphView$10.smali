.class Lcom/samsung/android/edgelighting/view/MorphView$10;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/MorphView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$reverse"
        }
    .end annotation

    .line 848
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$10;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iput-boolean p2, p0, Lcom/samsung/android/edgelighting/view/MorphView$10;->val$reverse:Z

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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 860
    iget-boolean p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$10;->val$reverse:Z

    if-nez p1, :cond_0

    .line 861
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$10;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$200(Lcom/samsung/android/edgelighting/view/MorphView;)Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 862
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$10;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$200(Lcom/samsung/android/edgelighting/view/MorphView;)Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;->onFinishAnimation()V

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

    .line 851
    iget-boolean p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$10;->val$reverse:Z

    if-nez p1, :cond_0

    .line 852
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$10;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$200(Lcom/samsung/android/edgelighting/view/MorphView;)Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 853
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$10;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$200(Lcom/samsung/android/edgelighting/view/MorphView;)Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;->onStartAnimation()V

    :cond_0
    return-void
.end method
