.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController;
.super Ljava/lang/Object;
.source "PrivacyDotViewController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDotViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDotViewController.kt\ncom/android/systemui/statusbar/events/PrivacyDotViewController\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,789:1\n1256#2,2:790\n1256#2,2:792\n1256#2,2:794\n1256#2,2:796\n1256#2,2:798\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyDotViewController.kt\ncom/android/systemui/statusbar/events/PrivacyDotViewController\n*L\n237#1,2:790\n248#1,2:792\n263#1,2:794\n381#1,2:796\n567#1,2:798\n*E\n"
.end annotation


# instance fields
.field private final animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bl:Landroid/view/View;

.field private br:Landroid/view/View;

.field private cancelRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentViewState:Lcom/android/systemui/statusbar/events/ViewState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextViewState:Lcom/android/systemui/statusbar/events/ViewState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private privacyInsetsCallback:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sbHeightLandscape:I

.field private sbHeightPortrait:I

.field private final stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tl:Landroid/view/View;

.field private tr:Landroid/view/View;

.field private uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Landroid/content/Context;)V
    .locals 43
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string/jumbo v7, "mainExecutor"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "stateController"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "configurationController"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "contentInsetsProvider"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "animationScheduler"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 67
    iput-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 68
    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 69
    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 70
    iput-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 71
    iput-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->context:Landroid/content/Context;

    .line 82
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$privacyInsetsCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$privacyInsetsCallback$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->privacyInsetsCallback:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;

    .line 95
    new-instance v1, Lcom/android/systemui/statusbar/events/ViewState;

    move-object/from16 v24, v1

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0xffff

    const/16 v23, 0x0

    invoke-direct/range {v5 .. v23}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const v41, 0xffff

    const/16 v42, 0x0

    .line 98
    invoke-static/range {v24 .. v42}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 103
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->addCallback(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;)V

    .line 121
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->privacyInsetsCallback:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->setPrivacyInsetsCallback(Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;)V

    .line 124
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$2;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 136
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 587
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    return-void
.end method

.method public static final synthetic access$getAnimationScheduler$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Ljava/lang/Object;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getNextViewState$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/ViewState;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    return-object p0
.end method

.method public static final synthetic access$getSystemStatusAnimationCallback$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    return-object p0
.end method

.method public static final synthetic access$processNextViewState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->processNextViewState()V

    return-void
.end method

