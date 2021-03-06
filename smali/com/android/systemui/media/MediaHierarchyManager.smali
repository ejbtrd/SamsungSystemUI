.class public final Lcom/android/systemui/media/MediaHierarchyManager;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaHierarchyManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/MediaHierarchyManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private animationCrossFadeProgress:F

.field private animationPending:Z

.field private animationStartAlpha:F

.field private animationStartBounds:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private animationStartCrossFadeProgress:F

.field private animator:Landroid/animation/ValueAnimator;

.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private carouselAlpha:F

.field private collapsingShadeFromQS:Z

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private crossFadeAnimationEndLocation:I

.field private crossFadeAnimationStartLocation:I

.field private currentAttachmentLocation:I

.field private currentBounds:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private desiredLocation:I

.field private distanceForFullShadeTransition:I

.field private dozeAnimationRunning:Z

.field private fullShadeTransitionProgress:F

.field private fullyAwake:Z

.field private goingToSleep:Z

.field private isCrossFadeAnimatorRunning:Z

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaHosts:[Lcom/android/systemui/media/MediaHost;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousLocation:I

.field private qsExpanded:Z

.field private qsExpansion:F

.field private rootOverlay:Landroid/view/ViewGroupOverlay;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rootView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startAnimation:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private statusbarState:I

.field private targetBounds:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaHierarchyManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/MediaHierarchyManager;->Companion:Lcom/android/systemui/media/MediaHierarchyManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/policy/KeyguardStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/media/MediaCarouselController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/keyguard/WakefulnessLifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaCarouselController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifLockscreenUserManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wakefulnessLifecycle"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarKeyguardViewManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->context:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 78
    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 79
    iput-object p4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 80
    iput-object p5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    .line 81
    iput-object p6, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 84
    iput-object p9, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 95
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    .line 96
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    .line 120
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    .line 121
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    .line 124
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 125
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 126
    sget-object p4, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    new-instance p4, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 146
    new-instance p4, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$2;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 125
    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    const/4 p3, 0x3

    new-array p3, p3, [Lcom/android/systemui/media/MediaHost;

    .line 169
    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    .line 175
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    .line 180
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 188
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 200
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Ljava/lang/Runnable;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 354
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationCrossFadeProgress:F

    .line 359
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateConfiguration()V

    .line 393
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-interface {p7, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 398
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$2;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 443
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$3;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p8, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 463
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$4;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p5, p1}, Lcom/android/systemui/media/MediaCarouselController;->setUpdateUserVisibility(Lkotlin/jvm/functions/Function0;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$applyTargetStateIfNotAnimating(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    return-void
.end method

.method public static final synthetic access$calculateAlphaFromCrossFade(Lcom/android/systemui/media/MediaHierarchyManager;FZ)F
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateAlphaFromCrossFade(FZ)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAnimationCrossFadeProgress$p(Lcom/android/systemui/media/MediaHierarchyManager;)F
    .locals 0

    .line 74
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationCrossFadeProgress:F

    return p0
.end method

.method public static final synthetic access$getAnimationStartAlpha$p(Lcom/android/systemui/media/MediaHierarchyManager;)F
    .locals 0

    .line 74
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartAlpha:F

    return p0
.end method

.method public static final synthetic access$getAnimationStartBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getAnimationStartCrossFadeProgress$p(Lcom/android/systemui/media/MediaHierarchyManager;)F
    .locals 0

    .line 74
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartCrossFadeProgress:F

    return p0
.end method

.method public static final synthetic access$getAnimator$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getCurrentBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getMediaCarouselController$p(Lcom/android/systemui/media/MediaHierarchyManager;)Lcom/android/systemui/media/MediaCarouselController;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    return-object p0
.end method

.method public static final synthetic access$getRootOverlay$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/view/ViewGroupOverlay;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    return-object p0
.end method

.method public static final synthetic access$getRootView$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/view/View;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getStartAnimation$p(Lcom/android/systemui/media/MediaHierarchyManager;)Ljava/lang/Runnable;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getTargetBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$interpolateBounds(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isCrossFadeAnimatorRunning$p(Lcom/android/systemui/media/MediaHierarchyManager;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    return p0
.end method

.method public static final synthetic access$isHomeScreenShadeVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLockScreenShadeVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLockScreenVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isVisibleToUser()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAnimationCrossFadeProgress$p(Lcom/android/systemui/media/MediaHierarchyManager;F)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationCrossFadeProgress:F

    return-void
.end method

.method public static final synthetic access$setAnimationPending$p(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    return-void
.end method

.method public static final synthetic access$setCrossFadeAnimatorRunning$p(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    return-void
.end method

.method public static final synthetic access$setDozeAnimationRunning(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setDozeAnimationRunning(Z)V

    return-void
.end method

.method public static final synthetic access$setFullyAwake(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setFullyAwake(Z)V

    return-void
.end method

.method public static final synthetic access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setGoingToSleep(Z)V

    return-void
.end method

.method public static final synthetic access$setRootOverlay$p(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/view/ViewGroupOverlay;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    return-void
.end method

.method public static final synthetic access$setRootView$p(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/view/View;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setStatusbarState$p(Lcom/android/systemui/media/MediaHierarchyManager;I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    return-void
.end method

.method public static final synthetic access$updateConfiguration(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateConfiguration()V

    return-void
.end method

.method public static final synthetic access$updateDesiredLocation(Lcom/android/systemui/media/MediaHierarchyManager;ZZ)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(ZZ)V

    return-void
.end method

.method public static final synthetic access$updateTargetState(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    return-void
.end method

.method private final adjustAnimatorForTransition(II)V
    .locals 2

    .line 687
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 688
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 689
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 690
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void
.end method

.method private final applyState(Landroid/graphics/Rect;FZ)V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 838
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyFading()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->setCarouselAlpha(F)V

    .line 839
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyFading()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_3

    const/4 p2, -0x1

    goto :goto_3

    .line 840
    :cond_3
    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    .line 841
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result v0

    .line 842
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->resolveLocationForFading()I

    move-result p1

    .line 843
    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v1, p2, p1, v0, p3}, Lcom/android/systemui/media/MediaCarouselController;->setCurrentState(IIFZ)V

    .line 844
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateHostAttachment()V

    .line 845
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    const/16 p2, -0x3e8

    if-ne p1, p2, :cond_5

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p1

    .line 847
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 848
    iget p3, p0, Landroid/graphics/Rect;->top:I

    .line 849
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 850
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 846
    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    :cond_5
    return-void
.end method

.method static synthetic applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;FZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 836
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState(Landroid/graphics/Rect;FZ)V

    return-void
.end method

.method private final applyTargetStateIfNotAnimating()V
    .locals 7

    .line 711
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;FZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final calculateAlphaFromCrossFade(FZ)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, p0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    div-float/2addr p1, p0

    sub-float/2addr v1, p1

    return v1

    :cond_0
    if-eqz p2, :cond_1

    return v1

    :cond_1
    sub-float/2addr p1, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private final calculateLocation()I
    .locals 7

    .line 931
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getBlockLocationChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    return p0

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 936
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 938
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v3

    .line 940
    iget v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    const/4 v6, 0x2

    if-lez v5, :cond_3

    if-nez v0, :cond_3

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_3
    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    if-eqz v0, :cond_4

    goto :goto_1

    .line 942
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHasActiveMedia()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 943
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransformingToFullShadeAndInQQS()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    move v1, v6

    :cond_7
    :goto_2
    if-ne v1, v6, :cond_9

    .line 949
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 950
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    :cond_9
    if-ne v1, v6, :cond_a

    .line 953
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-nez v0, :cond_a

    .line 954
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eqz v0, :cond_a

    return v2

    :cond_a
    if-eq v1, v6, :cond_b

    .line 958
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v0, v6, :cond_b

    .line 959
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v1
.end method

.method private final cancelAnimationAndApplyDesiredState()V
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 828
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState(Landroid/graphics/Rect;FZ)V

    :goto_0
    return-void
.end method

.method private final createUniqueObjectHost()Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 2

    .line 513
    new-instance v0, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    .line 514
    new-instance v1, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/util/animation/UniqueObjectHostView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method

.method private final getAnimationParams(II)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 699
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-nez p1, :cond_0

    .line 700
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 701
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide p0

    move-wide v2, p0

    :cond_0
    const-wide/16 p0, 0xe0

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    const-wide/16 p0, 0x1d0

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0xc8

    .line 707
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final getBlockLocationChanges()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final getHasActiveMedia()Z
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final getHost(I)Lcom/android/systemui/media/MediaHost;
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 823
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final getMediaFrame()Landroid/view/ViewGroup;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private final getQSTransformationProgress()F
    .locals 3

    .line 807
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    .line 808
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    .line 809
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHasActiveMedia()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 810
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 811
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-eq v0, v2, :cond_5

    .line 812
    :cond_4
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    return p0

    :cond_5
    :goto_2
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private final getTransformationProgress()F
    .locals 3

    .line 796
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getQSTransformationProgress()F

    move-result v0

    .line 797
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    return v0

    .line 800
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullShadeTransitionProgress:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private final interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 750
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    .line 751
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 750
    invoke-static {p0, v0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    .line 752
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 753
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 752
    invoke-static {v0, v1, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 754
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 755
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 754
    invoke-static {v1, v2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 756
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 757
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    .line 756
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    if-nez p4, :cond_0

    .line 758
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 759
    :cond_0
    invoke-virtual {p4, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p4
.end method

.method static synthetic interpolateBounds$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 744
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final isCurrentlyFading()Z
    .locals 1

    .line 982
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 985
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    return p0
.end method

.method private final isCurrentlyInGuidedTransformation()Z
    .locals 1

    .line 767
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isHomeScreenShadeVisibleToUser()Z
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isLockScreenShadeVisibleToUser()Z
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final isLockScreenVisibleToUser()Z
    .locals 2

    .line 997
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final isTransformingToFullShadeAndInQQS()Z
    .locals 2

    .line 972
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 975
    :cond_0
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullShadeTransitionProgress:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final isTransitionRunning()Z
    .locals 4

    .line 925
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private final isTransitioningToFullShade()Z
    .locals 3

    .line 275
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullShadeTransitionProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private final isVisibleToUser()Z
    .locals 1

    .line 992
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 993
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final performTransitionToNewLocation(ZZ)V
    .locals 6

    .line 576
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    if-ltz v0, :cond_e

    if-eqz p1, :cond_0

    goto/16 :goto_7

    .line 580
    :cond_0
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object p1

    .line 581
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-eqz p1, :cond_d

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 586
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    .line 587
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 588
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    goto/16 :goto_5

    :cond_2
    if-eqz p2, :cond_b

    .line 590
    iget-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 591
    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationCrossFadeProgress:F

    .line 592
    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 593
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    if-ne v1, v2, :cond_4

    .line 594
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 602
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 598
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 604
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateTransformationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 608
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    .line 610
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    iget v5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    if-ne p1, v5, :cond_6

    if-eqz v0, :cond_9

    sub-float p2, v4, p2

    goto :goto_3

    .line 620
    :cond_6
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    .line 621
    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne p1, v2, :cond_7

    sub-float p2, v4, p2

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    .line 633
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    sub-float/2addr v4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float p2, v4, p1

    goto :goto_3

    :cond_9
    move p2, v2

    :goto_3
    move p1, v3

    .line 635
    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 636
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    .line 637
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    .line 638
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    iput v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartAlpha:F

    .line 639
    iput p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartCrossFadeProgress:F

    .line 640
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/media/MediaHierarchyManager;->adjustAnimatorForTransition(II)V

    .line 641
    iget-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-nez p1, :cond_c

    .line 642
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    if-nez p1, :cond_a

    goto :goto_5

    .line 644
    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    .line 645
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 649
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    :cond_c
    :goto_5
    return-void

    .line 583
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    return-void

    .line 577
    :cond_e
    :goto_7
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    return-void
.end method

.method private final resolveLocationForFading()I
    .locals 4

    .line 912
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz v0, :cond_2

    .line 915
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationCrossFadeProgress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    return p0

    .line 916
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    return p0

    .line 921
    :cond_2
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    return p0
.end method

.method private final setCarouselAlpha(F)V
    .locals 1

    .line 361
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 364
    :cond_1
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    return-void
.end method

.method private final setDozeAnimationRunning(Z)V
    .locals 2

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eq v0, p1, :cond_0

    .line 341
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-nez p1, :cond_0

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 343
    invoke-static {p0, v1, v1, p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final setFullShadeTransitionProgress(F)V
    .locals 5

    .line 246
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullShadeTransitionProgress:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 249
    :cond_1
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullShadeTransitionProgress:F

    .line 250
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 255
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyFading()Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v3, v4}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    .line 259
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullShadeTransitionProgress:F

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateAlphaFromCrossFade(FZ)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setCarouselAlpha(F)V

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final setFullyAwake(Z)V
    .locals 3

    .line 327
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-eq v0, p1, :cond_0

    .line 328
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 330
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final setGoingToSleep(Z)V
    .locals 2

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-eq v0, p1, :cond_0

    .line 315
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-nez p1, :cond_0

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 317
    invoke-static {p0, v1, v1, p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final shouldAnimateTransition(II)Z
    .locals 4

    .line 657
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 663
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v3, v0, :cond_1

    .line 664
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-nez v3, :cond_1

    return v1

    :cond_1
    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_3

    .line 670
    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v3

    if-nez v3, :cond_2

    .line 671
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne v3, v2, :cond_3

    :cond_2
    return v0

    .line 677
    :cond_3
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne v3, v0, :cond_5

    if-eq p1, v2, :cond_4

    if-ne p2, v2, :cond_5

    :cond_4
    return v1

    .line 683
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManagerKt;->isShownNotFaded(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-eqz p0, :cond_7

    :cond_6
    move v1, v0

    :cond_7
    return v1
.end method

.method private final updateConfiguration()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 470
    sget v1, Lcom/android/systemui/R$dimen;->lockscreen_shade_media_transition_distance:I

    .line 469
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->distanceForFullShadeTransition:I

    return-void
.end method

.method private final updateDesiredLocation(ZZ)V
    .locals 9

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateLocation()I

    move-result v1

    .line 542
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v1, v0, :cond_0

    if-eqz p2, :cond_a

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    if-eq v1, v0, :cond_1

    .line 545
    iput v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    .line 547
    iget-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 548
    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-eq p2, v3, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    :cond_2
    move p2, v3

    goto :goto_0

    :cond_3
    move p2, v2

    :goto_0
    if-nez v1, :cond_4

    .line 550
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    if-nez p2, :cond_4

    .line 554
    iput v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    .line 557
    :cond_4
    :goto_1
    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    move p2, v3

    goto :goto_2

    :cond_5
    move p2, v2

    .line 558
    :goto_2
    iput v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-nez p1, :cond_6

    .line 561
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->shouldAnimateTransition(II)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_3

    :cond_6
    move p1, v2

    .line 562
    :goto_3
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 563
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v8

    .line 564
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateTransformationType()I

    move-result v0

    if-ne v0, v3, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_8

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    .line 568
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    move-object v2, v8

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V

    .line 571
    :cond_9
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->performTransitionToNewLocation(ZZ)V

    :cond_a
    return-void
.end method

.method static synthetic updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 537
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(ZZ)V

    return-void
.end method

.method private final updateHostAttachment()V
    .locals 13

    .line 855
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->resolveLocationForFading()I

    move-result v0

    .line 856
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyFading()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 857
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz v3, :cond_3

    .line 858
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 859
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 860
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 866
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitionRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    const/16 v0, -0x3e8

    :cond_5
    move v4, v0

    .line 868
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    if-eq v0, v4, :cond_8

    .line 869
    iput v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 872
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_3
    if-eqz v2, :cond_7

    .line 876
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_4

    .line 878
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    .line 882
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 883
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    .line 884
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    .line 885
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v2

    .line 888
    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v1

    .line 889
    iget-object v5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v0

    .line 885
    invoke-virtual {v2, v1, v0, v3, v5}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    .line 891
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz v0, :cond_8

    .line 897
    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    .line 899
    invoke-direct {p0, v4}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    .line 897
    invoke-static/range {v3 .. v12}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged$default(Lcom/android/systemui/media/MediaCarouselController;ILcom/android/systemui/media/MediaHostState;ZJJILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private final updateTargetState()V
    .locals 8

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyFading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 724
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result v4

    .line 725
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 726
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 730
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 732
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    .line 735
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 736
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    .line 737
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 739
    :cond_2
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    return-void

    .line 740
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final calculateTransformationType()I
    .locals 4

    .line 776
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 779
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-eqz v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    .line 780
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v3, v2, :cond_3

    :cond_2
    return v1

    :cond_3
    if-ne v0, v2, :cond_4

    .line 784
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne p0, v1, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final closeGuts()V
    .locals 0

    return-void
.end method

.method public final getQsExpanded()Z
    .locals 0

    .line 220
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    return p0
.end method

.method public final register(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 4
    .param p1    # Lcom/android/systemui/media/MediaHost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mediaObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->createUniqueObjectHost()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    .line 481
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaHost;->setHostView(Lcom/android/systemui/util/animation/UniqueObjectHostView;)V

    .line 482
    new-instance v1, Lcom/android/systemui/media/MediaHierarchyManager$register$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$register$1;-><init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/media/MediaHost;->addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 490
    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v2

    aput-object p1, v1, v2

    .line 491
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    .line 494
    iput v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result p1

    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    if-ne p1, v1, :cond_1

    .line 497
    iput v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    :cond_1
    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 499
    invoke-static {p0, v2, v2, p1, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V

    return-object v0
.end method

.method public final setCollapsingShadeFromQS(Z)V
    .locals 3

    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eq v0, p1, :cond_0

    .line 296
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 297
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    if-eq v0, p1, :cond_0

    .line 223
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    .line 224
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setQsExpanded(Z)V

    :cond_0
    if-eqz p1, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isVisibleToUser()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setVisibleToUser(Z)V

    return-void
.end method

.method public final setQsExpansion(F)V
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 208
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 209
    invoke-static {p0, v1, v1, p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getQSTransformationProgress()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    :cond_1
    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 1

    .line 285
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->distanceForFullShadeTransition:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    .line 286
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setFullShadeTransitionProgress(F)V

    return-void
.end method
