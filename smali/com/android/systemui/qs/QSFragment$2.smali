.class Lcom/android/systemui/qs/QSFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFragment;->animateHeaderSlidingOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$2;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 927
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment$2;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 930
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment$2;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 932
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment$2;->this$0:Lcom/android/systemui/qs/QSFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSFragment;->access$402(Lcom/android/systemui/qs/QSFragment;Z)Z

    .line 933
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$2;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFragment;->access$500(Lcom/android/systemui/qs/QSFragment;)V

    return-void
.end method
