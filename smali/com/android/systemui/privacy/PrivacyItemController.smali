.class public final Lcom/android/systemui/privacy/PrivacyItemController;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/privacy/PrivacyItemController$Companion;,
        Lcom/android/systemui/privacy/PrivacyItemController$Callback;,
        Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;,
        Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n734#2:393\n825#2,2:394\n1571#2,9:396\n1819#2:405\n1820#2:407\n1580#2:408\n734#2:409\n825#2,2:410\n2160#2,14:412\n734#2:426\n825#2,2:427\n1711#2,3:429\n1819#2,2:432\n1819#2,2:434\n1#3:406\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyItemController.kt\ncom/android/systemui/privacy/PrivacyItemController\n*L\n266#1:393\n266#1,2:394\n270#1,9:396\n270#1:405\n270#1:407\n270#1:408\n288#1:409\n288#1,2:410\n295#1,14:412\n302#1:426\n302#1,2:427\n309#1,3:429\n364#1,2:432\n369#1,2:434\n270#1:406\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OPS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OPS_LOCATION:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OPS_MIC_CAMERA:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final intentFilter:Landroid/content/IntentFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private allIndicatorsAvailable:Z

.field private final appOpsController:Lcom/android/systemui/appops/AppOpsController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final devicePropertiesChangedListener:Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private holdingRunnableCanceler:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listening:Z

.field private locationAvailable:Z

.field private final logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private micCameraAvailable:Z