.method public static final synthetic access$selectDesignatedCorner(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;IZ)Landroid/view/View;
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNewLayoutRectForWindowInset(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNewLayoutRectForWindowInset(Z)V

    return-void
.end method

.method public static final synthetic access$setNewLayoutRects(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNewLayoutRects()V

    return-void
.end method

.method public static final synthetic access$setNextViewState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    return-void
.end method

.method public static final synthetic access$updateStatusBarState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateStatusBarState()V

    return-void
.end method

.method private final activeRotationForCorner(Landroid/view/View;Z)I
    .locals 6

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    :cond_0
    move v2, v4

    goto :goto_2

    :cond_1
    :goto_0
    move v2, v5

    goto :goto_2

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    move v2, v3

    goto :goto_2

    .line 411
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_7

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    return v2

    :cond_7
    const-string p0, "br"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string/jumbo p0, "tl"

    .line 410
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string/jumbo p0, "tr"

    .line 409
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final cornerForView(Landroid/view/View;)I
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    .line 391
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    :goto_0
    return p0

    .line 392
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "not a corner view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "br"

    .line 391
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p0, "bl"

    .line 390
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string/jumbo p0, "tr"

    .line 389
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string/jumbo p0, "tl"

    .line 388
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final cornerIndex(Landroid/view/View;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 607
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final getLayoutRectForWindowInset()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 626
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Rect;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p0, v2, v1

    .line 627
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getLayoutRects()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 615
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 616
    iget-object v4, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 617
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v6, 0x2

    .line 618
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object p0

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/Rect;

    aput-object v0, v7, v3

    aput-object v2, v7, v5

    aput-object v4, v7, v6

    aput-object p0, v7, v1

    .line 620
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getPrivacyDotMargin(Lcom/android/systemui/statusbar/events/ViewState;)I
    .locals 1

    .line 684
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInputProperty()Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    move-result-object v0

    .line 685
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->havingInset(Lcom/android/systemui/statusbar/events/ViewState;)Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result p1

    .line 684
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getPrivacyDotMargin(ZI)I

    move-result p0

    return p0
.end method

.method private final getViews()Lkotlin/sequences/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Landroid/view/View;

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    aput-object v0, v2, v1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v1, :cond_3

    aput-object v1, v2, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v1, :cond_2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_1

    aput-object p0, v2, v0

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "bl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "br"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string/jumbo p0, "tr"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string/jumbo p0, "tl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final havingInset(Lcom/android/systemui/statusbar/events/ViewState;)Z
    .locals 1

    .line 690
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getHavingInset()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 691
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result p0

    if-eq p0, v0, :cond_1

    .line 692
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final hideDotView(Landroid/view/View;Z)V
    .locals 2

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz p2, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    .line 196
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 197
    sget-object p2, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p2, 0x0

    .line 198
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 199
    new-instance p2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 202
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final isShadeInQs()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final processNextViewState()V
    .locals 21

    move-object/from16 v0, p0

    const-string/jumbo v1, "processNextViewState: "

    .line 525
    invoke-static {v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 528
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xffff

    const/16 v20, 0x0

    invoke-static/range {v2 .. v20}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    .line 530
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    monitor-exit v1

    .line 532
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->resolveState(Lcom/android/systemui/statusbar/events/ViewState;)V

    return-void

    :catchall_0
    move-exception v0

    .line 528
    monitor-exit v1

    throw v0
.end method

.method private final resolveState(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 3

    const-string/jumbo v0, "resolveState "

    .line 537
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getViewInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "resolveState: view is not initialized. skipping."

    .line 539
    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "resolveState: skipping"

    .line 544
    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    return-void

    .line 549
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getHavingInset()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getHavingInset()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 550
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDotTopMargin()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getDotTopMargin()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 551
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->isEdgeActive()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->isEdgeActive()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 552
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateDotMargin(Landroid/view/View;Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 555
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 557
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateRotations(I)V

    .line 560
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/events/ViewState;->needsLayout(Lcom/android/systemui/statusbar/events/ViewState;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 562
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    .line 563
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isRightDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isLeftDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 566
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setCornerSizes(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 1256
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 567
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 570
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 571
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->shouldShowDot()Z

    move-result v2

    invoke-direct {p0, v0, v2, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateDesignatedCorner(Landroid/view/View;ZLcom/android/systemui/statusbar/events/ViewState;)V

    .line 574
    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->shouldShowDot()Z

    move-result v0

    .line 575
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/events/ViewState;->shouldShowDot()Z

    move-result v2

    if-eq v0, v2, :cond_9

    if-eqz v0, :cond_8

    .line 576
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 577
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showDotView(Landroid/view/View;ZLcom/android/systemui/statusbar/events/ViewState;)V

    goto :goto_1

    :cond_8
    if-nez v0, :cond_9

    .line 578
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 579
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->hideDotView(Landroid/view/View;Z)V

    .line 583
    :cond_9
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    return-void
.end method

.method private final rotatedCorner(II)I
    .locals 0

    sub-int/2addr p1, p2

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method

.method private final scheduleUpdate()V
    .locals 4

    const-string/jumbo v0, "scheduleUpdate: "

    .line 513
    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cancelRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final selectDesignatedCorner(IZ)Landroid/view/View;
    .locals 6

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v2, "tl"

    const-string/jumbo v3, "tr"

    if-eqz p1, :cond_d

    const/4 v4, 0x1

    const-string v5, "br"

    if-eq p1, v4, :cond_9

    const/4 v3, 0x2

    const-string v4, "bl"

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    if-eqz p2, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "unknown rotation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eqz p2, :cond_7

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-eqz p2, :cond_b

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    if-eqz p2, :cond_f

    if-eqz v0, :cond_e

    goto :goto_0

    .line 349
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v0, :cond_10

    :goto_0
    return-object v0

    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setCornerSizes(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 8

    .line 281
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getLayoutRtl()Z

    move-result v0

    .line 282
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const-string/jumbo v3, "tl"

    const/4 v4, 0x0

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 293
    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 289
    :cond_1
    :goto_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 290
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 296
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v5, :cond_d

    invoke-direct {p0, v5, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v5

    .line 297
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 298
    iget-object v6, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string/jumbo v6, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 299
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v0, :cond_2

    .line 301
    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2

    .line 303
    :cond_2
    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v1, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 307
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    const-string/jumbo v5, "tr"

    if-eqz v3, :cond_b

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v3

    .line 308
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 309
    iget-object v7, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 310
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v0, :cond_3

    .line 312
    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_3

    .line 314
    :cond_3
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v2, v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 318
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    const-string v5, "br"

    if-eqz v3, :cond_9

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v3

    .line 319
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 320
    iget-object v7, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 321
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v0, :cond_4

    .line 323
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_4

    .line 325
    :cond_4
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 329
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    const-string v3, "bl"

    if-eqz v1, :cond_7

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v1

    .line 330
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 331
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v0, :cond_5

    .line 334
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_5

    .line 336
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_5
    return-void

    .line 331
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 320
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 307
    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 298
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 296
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 283
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final setCornerVisibilities(I)V
    .locals 1

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 1256
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 382
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setNewLayoutRectForWindowInset(Z)V
    .locals 24

    move-object/from16 v0, p0

    .line 632
    sget-boolean v1, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FOLD:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getLayoutRects()Ljava/util/List;

    move-result-object v1

    .line 635
    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 637
    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/graphics/Rect;

    .line 638
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/graphics/Rect;

    const/4 v2, 0x2

    .line 639
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/graphics/Rect;

    const/4 v2, 0x3

    .line 640
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/graphics/Rect;

    .line 636
    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0xf87d

    const/16 v23, 0x0

    move/from16 v7, p1

    invoke-static/range {v5 .. v23}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 643
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 645
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getLayoutRectForWindowInset()Ljava/util/List;

    move-result-object v1

    .line 646
    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 647
    :try_start_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 649
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    .line 650
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0xfafd

    const/16 v23, 0x0

    move/from16 v7, p1

    .line 647
    invoke-static/range {v5 .. v23}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 652
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 646
    monitor-exit v4

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private final setNewLayoutRects()V
    .locals 23

    move-object/from16 v0, p0

    .line 657
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getLayoutRects()Ljava/util/List;

    move-result-object v1

    .line 659
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 661
    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/graphics/Rect;

    const/4 v3, 0x1

    .line 662
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/graphics/Rect;

    const/4 v3, 0x2

    .line 663
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/graphics/Rect;

    const/4 v3, 0x3

    .line 664
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/graphics/Rect;

    .line 660
    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xf87f

    const/16 v22, 0x0

    invoke-static/range {v4 .. v22}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 666
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private final setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->scheduleUpdate()V

    return-void
.end method

.method private final showDotView(Landroid/view/View;ZLcom/android/systemui/statusbar/events/ViewState;)V
    .locals 0

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 212
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateDotMargin(Landroid/view/View;Lcom/android/systemui/statusbar/events/ViewState;)V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 217
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 219
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xa0

    .line 220
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 221
    sget-object p1, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private final updateDesignatedCorner(Landroid/view/View;ZLcom/android/systemui/statusbar/events/ViewState;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateDotMargin(Landroid/view/View;Lcom/android/systemui/statusbar/events/ViewState;)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p0, 0x0

    .line 369
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 370
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 372
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 373
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 374
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateDotMargin(Landroid/view/View;Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 672
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getPrivacyDotMargin(Lcom/android/systemui/statusbar/events/ViewState;)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 675
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getPrivacyDotMargin(Lcom/android/systemui/statusbar/events/ViewState;)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 677
    :goto_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/events/ViewState;->getDotTopMargin()I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 678
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private final updateRotations(I)V
    .locals 6

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 1256
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 249
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->rotatedCorner(II)I

    move-result v2

    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    invoke-static {v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$toGravity(I)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 255
    sget v3, Lcom/android/systemui/R$id;->privacy_dot:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 255
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 257
    invoke-static {v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$innerGravity(I)I

    move-result v2

    .line 255
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateStatusBarState()V
    .locals 21

    move-object/from16 v0, p0

    .line 497
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->isShadeInQs()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xffdf

    const/16 v20, 0x0

    invoke-static/range {v2 .. v20}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 499
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final initialize(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 22
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v14, p5

    const-string/jumbo v5, "topLeft"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "topRight"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bottomLeft"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bottomRight"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 427
    iget-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 428
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v5, :cond_2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v5, :cond_0

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_0
    const-string v0, "br"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-string v0, "bl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_2
    const-string/jumbo v0, "tr"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_3
    const-string/jumbo v0, "tl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    .line 433
    :cond_4
    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 434
    iput-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    .line 435
    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    .line 436
    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    .line 438
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->isLayoutRtl()Z

    move-result v13

    .line 441
    invoke-direct {v0, v14, v13}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    move-result-object v12

    .line 443
    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerIndex(Landroid/view/View;)I

    move-result v16

    .line 446
    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateRotations(I)V

    .line 448
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$initialize$5;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$initialize$5;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 452
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v17

    .line 453
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v9

    .line 454
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v10

    .line 455
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x2

    .line 456
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForRotation(I)Landroid/graphics/Rect;

    move-result-object v11

    .line 458
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v15, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v15

    move/from16 v15, v18

    const/16 v18, 0x207e

    const/16 v19, 0x0

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v17

    move/from16 v14, p5

    move-object/from16 v17, v20

    :try_start_1
    invoke-static/range {v1 .. v19}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 470
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    monitor-exit v21

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v21, v1

    :goto_0
    monitor-exit v21

    throw v0
.end method

.method public final setDotTopMargin(I)V
    .locals 21

    move-object/from16 v0, p0

    .line 491
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xfff7

    const/16 v20, 0x0

    move/from16 v6, p1

    invoke-static/range {v2 .. v20}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 493
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setNewRotation(I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v14, p1

    const-string/jumbo v1, "updateRotation: "

    .line 160
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 163
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v14, v2, :cond_0

    .line 165
    monitor-exit v1

    return-void

    .line 168
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/events/ViewState;->getLayoutRtl()Z

    move-result v2

    .line 169
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 163
    monitor-exit v1

    const/4 v1, 0x4

    .line 172
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setCornerVisibilities(I)V

    .line 174
    invoke-direct {v0, v14, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    move-result-object v15

    .line 175
    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerIndex(Landroid/view/View;)I

    move-result v16

    if-eqz v14, :cond_2

    const/4 v1, 0x1

    if-eq v14, v1, :cond_1

    const/4 v1, 0x2

    if-eq v14, v1, :cond_2

    const/4 v1, 0x3

    if-eq v14, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 179
    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightLandscape:I

    goto :goto_0

    .line 178
    :cond_2
    iget v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightPortrait:I

    :goto_0
    move/from16 v17, v1

    .line 182
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_2
    iget-object v13, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v13

    move/from16 v13, v18

    const/16 v18, 0xfff

    const/16 v19, 0x0

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    move/from16 v14, p1

    move-object/from16 v20, v15

    move/from16 v15, v17

    move-object/from16 v17, v20

    :try_start_3
    invoke-static/range {v1 .. v19}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    monitor-exit v21

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v21, v1

    :goto_1
    monitor-exit v21

    throw v0

    :catchall_2
    move-exception v0

    .line 163
    monitor-exit v1

    throw v0
.end method

.method public final setQsExpanded(Z)V
    .locals 21

    move-object/from16 v0, p0

    const-string/jumbo v1, "setQsExpanded "

    .line 152
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 153
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xffbf

    const/16 v20, 0x0

    move/from16 v9, p1

    invoke-static/range {v2 .. v20}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 155
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setStatusBarHeights(II)V
    .locals 0

    .line 478
    iput p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightPortrait:I

    .line 479
    iput p2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightLandscape:I

    return-void
.end method

.method public final setUiExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method

.method public final updateDotMarginForEdge(Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 484
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xfffb

    const/16 v20, 0x0

    move/from16 v5, p1

    invoke-static/range {v2 .. v20}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 486
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
