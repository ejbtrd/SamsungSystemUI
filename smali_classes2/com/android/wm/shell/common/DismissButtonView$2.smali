.class Lcom/android/wm/shell/common/DismissButtonView$2;
.super Ljava/lang/Object;
.source "DismissButtonView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/common/DismissButtonView;->hide(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/common/DismissButtonView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/common/DismissButtonView;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$2;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/android/wm/shell/common/DismissButtonView;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hide-Run callback"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$2;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$2;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {p1}, Lcom/android/wm/shell/common/DismissButtonView;->access$500(Lcom/android/wm/shell/common/DismissButtonView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView$2;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {p0}, Lcom/android/wm/shell/common/DismissButtonView;->access$500(Lcom/android/wm/shell/common/DismissButtonView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
