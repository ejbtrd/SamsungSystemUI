.class public Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;
.super Ljava/lang/Object;
.source "FaceWidgetTouchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFaceWidgetTouchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FaceWidgetTouchAnimator.kt\ncom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,282:1\n3782#2:283\n4300#2,2:284\n1819#3,2:286\n*E\n*S KotlinDebug\n*F\n+ 1 FaceWidgetTouchAnimator.kt\ncom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator\n*L\n60#1:283\n60#1,2:284\n60#1,2:286\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DRAG_VIEWS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NOTI_VIEWS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final interpolator:Landroid/view/animation/PathInterpolator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

.field private cancelExecToken:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private distance:F

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isBeingDragged:Z

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private notiAnimRunning:Z

.field private final position:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private restoreRunning:Z

.field private final sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private touchDownY:F

.field private touchSlop:I

.field private userActivityInvokedTime:J

.field private viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

.field private final views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->Companion:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;

    .line 274
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->interpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 276
    fill-array-data v0, :array_0

    .line 275
    sput-object v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->NOTI_VIEWS:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 279
    fill-array-data v0, :array_1

    .line 278
    sput-object v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->DRAG_VIEWS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/policy/KeyguardStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sbStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 27
    iput-object p4, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 30
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->views:Landroid/util/SparseArray;

    .line 31
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    .line 48
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->touchSlop:I

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    return-object p0
.end method

