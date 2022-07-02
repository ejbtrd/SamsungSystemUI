.class public Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;
.super Ljava/lang/Object;
.source "ControlsBindingControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/controller/ControlsBindingController;
.implements Lcom/android/systemui/controls/controller/CustomControlsBindingController;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion;,
        Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;,
        Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadRunnable;,
        Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;,
        Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnSubscribeRunnable;,
        Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnActionResponseRunnable;,
        Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnLoadErrorRunnable;,
        Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsBindingControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsBindingControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsBindingControllerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,428:1\n1517#2:429\n1588#2,3:430\n1517#2:433\n1588#2,3:434\n1517#2:437\n1588#2,3:438\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsBindingControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsBindingControllerImpl\n*L\n179#1:429\n179#1,3:430\n195#1:433\n195#1,3:434\n196#1:437\n196#1,3:438\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SUGGESTED_CONTROLS_REQUEST:J

.field private static final SUGGESTED_STRUCTURES:J

.field private static final emptyCallback:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final actionCallbackService:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentUser:Landroid/os/UserHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lazyController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->Companion:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion;

    .line 55
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_UNRESTRICTED_SUGGESTION:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x6

    :goto_0
    sput-wide v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->SUGGESTED_STRUCTURES:J

    .line 63
    sget-object v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->Companion:Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$Companion;->getSUGGESTED_CONTROLS_PER_STRUCTURE()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v0

    sput-wide v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->SUGGESTED_CONTROLS_REQUEST:J

    .line 65
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;

    invoke-direct {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->emptyCallback:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/settings/UserTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Lcom/android/systemui/settings/UserTracker;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userTracker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->lazyController:Ldagger/Lazy;

    .line 71
    invoke-interface {p4}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    .line 89
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->actionCallbackService:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;

    return-void
.end method

.method public static final synthetic access$getBackgroundExecutor$p(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public static final synthetic access$getCurrentProvider$p(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    return-object p0
.end method

.method public static final synthetic access$getCurrentUser$p(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;)Landroid/os/UserHandle;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public static final synthetic access$getEmptyCallback$cp()Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->emptyCallback:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;

    return-object v0
.end method

.method public static final synthetic access$getLazyController$p(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;)Ldagger/Lazy;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->lazyController:Ldagger/Lazy;

    return-object p0
.end method

.method public static final synthetic access$unbind(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    return-void
.end method

.method private final retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->createProviderManager$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object v0

    .line 118
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    return-object v0
.end method

.method private final unbind()V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->loadCancel()Ljava/lang/Runnable;

    :goto_0
    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 239
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindService()V

    .line 240
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    return-void
.end method


# virtual methods
.method public action(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/actions/ControlAction;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/service/controls/actions/ControlAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    if-nez v0, :cond_0

    const-string p0, "ControlsBindingControllerImpl"

    const-string p1, "No actions can occur outside of an active subscription. Ignoring."

    .line 215
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    .line 218
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->maybeBindAndSendAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;)V

    :goto_0
    return-void
.end method

.method public bindAndLoad(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;Ljava/util/function/Consumer;)Ljava/lang/Runnable;
    .locals 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->loadCancel()Ljava/lang/Runnable;

    .line 144
    :goto_0
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    const-wide/32 v1, 0x186a0

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;J)V

    .line 145
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 146
    new-instance p2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;

    invoke-direct {p2, p3}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;-><init>(Ljava/util/function/Consumer;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->maybeBindAndLoad(Landroid/service/controls/IControlsSubscriber$Stub;Landroid/service/controls/IControlsProviderInfoSubscriber;)V

    .line 153
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->loadCancel()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public bindAndLoadSuggested(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->loadCancel()Ljava/lang/Runnable;

    .line 161
    :goto_0
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    sget-wide v1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->SUGGESTED_CONTROLS_REQUEST:J

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;J)V

    .line 162
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->maybeBindAndLoadSuggested(Landroid/service/controls/IControlsSubscriber$Stub;)V

    return-void
.end method

.method public changeUser(Landroid/os/UserHandle;)V
    .locals 1
    .param p1    # Landroid/os/UserHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    .line 230
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    return-void
.end method

.method public createProviderManager$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
    .locals 7
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 103
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->context:Landroid/content/Context;

    .line 104
    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 105
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->actionCallbackService:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;

    .line 106
    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    move-object v1, v0

    move-object v6, p1

    .line 102
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/service/controls/IControlsActionCallback$Stub;Landroid/os/UserHandle;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public loadControlsProviderInfo(Landroid/content/ComponentName;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    .line 259
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$loadControlsProviderInfo$ps$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$loadControlsProviderInfo$ps$1;-><init>(Ljava/util/function/Consumer;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->maybeBindAndLoadProviderInfo(Landroid/service/controls/IControlsProviderInfoSubscriber;)V

    return-void
.end method

.method public onComponentRemoved(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public subscribe(Lcom/android/systemui/controls/controller/ComponentInfo;)V
    .locals 8
    .param p1    # Lcom/android/systemui/controls/controller/ComponentInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    .line 187
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object v0

    .line 188
    new-instance v7, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    .line 189
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->lazyController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "lazyController.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsController;

    .line 191
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/32 v5, 0x186a0

    move-object v1, v7

    move-object v3, v0

    .line 188
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;-><init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V

    .line 194
    iput-object v7, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    .line 195
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ComponentInfo;->getStructureInfos()Ljava/util/List;

    move-result-object p0

    .line 1517
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1589
    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 195
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 1517
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 196
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, v7}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->maybeBindAndSubscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  ControlsBindingController:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    const-string v3, "    StatefulControlSubscriber="

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Providers="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder(\"  ControlsBindingController:\\n\").apply {\n            append(\"    currentUser=$currentUser\\n\")\n            append(\"    StatefulControlSubscriber=$statefulControlSubscriber\")\n            append(\"    Providers=$currentProvider\\n\")\n        }.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public unsubscribe()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->cancel()V

    :goto_0
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    return-void
.end method

.method public unsubscribeAndUnbind()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    return-void
.end method