.field private final notifyChanges:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private privacyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateListAndNotifyChanges:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 62
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_MIC_CAMERA:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 66
    fill-array-data v1, :array_1

    .line 65
    sput-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_LOCATION:[I

    .line 68
    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getOPS_MIC_CAMERA()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getOPS_LOCATION()[I

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt;->plus([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    sput-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->intentFilter:Landroid/content/IntentFilter;

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x65
        0x1b
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/appops/AppOpsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/DeviceConfigProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/settings/UserTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/privacy/logging/PrivacyLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/util/time/SystemClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appOpsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceConfigProxy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemClock"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 52
    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 53
    iput-object p4, p0, Lcom/android/systemui/privacy/PrivacyItemController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 54
    iput-object p5, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 55
    iput-object p6, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 56
    iput-object p7, p0, Lcom/android/systemui/privacy/PrivacyItemController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 83
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 100
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    .line 104
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$notifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    .line 109
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->isMicCameraEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->isLocationEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    .line 120
    iget-boolean p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    .line 123
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->devicePropertiesChangedListener:Lcom/android/systemui/privacy/PrivacyItemController$devicePropertiesChangedListener$1;

    .line 146
    new-instance p3, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/privacy/PrivacyItemController$cb$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    .line 168
    new-instance p3, Lcom/android/systemui/privacy/PrivacyItemController$userTrackerCallback$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/privacy/PrivacyItemController$userTrackerCallback$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    const-string p3, "privacy"

    .line 179
    invoke-virtual {p4, p3, p2, p1}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string p1, "PrivacyItemController"

    .line 183
    invoke-virtual {p8, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCurrentUserIds$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getInternalUiExecutor$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/privacy/logging/PrivacyLogger;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    return-object p0
.end method

.method public static final synthetic access$getNotifyChanges$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getOPS$cp()[I
    .locals 1

    .line 48
    sget-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS:[I

    return-object v0
.end method

.method public static final synthetic access$getOPS_LOCATION$cp()[I
    .locals 1

    .line 48
    sget-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_LOCATION:[I

    return-object v0
.end method

.method public static final synthetic access$getOPS_MIC_CAMERA$cp()[I
    .locals 1

    .line 48
    sget-object v0, Lcom/android/systemui/privacy/PrivacyItemController;->OPS_MIC_CAMERA:[I

    return-object v0
.end method

.method public static final synthetic access$getUpdateListAndNotifyChanges$p(Lcom/android/systemui/privacy/PrivacyItemController;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getUserTracker$p(Lcom/android/systemui/privacy/PrivacyItemController;)Lcom/android/systemui/settings/UserTracker;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method

.method public static final synthetic access$setCurrentUserIds$p(Lcom/android/systemui/privacy/PrivacyItemController;Ljava/util/List;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setListeningState(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->setListeningState()V

    return-void
.end method

.method public static final synthetic access$setMicCameraAvailable$p(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    return-void
.end method

.method public static final synthetic access$update(Lcom/android/systemui/privacy/PrivacyItemController;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    return-void
.end method

.method public static final synthetic access$updatePrivacyList(Lcom/android/systemui/privacy/PrivacyItemController;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->updatePrivacyList()V

    return-void
.end method

.method private final addCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-nez v0, :cond_0

    .line 234
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->updateListeningState()V

    goto :goto_0

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;-><init>(Lcom/android/systemui/privacy/PrivacyItemController$Callback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getUserTrackerCallback$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final isIn(Lcom/android/systemui/privacy/PrivacyItem;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)Z"
        }
    .end annotation

    .line 1711
    instance-of p0, p2, Ljava/util/Collection;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_1

    .line 1712
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/privacy/PrivacyItem;

    .line 310
    invoke-virtual {p2}, Lcom/android/systemui/privacy/PrivacyItem;->getPrivacyType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItem;->getPrivacyType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 311
    invoke-virtual {p2}, Lcom/android/systemui/privacy/PrivacyItem;->getApplication()Lcom/android/systemui/privacy/PrivacyApplication;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItem;->getApplication()Lcom/android/systemui/privacy/PrivacyApplication;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    invoke-virtual {p2}, Lcom/android/systemui/privacy/PrivacyItem;->getTimeStampElapsed()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItem;->getTimeStampElapsed()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    return v0
.end method

.method private final isLocationEnabled()Z
    .locals 3

    .line 93
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string v0, "privacy"

    const-string v1, "location_indicators_enabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isMicCameraEnabled()Z
    .locals 3

    .line 88
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string v0, "privacy"

    const-string v1, "camera_mic_icons_enabled"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final processNewList(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logRetrievedPrivacyItemsList(Ljava/util/List;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v2

    .line 734
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/privacy/PrivacyItem;

    .line 289
    invoke-virtual {v6}, Lcom/android/systemui/privacy/PrivacyItem;->getTimeStampElapsed()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-lez v7, :cond_1

    invoke-direct {p0, v6, p1}, Lcom/android/systemui/privacy/PrivacyItemController;->isIn(Lcom/android/systemui/privacy/PrivacyItem;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_7

    .line 294
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v2, v3}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyItemsToHold(Ljava/util/List;)V

    .line 2160
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2161
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 2162
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2163
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    move-object v2, v4

    goto :goto_3

    .line 2164
    :cond_4
    move-object v6, v4

    check-cast v6, Lcom/android/systemui/privacy/PrivacyItem;

    .line 295
    invoke-virtual {v6}, Lcom/android/systemui/privacy/PrivacyItem;->getTimeStampElapsed()J

    move-result-wide v6

    .line 2166
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 2167
    move-object v9, v8

    check-cast v9, Lcom/android/systemui/privacy/PrivacyItem;

    .line 295
    invoke-virtual {v9}, Lcom/android/systemui/privacy/PrivacyItem;->getTimeStampElapsed()J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-lez v11, :cond_6

    move-object v4, v8

    move-wide v6, v9

    .line 2172
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    .line 295
    :goto_3
    check-cast v2, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyItem;->getTimeStampElapsed()J

    move-result-wide v6

    sub-long/2addr v6, v0

    .line 299
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyItemsUpdateScheduled(J)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    invoke-interface {v0, v1, v6, v7}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingRunnableCanceler:Ljava/lang/Runnable;

    .line 734
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItem;

    .line 302
    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItem;->getPaused()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_8

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final registerReceiver()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/settings/UserTracker;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final removeCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 245
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->updateListeningState()V

    :cond_0
    return-void
.end method

.method private final setListeningState()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 215
    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    and-int/2addr v0, v2

    .line 216
    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-ne v2, v0, :cond_2

    return-void

    .line 217
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v2, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getOPS()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/appops/AppOpsController;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->registerReceiver()V

    .line 221
    invoke-direct {p0, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    goto :goto_2

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyItemController;->Companion:Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;->getOPS()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->cb:Lcom/android/systemui/privacy/PrivacyItemController$cb$1;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/appops/AppOpsController;->removeCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->unregisterListener()V

    .line 227
    invoke-direct {p0, v3}, Lcom/android/systemui/privacy/PrivacyItemController;->update(Z)V

    :goto_2
    return-void
.end method

.method private final toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;
    .locals 9

    .line 317
    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_1

    return-object v1

    .line 323
    :cond_0
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_0

    .line 319
    :cond_1
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_0

    .line 321
    :cond_2
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    :goto_0
    move-object v3, v0

    .line 326
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v3, v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    if-nez p0, :cond_3

    return-object v1

    .line 329
    :cond_3
    new-instance v4, Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "appOpItem.packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v0

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/privacy/PrivacyApplication;-><init>(Ljava/lang/String;I)V

    .line 331
    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 333
    new-instance p0, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getTimeStartedElapsed()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->isDisabled()Z

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/privacy/PrivacyItem;-><init>(Lcom/android/systemui/privacy/PrivacyType;Lcom/android/systemui/privacy/PrivacyApplication;JZZ)V

    return-object p0
.end method

.method private final unregisterListener()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/UserTracker;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    return-void
.end method

.method private final update(Z)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$update$1;-><init>(ZLcom/android/systemui/privacy/PrivacyItemController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final updatePrivacyList()V
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingRunnableCanceler:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->holdingRunnableCanceler:Ljava/lang/Runnable;

    .line 262
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    if-nez v0, :cond_1

    .line 263
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/appops/AppOpsController;->getActiveAppOps(Z)Ljava/util/List;

    move-result-object v0

    const-string v2, "appOpsController.getActiveAppOps(true)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/appops/AppOpItem;

    .line 267
    iget-object v5, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 268
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_4

    .line 269
    invoke-virtual {v4}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_2

    .line 267
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1571
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1579
    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    const-string v3, "it"

    .line 270
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/privacy/PrivacyItemController;->toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1579
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 270
    :cond_7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->processNewList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/privacy/PrivacyItemController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Ljava/lang/ref/WeakReference;)V

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

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "PrivacyItemController state:"

    .line 360
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    iget-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "  Listening: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    const-string p3, "  Current user ids: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Privacy Items:"

    .line 363
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p1

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, "    "

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/privacy/PrivacyItem;

    .line 365
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p3}, Lcom/android/systemui/privacy/PrivacyItem;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "  Callbacks:"

    .line 368
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 370
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    if-nez p1, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final getAllIndicatorsAvailable()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    return p0
.end method

.method public final getLocationAvailable()Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    return p0
.end method

.method public final getMicCameraAvailable()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->micCameraAvailable:Z

    return p0
.end method

.method public final declared-synchronized getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 1
    .param p1    # Lcom/android/systemui/privacy/PrivacyItemController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public final setAllIndicatorsAvailable(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->allIndicatorsAvailable:Z

    return-void
.end method

.method public final setLocationAvailable(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->locationAvailable:Z

    return-void
.end method
