.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$setFullScreenMode$1$1;
.super Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$CustomAnimatorListenerAdapter;
.source "KeyguardTouchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->setFullScreenMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;


# direct methods
.method constructor <init>(ZLcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$setFullScreenMode$1$1;->$enabled:Z

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$setFullScreenMode$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$CustomAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$setFullScreenMode$1$1;->$enabled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$CustomAnimatorListenerAdapter;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$setFullScreenMode$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->access$setFullScreenModeShown$p(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Z)V

    :cond_0
    return-void
.end method
