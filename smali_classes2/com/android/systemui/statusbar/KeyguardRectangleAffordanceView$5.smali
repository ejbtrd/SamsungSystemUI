.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardRectangleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1002(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 265
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mFling:Z

    .line 266
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1200(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 269
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    return-void
.end method
