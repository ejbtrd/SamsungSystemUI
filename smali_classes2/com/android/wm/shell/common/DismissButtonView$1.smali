.class Lcom/android/wm/shell/common/DismissButtonView$1;
.super Ljava/lang/Object;
.source "DismissButtonView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/common/DismissButtonView;->init()V
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

    .line 100
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {p1}, Lcom/android/wm/shell/common/DismissButtonView;->access$300(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 114
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 103
    sget-boolean p1, Lcom/android/wm/shell/CoreShellRune;->MW_SUPPORT_EXTRA_STABLE_INSETS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {p1}, Lcom/android/wm/shell/common/DismissButtonView;->access$000(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {p1}, Lcom/android/wm/shell/common/DismissButtonView;->access$200(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {v0}, Lcom/android/wm/shell/common/DismissButtonView;->access$100(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {p1}, Lcom/android/wm/shell/common/DismissButtonView;->access$200(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {v0}, Lcom/android/wm/shell/common/DismissButtonView;->access$000(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 106
    iget-object p1, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {p1}, Lcom/android/wm/shell/common/DismissButtonView;->access$200(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-static {v1}, Lcom/android/wm/shell/common/DismissButtonView;->access$200(Lcom/android/wm/shell/common/DismissButtonView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissButtonView$1;->this$0:Lcom/android/wm/shell/common/DismissButtonView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    int-to-float p0, v0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setX(F)V

    :cond_0
    return-void
.end method
