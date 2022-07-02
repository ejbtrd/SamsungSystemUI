.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;
.super Ljava/lang/Object;
.source "NotificationShadeDepthController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShadeDepthController;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/Choreographer;Landroid/app/WallpaperManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dump/DumpManager;Landroid/content/res/Resources;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardFadingAwayChanged()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getKeyguardStateController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBiometricUnlockController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getKeyguardAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 329
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getDozeParameters$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperFadeOutDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 330
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getKeyguardStateController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 331
    sget-object v2, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 332
    new-instance v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$1$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    new-instance v2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$1$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$1$2;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 343
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 325
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setKeyguardAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/animation/Animator;)V

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onKeyguardShowingChanged()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getKeyguardStateController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getKeyguardAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 349
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getNotificationAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/animation/Animator;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    :goto_1
    return-void
.end method
