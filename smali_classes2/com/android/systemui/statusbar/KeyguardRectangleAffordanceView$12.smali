.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$12;
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

    .line 323
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$12;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 326
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$12;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2502(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 327
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$12;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mFling:Z

    return-void
.end method
