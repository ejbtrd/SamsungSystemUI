.class public final Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;
.super Ljava/lang/Object;
.source "KeyguardUnlockAnimationController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field private attemptedSmartSpaceTransitionForThisSwipe:Z

.field private final featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardViewMediator:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private roundedCornerRadius:F

.field private final smartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private surfaceBehindAlpha:F

.field private surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

.field private final surfaceBehindMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private surfaceBehindRemoteAnimationStartTime:J

.field private surfaceBehindRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private surfaceTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private unlockingWithSmartSpaceTransition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/policy/KeyguardStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/keyguard/KeyguardViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/FeatureFlags;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardViewMediator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardViewController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "smartspaceTransitionController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 91
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 92
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 93
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->smartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    .line 94
    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 120
    iput p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    const/4 p3, 0x2

    new-array p4, p3, [F

    .line 121
    fill-array-data p4, :array_0

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 129
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    new-array p3, p3, [F

    .line 135
    fill-array-data p3, :array_1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

    .line 156
    iget-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p5, 0x96

    invoke-virtual {p4, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    iget-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object p5, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    iget-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    iget-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$2;

    invoke-direct {p5, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$2;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p4, 0x1c2

    .line 173
    invoke-virtual {p3, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    sget-object p4, Lcom/android/systemui/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    new-instance p4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$3;

    invoke-direct {p4, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$3;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 179
    new-instance p4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$4;

    invoke-direct {p4, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$4;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 187
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10502b8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 189
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->roundedCornerRadius:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$getKeyguardViewMediator$p(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)Ldagger/Lazy;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getSurfaceBehindAlpha$p(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)F
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    return p0
.end method

.method public static final synthetic access$setSurfaceBehindAlpha$p(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;F)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    return-void
.end method

.method public static final synthetic access$setSurfaceBehindAppearAmount(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;F)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setSurfaceBehindAppearAmount(F)V

    return-void
.end method

.method public static final synthetic access$updateSurfaceBehindAppearAmount(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->updateSurfaceBehindAppearAmount()V

    return-void
.end method

.method private final fadeInSurfaceBehind()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 420
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final fadeOutSurfaceBehind()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 425
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method private final setSurfaceBehindAppearAmount(F)V
    .locals 7

    .line 263
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3d4cccd0    # 0.050000012f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 270
    invoke-static {p1, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    .line 273
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    .line 276
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    int-to-float v0, v0

    const v6, 0x3f28f5c3    # 0.66f

    mul-float/2addr v6, v0

    .line 273
    invoke-virtual {v1, v5, v5, v2, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v2

    sub-float/2addr v4, p1

    mul-float/2addr v0, v4

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 285
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isSnappingKeyguardBackAfterSwipe()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    .line 288
    :goto_0
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 289
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 288
    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 290
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    .line 291
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->roundedCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    .line 294
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method private final updateKeyguardViewMediatorIfThresholdsReached()V
    .locals 5

    .line 351
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewKeyguardSwipeAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getDismissAmount()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isDismissingFromSwipe()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isFlingingToDismissKeyguardDuringSwipeGesture()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_3

    .line 367
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    move-result v4

    if-nez v4, :cond_3

    .line 370
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showSurfaceBehindKeyguard()V

    .line 371
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->fadeInSurfaceBehind()V

    goto :goto_2

    :cond_3
    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideSurfaceBehindKeyguard()V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->fadeOutSurfaceBehind()V

    goto :goto_2

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 379
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 381
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onKeyguardExitRemoteAnimationFinished(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final updateSmartSpaceTransition()V
    .locals 5

    .line 391
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isSmartSpaceSharedElementTransitionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getDismissAmount()F

    move-result v0

    .line 398
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->attemptedSmartSpaceTransitionForThisSwipe:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->attemptedSmartSpaceTransitionForThisSwipe:Z

    .line 404
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->smartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->prepareForUnlockTransition()V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canPerformSmartSpaceTransition()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 406
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->unlockingWithSmartSpaceTransition:Z

    .line 407
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->smartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLauncherSmartspace()Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;->setVisibility(I)V

    goto :goto_2

    .line 410
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->attemptedSmartSpaceTransitionForThisSwipe:Z

    if-eqz v1, :cond_7

    cmpg-float v1, v0, v3

    const/4 v3, 0x0

    if-nez v1, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    if-nez v1, :cond_5

    cmpg-float v0, v0, v2

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-eqz v4, :cond_7

    .line 412
    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->attemptedSmartSpaceTransitionForThisSwipe:Z

    .line 413
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->unlockingWithSmartSpaceTransition:Z

    .line 414
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->smartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLauncherSmartspace()Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {p0, v3}, Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private final updateSurfaceBehindAppearAmount()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isFlingingToDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getDismissAmount()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setSurfaceBehindAppearAmount(F)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isDismissingFromSwipe()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isSnappingKeyguardBackAfterSwipe()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x3e4cccce    # 0.20000002f

    .line 317
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getDismissAmount()F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 319
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setSurfaceBehindAppearAmount(F)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final hideKeyguardViewAfterRemoteAnimation()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    iget-wide v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationStartTime:J

    const-wide/16 v3, 0x15e

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardViewController;->hide(JJ)V

    return-void
.end method

.method public final isUnlockingWithSmartSpaceTransition()Z
    .locals 0

    .line 244
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->unlockingWithSmartSpaceTransition:Z

    return p0
.end method

.method public final notifyFinishedKeyguardExitAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-void
.end method

.method public final notifyStartKeyguardExitAnimation(Landroid/view/RemoteAnimationTarget;JZ)V
    .locals 2
    .param p1    # Landroid/view/RemoteAnimationTarget;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 213
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 217
    iput-wide p2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationStartTime:J

    if-nez p4, :cond_1

    .line 222
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    const-wide/16 v0, 0x15e

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/android/keyguard/KeyguardViewController;->hide(JJ)V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public onKeyguardDismissAmountChanged()V
    .locals 1

    .line 324
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->updateKeyguardViewMediatorIfThresholdsReached()V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->updateSurfaceBehindAppearAmount()V

    .line 342
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->updateSmartSpaceTransition()V

    return-void
.end method
