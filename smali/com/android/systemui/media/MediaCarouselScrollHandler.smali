.class public final Lcom/android/systemui/media/MediaCarouselScrollHandler;
.super Ljava/lang/Object;
.source "MediaCarouselScrollHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;
    }
.end annotation


# static fields
.field private static final CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private carouselHeight:I

.field private carouselWidth:I

.field private final closeGuts:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentTranslation:F

.field private cornerRadius:I

.field private final dismissCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final falsingManager:Lcom/android/systemui/plugins/FalsingManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private falsingProtectionNeeded:Z

.field private final gestureDetector:Landroidx/core/view/GestureDetectorCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gestureListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logSmartspaceImpression:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mediaContent:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pageIndicator:Lcom/android/systemui/qs/PageIndicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private playerWidthPlusPadding:I

.field private qsExpanded:Z

.field private final scrollChangedListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scrollIntoCurrentMedia:I

.field private final scrollView:Lcom/android/systemui/media/MediaScrollView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private settingsButton:Landroid/view/View;

.field private showsSettingsButton:Z

.field private final touchListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private translationChangedListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private visibleMediaIndex:I

.field private visibleToUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->Companion:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;

    .line 585
    new-instance v0, Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaScrollView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/qs/PageIndicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/classifier/FalsingCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/plugins/FalsingManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/MediaScrollView;",
            "Lcom/android/systemui/qs/PageIndicator;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "scrollView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageIndicator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "translationChangedListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeGuts"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingCollector"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logSmartspaceImpression"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 60
    iput-object p4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->dismissCallback:Lkotlin/jvm/functions/Function0;

    .line 61
    iput-object p5, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->translationChangedListener:Lkotlin/jvm/functions/Function0;

    .line 62
    iput-object p6, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->closeGuts:Lkotlin/jvm/functions/Function1;

    .line 63
    iput-object p7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 64
    iput-object p8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 65
    iput-object p9, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

    .line 153
    new-instance p2, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->gestureListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;

    .line 179
    new-instance p3, Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    iput-object p3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->touchListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;

    .line 187
    new-instance p4, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    iput-object p4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollChangedListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;

    .line 216
    new-instance p5, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p5, p6, p2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p5, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 217
    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaScrollView;->setTouchListener(Lcom/android/systemui/Gefingerpoken;)V

    const/4 p2, 0x2

    .line 218
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 219
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getContentContainer()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    .line 220
    invoke-virtual {p1, p4}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 221
    new-instance p2, Lcom/android/systemui/media/MediaCarouselScrollHandler$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static final synthetic access$getCarouselHeight$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselHeight:I

    return p0
.end method

.method public static final synthetic access$getCarouselWidth$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselWidth:I

    return p0
.end method

.method public static final synthetic access$getCornerRadius$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->cornerRadius:I

    return p0
.end method

.method public static final synthetic access$getDismissCallback$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->dismissCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getFalsingCollector$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method public static final synthetic access$getScrollView$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lcom/android/systemui/media/MediaScrollView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    return-object p0
.end method

