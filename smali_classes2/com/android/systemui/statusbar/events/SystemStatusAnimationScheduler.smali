.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
.super Ljava/lang/Object;
.source "SystemStatusAnimationScheduler.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$PrivacyIndicatorStateCallBack;,
        Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;,
        Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;",
        ">;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/util/DesktopManager$Callback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemStatusAnimationScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemStatusAnimationScheduler.kt\ncom/android/systemui/statusbar/events/SystemStatusAnimationScheduler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,531:1\n1571#2,9:532\n1819#2:541\n1820#2:543\n1580#2:544\n1571#2,9:545\n1819#2:554\n1820#2:556\n1580#2:557\n1819#2,2:558\n1819#2,2:560\n1819#2,2:562\n1819#2,2:564\n1819#2,2:566\n1#3:542\n1#3:555\n*E\n*S KotlinDebug\n*F\n+ 1 SystemStatusAnimationScheduler.kt\ncom/android/systemui/statusbar/events/SystemStatusAnimationScheduler\n*L\n304#1,9:532\n304#1:541\n304#1:543\n304#1:544\n317#1,9:545\n317#1:554\n317#1:556\n317#1:557\n338#1,2:558\n376#1,2:560\n380#1,2:562\n384#1,2:564\n434#1,2:566\n304#1:542\n317#1:555\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private animationState:I

.field private cancelExecutionRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chipUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasPersistentDot:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mIsCoverClosed:Z

