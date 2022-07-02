.class Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$5;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 989
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 990
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$5;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->access$2302(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 991
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget$5;->this$1:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    const-string/jumbo p1, "outlineInsetsAnimator"

    invoke-static {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$400(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;Ljava/lang/String;)V

    return-void
.end method