.method public static final synthetic access$onFling(Lcom/android/systemui/media/MediaCarouselScrollHandler;FF)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onFling(FF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onInterceptTouch(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onMediaScrollingChanged(Lcom/android/systemui/media/MediaCarouselScrollHandler;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onMediaScrollingChanged(II)V

    return-void
.end method

.method public static final synthetic access$onTouch(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setContentTranslation(Lcom/android/systemui/media/MediaCarouselScrollHandler;F)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setContentTranslation(F)V

    return-void
.end method

.method private final getMaxTranslation()I
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-eqz v0, :cond_1

    .line 341
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "settingsButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 343
    :cond_1
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    :goto_0
    return p0
.end method

.method private final isFalseTouch()Z
    .locals 2

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 338
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final onFling(FF)Z
    .locals 7

    mul-float v0, p1, p1

    float-to-double v1, v0

    float-to-double v3, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    cmpg-double p2, v1, v5

    const/4 v1, 0x0

    if-gez p2, :cond_0

    return v1

    :cond_0
    const p2, 0x49742400    # 1000000.0f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_1

    return v1

    .line 411
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result p2

    const/4 v0, 0x0

    cmpg-float v2, p2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_6

    .line 415
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-nez v2, :cond_3

    move v1, v3

    :cond_3
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isFalseTouch()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 419
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr v0, p2

    .line 422
    iget-boolean p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-nez p2, :cond_5

    .line 423
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    const-wide/16 v4, 0x64

    invoke-interface {p2, v1, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    .line 428
    :cond_5
    :goto_1
    sget-object p2, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    .line 429
    invoke-static {}, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->access$getTranslationConfig$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v2

    .line 428
    invoke-virtual {p2, v1, v0, p1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 430
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaScrollView;->setAnimationTargetX(F)V

    goto :goto_5

    .line 433
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaScrollView;->getRelativeScrollX()I

    move-result p2

    .line 434
    iget v2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    if-lez v2, :cond_7

    div-int/2addr p2, v2

    goto :goto_2

    :cond_7
    move p2, v1

    .line 435
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_8

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    goto :goto_3

    :cond_8
    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    :goto_3
    move p1, v3

    goto :goto_4

    :cond_9
    move p1, v1

    :goto_4
    if-eqz p1, :cond_a

    add-int/lit8 p2, p2, 0x1

    .line 437
    :cond_a
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 438
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 439
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 442
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/View;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_5
    return v3
.end method

.method private final onInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final onMediaScrollingChanged(II)V
    .locals 4

    .line 471
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 472
    :goto_0
    iput p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-eqz p2, :cond_1

    move v1, v2

    .line 474
    :cond_1
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-ne p1, v3, :cond_2

    if-eq v0, v1, :cond_4

    .line 476
    :cond_2
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-eq v3, p1, :cond_3

    .line 477
    iget-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    if-eqz p1, :cond_3

    .line 478
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->closeGuts:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updatePlayerVisibilities()V

    .line 483
    :cond_4
    iget p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    int-to-float p1, p1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    if-lez v0, :cond_5

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    add-float/2addr p1, p2

    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 487
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p1

    int-to-float p1, v2

    sub-float p1, p2, p1

    .line 491
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateClipToOutline()V

    return-void
.end method

.method private final onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 276
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    if-eqz v3, :cond_1

    .line 277
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v3}, Lcom/android/systemui/classifier/FalsingCollector;->onNotificationStopDismissing()V

    .line 279
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v3, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 284
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaScrollView;->cancelCurrentScroll()V

    return v2

    :cond_2
    return v1

    :cond_3
    if-nez v0, :cond_4

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 293
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getRelativeScrollX()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    rem-int/2addr p1, v0

    .line 295
    div-int/lit8 v3, v0, 0x2

    if-le p1, v3, :cond_5

    sub-int/2addr v0, p1

    goto :goto_1

    :cond_5
    mul-int/lit8 v0, p1, -0x1

    :goto_1
    if-eqz v0, :cond_7

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_6

    neg-int v0, v0

    .line 302
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getRelativeScrollX()I

    move-result p1

    add-int/2addr p1, v0

    .line 305
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 309
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    if-nez v3, :cond_d

    .line 313
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_a

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isFalseTouch()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    move v2, v1

    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    move v2, v0

    goto :goto_4

    .line 319
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr v2, p1

    .line 320
    iget-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-nez p1, :cond_c

    .line 323
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$2;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    const-wide/16 v4, 0x64

    invoke-interface {p1, v3, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    .line 328
    :cond_c
    :goto_4
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v3, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    .line 329
    invoke-static {}, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->access$getTranslationConfig$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v4

    .line 328
    invoke-virtual {p1, v3, v2, v0, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 330
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaScrollView;->setAnimationTargetX(F)V

    :cond_d
    return v1
.end method

.method public static synthetic resetTranslation$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 452
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation(Z)V

    return-void
.end method

.method public static synthetic scrollToPlayer$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    .line 572
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToPlayer(II)V

    return-void
.end method

.method private final setContentTranslation(F)V
    .locals 1

    .line 120
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    .line 121
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateSettingsPresentation()V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->translationChangedListener:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateClipToOutline()V

    return-void
.end method

.method private final updateClipToOutline()V
    .locals 3

    .line 466
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 467
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setClipToOutline(Z)V

    return-void
.end method

.method private final updateMediaPaddings()V
    .locals 8

    .line 504
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 507
    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v0

    .line 509
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 510
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    if-eq v7, v3, :cond_1

    .line 511
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 512
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-lt v4, v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private final updatePlayerVisibilities()V
    .locals 8

    .line 518
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 519
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5

    move v4, v2

    :goto_1
    add-int/lit8 v5, v4, 0x1

    .line 520
    iget-object v6, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 521
    iget v7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-eq v4, v7, :cond_2

    add-int/lit8 v7, v7, 0x1

    if-ne v4, v7, :cond_1

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move v4, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_4

    :cond_3
    const/4 v4, 0x4

    .line 522
    :goto_4
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    if-lt v5, v3, :cond_4

    goto :goto_5

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    :goto_5
    return-void
.end method

.method private final updateSettingsPresentation()V
    .locals 10

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string/jumbo v3, "settingsButton"

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_f

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v0

    int-to-float v0, v0

    .line 245
    iget v4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 240
    invoke-static {v5, v0, v5, v6, v4}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    sub-float v4, v6, v0

    .line 246
    iget-object v7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v8

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 250
    iget v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    cmpl-float v8, v8, v5

    if-lez v8, :cond_1

    .line 251
    iget-object v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v7

    iget-object v7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v8, v7

    neg-float v7, v8

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    neg-float v7, v7

    goto :goto_0

    .line 256
    :cond_2
    iget v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    cmpl-float v8, v8, v5

    if-lez v8, :cond_3

    goto :goto_0

    .line 259
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v7

    iget-object v7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v8, v7

    :goto_0
    const/16 v8, 0x32

    int-to-float v8, v8

    mul-float/2addr v4, v8

    .line 263
    iget-object v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v8, :cond_b

    iget v9, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    neg-float v9, v9

    mul-float/2addr v4, v9

    invoke-virtual {v8, v4}, Landroid/view/View;->setRotation(F)V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 264
    invoke-static {v4, v6, v5, v6, v0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    .line 265
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 266
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v4, :cond_9

    cmpg-float v0, v0, v5

    const/4 v5, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v5

    :goto_1
    if-nez v0, :cond_5

    move v1, v5

    :cond_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final getContentTranslation()F
    .locals 0

    .line 118
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    return p0
.end method

.method public final getFalsingProtectionNeeded()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    return p0
.end method

.method public final getPlayerWidthPlusPadding()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    return p0
.end method

.method public final getVisibleMediaIndex()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    return p0
.end method

.method public final isRtl()Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result p0

    return p0
.end method

.method public final onPlayersChanged()V
    .locals 0

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updatePlayerVisibilities()V

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateMediaPaddings()V

    return-void
.end method

.method public final onPrePlayerRemoved(Lcom/android/systemui/media/MediaControlPanel;)V
    .locals 3
    .param p1    # Lcom/android/systemui/media/MediaControlPanel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "removed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 535
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    sub-int/2addr v0, v1

    .line 537
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v1, p1

    :goto_2
    if-eqz v1, :cond_5

    .line 544
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    sub-int/2addr v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_5
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "down"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastMotion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 356
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 358
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    neg-float p2, p2

    float-to-int p2, p2

    invoke-virtual {v4, p2}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    sub-float p2, p1, p3

    .line 360
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    .line 363
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    if-nez v5, :cond_5

    .line 366
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    const v6, 0x3e4ccccd    # 0.2f

    if-lez v5, :cond_4

    mul-float/2addr p3, v6

    sub-float p2, p1, p3

    goto :goto_3

    .line 372
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result p3

    int-to-float p3, p3

    .line 373
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float/2addr p3, v4

    mul-float/2addr p2, p3

    .line 378
    :cond_5
    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p3

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpg-float p1, p3, p1

    if-nez p1, :cond_6

    move p1, v2

    goto :goto_4

    :cond_6
    move p1, v3

    :goto_4
    if-nez p1, :cond_8

    if-nez v1, :cond_7

    move v3, v2

    :cond_7
    if-nez v3, :cond_8

    .line 382
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    float-to-int p3, p2

    neg-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_8

    move p2, v0

    .line 388
    :cond_8
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 390
    sget-object p3, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    .line 391
    invoke-static {}, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->access$getTranslationConfig$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v1

    .line 390
    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    .line 391
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    goto :goto_5

    .line 393
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setContentTranslation(F)V

    .line 395
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/media/MediaScrollView;->setAnimationTargetX(F)V

    return v2
.end method

.method public final onSettingsButtonUpdated(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    const/4 v0, 0x0

    const-string/jumbo v1, "settingsButton"

    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 233
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010571

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->cornerRadius:I

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateSettingsPresentation()V

    .line 235
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    return-void

    .line 233
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final resetTranslation(Z)V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 455
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    .line 456
    invoke-static {}, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->access$getTranslationConfig$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v2

    .line 455
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    .line 456
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 457
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaScrollView;->setAnimationTargetX(F)V

    goto :goto_1

    .line 459
    :cond_1
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 460
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setContentTranslation(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final scrollToPlayer(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    mul-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaScrollView;->setRelativeScrollX(I)V

    .line 576
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 577
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 579
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollToPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollToPlayer$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/View;)V

    const-wide/16 p0, 0x64

    invoke-interface {p2, v0, p0, p1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final scrollToStart()V
    .locals 1

    .line 563
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaScrollView;->setRelativeScrollX(I)V

    return-void
.end method

.method public final setCarouselBounds(II)V
    .locals 1

    .line 552
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselHeight:I

    if-ne p2, v0, :cond_0

    if-eq p1, v0, :cond_1

    .line 553
    :cond_0
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselWidth:I

    .line 554
    iput p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselHeight:I

    .line 555
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    :cond_1
    return-void
.end method

.method public final setFalsingProtectionNeeded(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    return-void
.end method

.method public final setPlayerWidthPlusPadding(I)V
    .locals 2

    .line 132
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 135
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    mul-int/2addr v0, p1

    .line 136
    iget v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-le v1, p1, :cond_0

    sub-int/2addr v1, p1

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    .line 142
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaScrollView;->setRelativeScrollX(I)V

    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    return-void
.end method

.method public final setShowsSettingsButton(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    return-void
.end method

.method public final setVisibleToUser(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    return-void
.end method
