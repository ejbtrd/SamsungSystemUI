.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$7;
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

    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 283
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mFling:Z

    .line 284
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object v1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1500(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v2

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1600(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZZ)V

    .line 285
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    .line 286
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1802(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
