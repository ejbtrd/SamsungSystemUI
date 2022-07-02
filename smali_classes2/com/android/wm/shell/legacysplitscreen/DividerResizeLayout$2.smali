.class Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->startWindowHideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 532
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 533
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$302(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 534
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$2;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    const-string p1, "alphaAnimator"

    invoke-static {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$400(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;Ljava/lang/String;)V

    return-void
.end method
