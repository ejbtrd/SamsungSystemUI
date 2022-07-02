.class public interface abstract Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
.super Ljava/lang/Object;
.source "SystemStatusAnimationScheduler.kt"


# virtual methods
.method public onHidePersistentDot()Landroid/animation/Animator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSystemChromeAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onSystemChromeAnimationStart()V
    .locals 0

    return-void
.end method

.method public onSystemChromeAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSystemStatusAnimationTransitionToPersistentDot()Landroid/animation/Animator;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
