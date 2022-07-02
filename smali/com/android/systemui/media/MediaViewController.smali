.class public final Lcom/android/systemui/media/MediaViewController;
.super Ljava/lang/Object;
.source "MediaViewController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaViewController$TYPE;,
        Lcom/android/systemui/media/MediaViewController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaViewController.kt\ncom/android/systemui/media/MediaViewController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,542:1\n1819#2,2:543\n1819#2,2:545\n1819#2,2:547\n1819#2,2:549\n1#3:551\n*E\n*S KotlinDebug\n*F\n+ 1 MediaViewController.kt\ncom/android/systemui/media/MediaViewController\n*L\n261#1,2:543\n268#1,2:545\n273#1,2:547\n280#1,2:549\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/MediaViewController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GUTS_ANIMATION_DURATION:J


# instance fields
.field private animateNextStateChange:Z

.field private animationDelay:J

.field private animationDuration:J

.field private final collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentEndLocation:I

.field private currentHeight:I

.field private currentStartLocation:I

.field private currentTransitionProgress:F

.field private currentWidth:I

.field private final expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private firstRefresh:Z

.field private isGutsVisible:Z

.field private final layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final measurement:Lcom/android/systemui/util/animation/MeasurementOutput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldHideGutsSettings:Z

.field public sizeChangedListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final stateCallback:Lcom/android/systemui/media/MediaHostStatesManager$Callback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpKey:Lcom/android/systemui/media/CacheKey;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpState:Lcom/android/systemui/util/animation/TransitionViewState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Lcom/android/systemui/media/MediaViewController$TYPE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/media/CacheKey;",
            "Lcom/android/systemui/util/animation/TransitionViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/MediaViewController;->Companion:Lcom/android/systemui/media/MediaViewController$Companion;

    const-wide/16 v0, 0x1f4

    .line 47
    sput-wide v0, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/MediaHostStatesManager;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaHostStatesManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHostStatesManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    .line 56
    new-instance p1, Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-direct {p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 60
    new-instance v0, Lcom/android/systemui/util/animation/MeasurementOutput;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 61
    sget-object v0, Lcom/android/systemui/media/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->type:Lcom/android/systemui/media/MediaViewController$TYPE;

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 79
    iput v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    .line 89
    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 94
    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 99
    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 104
    new-instance v0, Lcom/android/systemui/media/CacheKey;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/CacheKey;-><init>(IIFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->tmpKey:Lcom/android/systemui/media/CacheKey;

    .line 138
    new-instance v0, Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaViewController$configurationListener$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    .line 156
    new-instance v1, Lcom/android/systemui/media/MediaViewController$stateCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaViewController$stateCallback$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->stateCallback:Lcom/android/systemui/media/MediaHostStatesManager$Callback;

    .line 174
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 180
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 194
    invoke-virtual {p3, p0}, Lcom/android/systemui/media/MediaHostStatesManager;->addController(Lcom/android/systemui/media/MediaViewController;)V

    .line 195
    new-instance p3, Lcom/android/systemui/media/MediaViewController$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/MediaViewController$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setSizeChangedListener(Lkotlin/jvm/functions/Function2;)V

    .line 200
    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getCurrentStartLocation$p(Lcom/android/systemui/media/MediaViewController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    return p0
.end method

.method public static final synthetic access$getCurrentTransitionProgress$p(Lcom/android/systemui/media/MediaViewController;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    return p0
.end method

.method public static final synthetic access$getTransitionLayout$p(Lcom/android/systemui/media/MediaViewController;)Lcom/android/systemui/util/animation/TransitionLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    return-object p0
.end method

.method private final constraintSetForExpansion(F)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 253
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_0
    return-object p0
.end method

.method private final ensureAllMeasurements()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getKey(Lcom/android/systemui/media/MediaHostState;ZLcom/android/systemui/media/CacheKey;)Lcom/android/systemui/media/CacheKey;
    .locals 1

    .line 347
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result p0

    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/media/CacheKey;->setHeightMeasureSpec(I)V

    .line 348
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v0

    :goto_1
    invoke-virtual {p3, v0}, Lcom/android/systemui/media/CacheKey;->setWidthMeasureSpec(I)V

    .line 349
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/systemui/media/CacheKey;->setExpansion(F)V

    .line 350
    invoke-virtual {p3, p2}, Lcom/android/systemui/media/CacheKey;->setGutsVisible(Z)V

    return-object p3
.end method

.method private final obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 295
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 299
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->tmpKey:Lcom/android/systemui/media/CacheKey;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/media/MediaViewController;->getKey(Lcom/android/systemui/media/MediaHostState;ZLcom/android/systemui/media/CacheKey;)Lcom/android/systemui/media/CacheKey;

    move-result-object v3

    .line 300
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/TransitionViewState;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    .line 306
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/media/CacheKey;->copy$default(Lcom/android/systemui/media/CacheKey;IIFZILjava/lang/Object;)Lcom/android/systemui/media/CacheKey;

    move-result-object v1

    .line 308
    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v2, :cond_6

    .line 310
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v5

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    .line 323
    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->copy()Lcom/android/systemui/media/MediaHostState;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/media/MediaHostState;->setExpansion(F)V

    .line 327
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v7

    const-string v0, "null cannot be cast to non-null type com.android.systemui.util.animation.TransitionViewState"

    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->copy()Lcom/android/systemui/media/MediaHostState;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/android/systemui/media/MediaHostState;->setExpansion(F)V

    .line 329
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    iget-object v6, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 333
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 330
    invoke-static/range {v6 .. v12}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState$default(Lcom/android/systemui/util/animation/TransitionLayoutController;Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    goto :goto_3

    .line 311
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 312
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 313
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->constraintSetForExpansion(F)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    .line 314
    new-instance v3, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v3}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 311
    invoke-virtual {v0, v2, p1, v3}, Lcom/android/systemui/util/animation/TransitionLayout;->calculateViewState(Lcom/android/systemui/util/animation/MeasurementInput;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    .line 316
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaViewController;->setGutsViewState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    .line 320
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-object v0
.end method

.method private final obtainViewStateForLocation(I)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/MediaHostState;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 494
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p0

    return-object p0
.end method

.method private final setGutsViewState(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 7

    .line 260
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->type:Lcom/android/systemui/media/MediaViewController$TYPE;

    sget-object v1, Lcom/android/systemui/media/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_7

    .line 261
    sget-object v0, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder$Companion;->getControlsIds()Ljava/util/Set;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 262
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v5

    :goto_1
    invoke-virtual {v1, v5}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v5

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    goto :goto_0

    .line 268
    :cond_3
    sget-object v0, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder$Companion;->getGutsIds()Ljava/util/Set;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 269
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v5, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    move v6, v3

    :goto_4
    invoke-virtual {v5, v6}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    .line 270
    :goto_5
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    goto :goto_3

    .line 273
    :cond_7
    sget-object v0, Lcom/android/systemui/media/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/RecommendationViewHolder$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/media/RecommendationViewHolder$Companion;->getControlsIds()Ljava/util/Set;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 274
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v1, :cond_8

    goto :goto_6

    .line 276
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    goto :goto_7

    :cond_9
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v5

    :goto_7
    invoke-virtual {v1, v5}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v4

    goto :goto_8

    :cond_a
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v5

    :goto_8
    invoke-virtual {v1, v5}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    goto :goto_6

    .line 280
    :cond_b
    sget-object v0, Lcom/android/systemui/media/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/RecommendationViewHolder$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/media/RecommendationViewHolder$Companion;->getGutsIds()Ljava/util/Set;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 281
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v5, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v2

    goto :goto_a

    :cond_d
    move v6, v3

    :goto_a
    invoke-virtual {v5, v6}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    .line 282
    :goto_b
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v1, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    goto :goto_9

    .line 285
    :cond_f
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaViewController;->shouldHideGutsSettings:Z

    if-eqz p0, :cond_11

    .line 286
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$id;->settings:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/animation/WidgetState;

    if-nez p0, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {p0, v4}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    :cond_11
    :goto_c
    return-void
.end method

.method private final updateMediaViewControllerType(Lcom/android/systemui/media/MediaViewController$TYPE;)V
    .locals 2

    .line 472
    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->type:Lcom/android/systemui/media/MediaViewController$TYPE;

    .line 473
    sget-object v0, Lcom/android/systemui/media/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

    if-ne p1, v0, :cond_0

    .line 474
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$xml;->media_collapsed:I

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 475
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$xml;->media_expanded:I

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    goto :goto_0

    .line 477
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$xml;->media_recommendation_collapsed:I

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 478
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$xml;->media_recommendation_expanded:I

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    return-void
.end method

.method private final updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 461
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHostStatesManager;->getCarouselSizes()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/animation/MeasurementOutput;

    if-nez p0, :cond_2

    goto :goto_1

    .line 465
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->setHeight(I)V

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/animation/TransitionViewState;->setWidth(I)V

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final animatePendingStateChange(JJ)V
    .locals 1

    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    .line 512
    iput-wide p1, p0, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    .line 513
    iput-wide p3, p0, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    return-void
.end method

.method public final attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/MediaViewController$TYPE;)V
    .locals 2
    .param p1    # Lcom/android/systemui/util/animation/TransitionLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/MediaViewController$TYPE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "transitionLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p2}, Lcom/android/systemui/media/MediaViewController;->updateMediaViewControllerType(Lcom/android/systemui/media/MediaViewController$TYPE;)V

    .line 361
    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 362
    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;)V

    .line 363
    iget p1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 368
    :cond_0
    iget p2, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 370
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v1, 0x1

    .line 367
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final closeGuts(Z)V
    .locals 4

    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-nez p1, :cond_1

    .line 234
    sget-wide v0, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->animatePendingStateChange(JJ)V

    .line 236
    :cond_1
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 237
    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 238
    iget v2, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    .line 236
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 174
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    return-object p0
.end method

.method public final getCurrentEndLocation()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    return p0
.end method

.method public final getCurrentHeight()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentHeight:I

    return p0
.end method

.method public final getCurrentWidth()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentWidth:I

    return p0
.end method

.method public final getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    return-object p0
.end method

.method public final getMeasurementsForState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/MeasurementOutput;
    .locals 2
    .param p1    # Lcom/android/systemui/media/MediaHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "hostState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredWidth(I)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredHeight(I)V

    .line 383
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    return-object p0
.end method

.method public final getSizeChangedListener()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "sizeChangedListener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getStateCallback()Lcom/android/systemui/media/MediaHostStatesManager$Callback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->stateCallback:Lcom/android/systemui/media/MediaHostStatesManager$Callback;

    return-object p0
.end method

.method public final getTranslationX()F
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final getTranslationY()F
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final isGutsVisible()Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    return p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaHostStatesManager;->removeController(Lcom/android/systemui/media/MediaViewController;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onLocationPreChange(I)V
    .locals 0

    .line 502
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->obtainViewStateForLocation(I)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    :goto_0
    return-void
.end method

.method public final openGuts()V
    .locals 4

    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    .line 217
    sget-wide v0, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->animatePendingStateChange(JJ)V

    .line 218
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 219
    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 220
    iget v2, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v3, 0x0

    .line 218
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final refreshState()V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 522
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/media/MediaViewController;->ensureAllMeasurements()V

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    .line 528
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    iget v2, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final setCurrentHeight(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/android/systemui/media/MediaViewController;->currentHeight:I

    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 11

    .line 396
    iput p2, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 397
    iput p1, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 398
    iput p3, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    .line 400
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v2

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    if-nez v0, :cond_1

    return-void

    .line 403
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaHostState;

    .line 408
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    .line 409
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/media/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p0, v4, p2, v5}, Lcom/android/systemui/media/MediaViewController;->updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 410
    iget-object v4, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    .line 413
    iput-boolean v2, p0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    .line 414
    iget-object v4, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v4, :cond_3

    return-void

    .line 419
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v4

    .line 420
    iget-object v5, p0, Lcom/android/systemui/media/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p0, v4, p1, v5}, Lcom/android/systemui/media/MediaViewController;->updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    .line 422
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz p1, :cond_b

    if-eqz v3, :cond_b

    .line 425
    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 430
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 431
    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 430
    invoke-virtual {p2, p1, v0, p3, v1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    .line 435
    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v3

    if-nez v3, :cond_6

    .line 438
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    sub-float/2addr v4, p3

    .line 440
    iget-object p3, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 438
    invoke-virtual {p1, p2, v0, v4, p3}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    :goto_1
    move-object v4, p1

    goto :goto_5

    :cond_6
    cmpg-float v0, p3, v4

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    if-nez v0, :cond_b

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    if-eqz v1, :cond_a

    goto :goto_1

    .line 448
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 449
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 448
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    goto :goto_1

    :cond_b
    :goto_4
    move-object v4, p2

    .line 451
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    iget-wide v7, p0, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    .line 452
    iget-wide v9, p0, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    move v5, p4

    .line 451
    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setState(Lcom/android/systemui/util/animation/TransitionViewState;ZZJJ)V

    return-void
.end method

.method public final setCurrentWidth(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/systemui/media/MediaViewController;->currentWidth:I

    return-void
.end method

.method public final setShouldHideGutsSettings(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaViewController;->shouldHideGutsSettings:Z

    return-void
.end method

.method public final setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method
