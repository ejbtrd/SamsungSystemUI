.class Lcom/android/systemui/qs/QSFragment$1;
.super Ljava/lang/Object;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/qs/bar/BarController$BarItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 313
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarHeightChanged()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->initLasExpansionHeight()V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFragment;->access$000(Lcom/android/systemui/qs/QSFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFragment;->access$100(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/plugins/qs/QS$HeightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFragment;->access$100(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/plugins/qs/QS$HeightListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsMinHeightChanged()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFragment;->access$200(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 321
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFragment;->access$200(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->updateAnimators()V

    :cond_1
    return-void
.end method

.method public onBarVisibilityChanged()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFragment;->access$300(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/QSContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFragment;->access$200(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$1;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFragment;->access$200(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->updateAnimators()V

    :cond_0
    return-void
.end method