.method public static final synthetic access$getDRAG_VIEWS$cp()[I
    .locals 1

    .line 21
    sget-object v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->DRAG_VIEWS:[I

    return-object v0
.end method

.method public static final synthetic access$getKeyguardStateController$p(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method public static final synthetic access$getSbStateController$p(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-object p0
.end method

.method public static final synthetic access$setCancelExecToken$p(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;Ljava/lang/Runnable;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->cancelExecToken:Ljava/lang/Runnable;

    return-void
.end method

.method private final clearDistance()V
    .locals 2

    const-string v0, "FaceWidgetTouchAnimator"

    const-string v1, "clearDistance"

    .line 78
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->distance:F

    return-void
.end method

.method private final getView(I)Landroid/view/View;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "views.get(type)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private final hasView(I)Z
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v2, "viewInjector"

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideFaceWidgetMediaContainer()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideIconsOnly()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideStackScroller()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 240
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;->provideFaceWidget()Landroid/view/View;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_8

    move v1, v0

    goto :goto_1

    .line 246
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    return v1

    .line 240
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final initPivot(IF)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private final restoreChildViewVI()V
    .locals 7

    const-string v0, "FaceWidgetTouchAnimator"

    const-string/jumbo v1, "restoreChildViewVI"

    .line 122
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->restoreRunning:Z

    .line 124
    sget-object v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->Companion:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;->getDRAG_VIEWS()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 125
    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->hasView(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 128
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "position[cur]"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 129
    sget-object v5, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 130
    new-instance v5, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$1;-><init>(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 133
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    .line 134
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->cancelExecToken:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 140
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->hasView(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$restoreChildViewVI$2;-><init>(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)V

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->cancelExecToken:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method private final setBeingDragged(Z)V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged:Z

    if-eq v0, p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBeingDragged is changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetTouchAnimator"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged:Z

    :cond_0
    return-void
.end method

.method private final setChildViewPivot()V
    .locals 7

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->restoreRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->Companion:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;->getDRAG_VIEWS()[I

    move-result-object v0

    .line 3782
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    .line 60
    invoke-direct {p0, v5}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->hasView(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1819
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceWidgetTouchAnimator"

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_3
    sget-object v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->Companion:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;->getDRAG_VIEWS()[I

    move-result-object v0

    array-length v1, v0

    :cond_4
    :goto_2
    if-ge v3, v1, :cond_5

    aget v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 62
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->initPivot(IF)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final setIsBeingDragged(Z)V
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setBeingDragged(Z)V

    return-void
.end method

.method private final setTouchDownPos(Landroid/view/MotionEvent;)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->touchDownY:F

    return-void
.end method

.method private final updateChildViewVI()V
    .locals 8

    .line 91
    sget-object v0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->NOTI_VIEWS:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 92
    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->hasView(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    invoke-direct {p0, v4}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 95
    iget-object v6, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget v6, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->distance:F

    const/4 v7, 0x4

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->hasView(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 101
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    move-object v3, v1

    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    const/4 v4, 0x5

    if-nez v3, :cond_4

    goto :goto_3

    .line 103
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_5

    .line 104
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 105
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->distance:F

    int-to-float v5, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    :cond_5
    :goto_3
    const/4 v0, 0x3

    .line 110
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->hasView(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v1

    :goto_4
    if-nez v2, :cond_7

    goto :goto_5

    .line 112
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_8

    goto :goto_6

    .line 113
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_9

    .line 114
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 115
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->distance:F

    int-to-float v1, v4

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    :cond_9
    :goto_6
    return-void
.end method

.method private final updateDistance(Landroid/view/MotionEvent;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->touchDownY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->distance:F

    return-void
.end method

.method private final userActivityForMove(Ljava/lang/Runnable;)V
    .locals 6

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x9c4

    int-to-long v2, v2

    sub-long v2, v0, v2

    .line 166
    iget-wide v4, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->userActivityInvokedTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 167
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 168
    iput-wide v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->userActivityInvokedTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDistance()F
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->distance:F

    return p0
.end method

.method public final getNotiAnimRunning()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->notiAnimRunning:Z

    return p0
.end method

.method public final getRestoreRunning()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->restoreRunning:Z

    return p0
.end method

.method public final initialize(Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paramViewInjector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    return-void
.end method

.method public final isBeingDragged()Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged:Z

    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 211
    iget v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->touchDownY:F

    float-to-int v0, v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 212
    iget v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->touchSlop:I

    if-le p1, v0, :cond_3

    .line 213
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setIsBeingDragged(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setIsBeingDragged(Z)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setTouchDownPos(Landroid/view/MotionEvent;)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setChildViewPivot()V

    .line 221
    :cond_3
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged:Z

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->notiAnimRunning:Z

    if-eqz v0, :cond_1

    return v1

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 186
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->updateDistance(Landroid/view/MotionEvent;)V

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->updateChildViewVI()V

    .line 188
    new-instance p1, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$onTouchEvent$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$onTouchEvent$1;-><init>(Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->userActivityForMove(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->clearDistance()V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->restoreChildViewVI()V

    .line 196
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setIsBeingDragged(Z)V

    goto :goto_0

    .line 181
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setTouchDownPos(Landroid/view/MotionEvent;)V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setChildViewPivot()V

    :goto_0
    return v2
.end method

.method public final refreshView(I)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final reset()V
    .locals 6

    const-string v0, "FaceWidgetTouchAnimator"

    const-string/jumbo v1, "resetChildView"

    .line 153
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->setIsBeingDragged(Z)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->clearDistance()V

    .line 156
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->restoreRunning:Z

    .line 157
    sget-object v1, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->Companion:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator$Companion;->getDRAG_VIEWS()[I

    move-result-object v1

    array-length v2, v1

    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 158
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->hasView(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 159
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->position:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "position[cur]"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setNotiAnimRunning(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->notiAnimRunning:Z

    return-void
.end method

.method public final setRestoreRunning(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->restoreRunning:Z

    return-void
.end method

.method public final updateNotiIconPivot(F)V
    .locals 1

    const/4 v0, 0x2

    .line 254
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->initPivot(IF)V

    return-void
.end method

.method public final updateNotiIconY(F)V
    .locals 2

    const/4 v0, 0x2

    .line 258
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->hasView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getView(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    :goto_1
    return-void
.end method
