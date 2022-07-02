.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$9;
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

    .line 301
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2202(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
