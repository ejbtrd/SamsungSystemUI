.class abstract Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$CustomAnimatorListenerAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardTouchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CustomAnimatorListenerAdapter"
.end annotation


# instance fields
.field private isCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 632
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCancelled()Z
    .locals 0

    .line 633
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$CustomAnimatorListenerAdapter;->isCancelled:Z

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$CustomAnimatorListenerAdapter;->isCancelled:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 637
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$CustomAnimatorListenerAdapter;->isCancelled:Z

    return-void
.end method
