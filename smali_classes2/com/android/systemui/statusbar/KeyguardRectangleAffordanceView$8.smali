.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$8;
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

    .line 290
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$8;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 293
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$8;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1902(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 294
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$8;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2002(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    .line 295
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$8;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$8;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->reset()V

    :cond_0
    return-void
.end method