.field private mPrivacyIndicatorListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$PrivacyIndicatorStateCallBack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final statusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemAnimatorAdapter:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->Companion:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/basic/util/CoverUtilWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/events/SystemEventCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/util/time/SystemClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/basic/util/CoverUtilWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "coordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chipAnimationController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarWindowController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemClock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverUtilWrapper"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->statusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 75
    iput-object p5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 76
    iput-object p6, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 77
    iput-object p7, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 83
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->mPrivacyIndicatorListener:Ljava/util/Set;

    .line 124
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 127
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->attachScheduler(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    const-string p1, "SystemStatusAnimationScheduler"

    .line 128
    invoke-virtual {p4, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 130
    sget-object p1, Lcom/android/systemui/basic/util/ModuleType;->INDICATOR:Lcom/android/systemui/basic/util/ModuleType;

    new-instance p2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    invoke-virtual {p7, p1, p2}, Lcom/android/systemui/basic/util/CoverUtilWrapper;->addListener(Lcom/android/systemui/basic/util/ModuleType;Ljava/util/function/BiConsumer;)V

    const-class p1, Lcom/android/systemui/util/DesktopManager;

    .line 133
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 405
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemUpdateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 409
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemAnimatorAdapter:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    .line 422
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public static final synthetic access$getChipAnimationController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    return-object p0
.end method

.method public static final synthetic access$getChipUpdateListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$getExecutor$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public static final synthetic access$getMPrivacyIndicatorListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Ljava/util/Set;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->mPrivacyIndicatorListener:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getScheduledEvent$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/StatusEvent;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    return-object p0
.end method

.method public static final synthetic access$getStatusBarWindowController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->statusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method

.method public static final synthetic access$getSystemAnimatorAdapter$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemAnimatorAdapter:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    return-object p0
.end method

.method public static final synthetic access$getSystemUpdateListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$notifySystemAnimationUpdate(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifySystemAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$notifySystemFinish(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifySystemFinish()V

    return-void
.end method

.method public static final synthetic access$notifySystemStart(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifySystemStart()V

    return-void
.end method

.method public static final synthetic access$notifyTransitionToPersistentDot(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/Animator;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyTransitionToPersistentDot()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAnimationState$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    return-void
.end method

.method public static final synthetic access$setCancelExecutionRunnable$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Ljava/lang/Runnable;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->cancelExecutionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setScheduledEvent$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    return-void
.end method

.method private final clearDotIfVisible()V
    .locals 2

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyHidePersistentDot()Landroid/animation/Animator;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$clearDotIfVisible$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$clearDotIfVisible$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private final isImmersiveIndicatorEnabled()Z
    .locals 2

    const-string/jumbo p0, "privacy"

    const-string v0, "enable_immersive_indicator"

    const/4 v1, 0x1

    .line 110
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isTooEarly()Z
    .locals 4

    .line 210
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final notifyHidePersistentDot()Landroid/animation/Animator;
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1579
    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 318
    invoke-interface {v2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onHidePersistentDot()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1579
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    .line 325
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    .line 326
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 327
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private final notifySystemAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 384
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 384
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemChromeAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifySystemFinish()V
    .locals 1

    .line 380
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 380
    invoke-interface {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemChromeAnimationEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifySystemStart()V
    .locals 1

    .line 376
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 376
    invoke-interface {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemChromeAnimationStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyTransitionToPersistentDot()Landroid/animation/Animator;
    .locals 2

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1579
    check-cast v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 305
    invoke-interface {v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemStatusAnimationTransitionToPersistentDot()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1579
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    .line 308
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 309
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private final scheduleEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 4

    .line 217
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 218
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceShowingChip()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 226
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceShowingChip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyHidePersistentDot()Landroid/animation/Animator;

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    :goto_1
    return-void

    .line 238
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 241
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getDelayTime(Lcom/android/systemui/statusbar/events/StatusEvent;)J

    move-result-wide v2

    .line 246
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->cancelExecutionRunnable:Ljava/lang/Runnable;

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->startObserving()V

    .line 393
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->addCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    const-string p3, "Scheduled event: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "Has persistent privacy dot: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    iget p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "Animation state: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Listeners:"

    .line 430
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "(none)"

    .line 432
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 434
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    const-string p3, "  "

    .line 435
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final getAnimationState()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    return p0
.end method

.method public final getDelayTime(Lcom/android/systemui/statusbar/events/StatusEvent;)J
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/events/StatusEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getApplyDelay()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public final getHasPersistentDot()Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    return p0
.end method

.method public final notifyCoverStateToPersistentDot(Z)V
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->mIsCoverClosed:Z

    if-eq v0, p1, :cond_2

    .line 337
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->mIsCoverClosed:Z

    .line 338
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getHasPersistentDot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->mIsCoverClosed:Z

    if-eqz v0, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyHidePersistentDot()Landroid/animation/Animator;

    goto :goto_0

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyTransitionToPersistentDot()Landroid/animation/Animator;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3
    .param p1    # Lcom/samsung/android/desktopmode/SemDesktopModeState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    .line 356
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v1

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/16 v2, 0x32

    if-ne v0, v2, :cond_2

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    if-ne v1, p1, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyHidePersistentDot()Landroid/animation/Animator;

    goto :goto_0

    .line 363
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    if-eqz p1, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyTransitionToPersistentDot()Landroid/animation/Animator;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/events/StatusEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->isTooEarly()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->isImmersiveIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 143
    :cond_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 144
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    const-string v1, "SystemStatusAnimationScheduler"

    if-eqz v0, :cond_1

    const-string p0, "It is standAlone mode"

    .line 145
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 151
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v2

    :goto_0
    if-gt v0, v2, :cond_4

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$onStatusEvent$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$onStatusEvent$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/events/StatusEvent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->mIsCoverClosed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 166
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 167
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    :cond_6
    const-string p0, "coverClosed but hasPersistentDot is true"

    .line 169
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_7
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduleEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    goto :goto_3

    .line 175
    :cond_8
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 176
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyTransitionToPersistentDot()Landroid/animation/Animator;

    :cond_9
    :goto_3
    return-void
.end method

.method public final registerPrivacyIndicatorStateCallBack(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$PrivacyIndicatorStateCallBack;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$PrivacyIndicatorStateCallBack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->mPrivacyIndicatorListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 400
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 401
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->stopObserving()V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->removeCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V

    return-void
.end method

.method public final setShouldShowPersistentPrivacyIndicator(Z)V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->isImmersiveIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    if-nez p1, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->clearDotIfVisible()V

    :cond_1
    :goto_0
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

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method
