.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;
.super Landroid/widget/LinearLayout;
.source "DcmMascotViewContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;,
        Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDcmMascotViewContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DcmMascotViewContainer.kt\ncom/android/systemui/statusbar/phone/DcmMascotViewContainer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,349:1\n1#2:350\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DCM_SCREEN_LOCK_SERVICE_ACTION:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final MASCOT_ACTION:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bgExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final blockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancelUpdateRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private injector:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

.field private isBootCompleted:Z

.field private isMascotAppRunning:Z

.field private isWaitingForBootComplete:Z

.field private final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mascotBottomMarin:I

.field private mascotHeight:I

.field private mascotTopMarin:I

.field private final pm:Landroid/content/pm/PackageManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private remoteViews:Landroid/widget/RemoteViews;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serviceConnection:Landroid/content/ServiceConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->Companion:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Companion;

    .line 335
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v2, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    .line 344
    const-class v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_SCREEN_LOCK_SERVICE_ACTION:Ljava/lang/String;

    const-string v0, "LOCK_CLICK_MASCOT"

    const-string v2, "LOCK_CLICK_POPUP"

    const-string v3, "ACTION_UNLOCK"

    .line 347
    filled-new-array {v1, v0, v2, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->MASCOT_ACTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/phone/StatusBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroid/content/pm/PackageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "paramContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mainExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBar"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sbStateController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockscreenUserManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateMonitor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pm"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 45
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 46
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 47
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 48
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 49
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 50
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->pm:Landroid/content/pm/PackageManager;

    .line 51
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    .line 52
    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->serviceConnection:Landroid/content/ServiceConnection;

    .line 74
    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public static final synthetic access$applyMascotView(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->applyMascotView()V

    return-void
.end method

.method public static final synthetic access$getBlockingQueue$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Ljava/util/concurrent/BlockingDeque;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object p0
.end method

.method public static final synthetic access$getDCM_SCREEN_LOCK_SERVICE_ACTION$cp()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_SCREEN_LOCK_SERVICE_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getInjector$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

    return-object p0
.end method

.method public static final synthetic access$getMASCOT_ACTION$cp()[Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->MASCOT_ACTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRemoteViews$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Landroid/widget/RemoteViews;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public static final synthetic access$getServiceConnection$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Landroid/content/ServiceConnection;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static final synthetic access$getStatusBar$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public static final synthetic access$isWaitingForBootComplete$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isWaitingForBootComplete:Z

    return p0
.end method

.method public static final synthetic access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$sendUnreadCountBroadcast(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sendUnreadCountBroadcast()V

    return-void
.end method

.method public static final synthetic access$setBootCompleted$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isBootCompleted:Z

    return-void
.end method

.method public static final synthetic access$setWaitingForBootComplete$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isWaitingForBootComplete:Z

    return-void
.end method

.method public static final synthetic access$updateIsMascotAppRunning(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateIsMascotAppRunning()V

    return-void
.end method

.method private final applyMascotView()V
    .locals 6

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->cancelUpdateRunnable:Ljava/lang/Runnable;

    .line 234
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    move-result v1

    const/16 v2, 0x8

    const-string v3, "injector"

    if-nez v1, :cond_1

    .line 236
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;->invalidate()V

    goto :goto_2

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_7

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;->getParent()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 240
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    .line 243
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;->invalidate()V

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method private final isMascotEnabled()Z
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isShowHistoryCountAndMascot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotAppRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isMascotEnabled "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final isShowHistoryCountAndMascot()Z
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    return v1
.end method

.method private final log(Ljava/lang/String;)V
    .locals 0

    .line 227
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "DcmMascotViewContainer"

    .line 228
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private final registerReceiver()V
    .locals 7

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 155
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    .line 156
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    .line 152
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private final sendUnreadCountBroadcast()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final updateIsMascotAppRunning()V
    .locals 4

    const/4 v0, 0x0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->pm:Landroid/content/pm/PackageManager;

    const-string v2, "com.nttdocomo.android.mascot"

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 198
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "isMascotAppRunning : Mascot is stopped."

    .line 199
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    move v1, v0

    .line 198
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotAppRunning:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 205
    :catch_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotAppRunning:Z

    const-string v0, "Not installed MASCOT_PACKAGE"

    .line 206
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final getMascotTotalHeight()I
    .locals 2

    .line 302
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotTopMarin:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotBottomMarin:I

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final init(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "paramInjector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRes()V

    .line 135
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 136
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    const/4 v1, -0x1

    .line 135
    invoke-direct {p1, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->notification_panel_layout_gravity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;->getParent()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->registerReceiver()V

    .line 140
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isBootCompleted:Z

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isWaitingForBootComplete:Z

    .line 145
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sendUnreadCountBroadcast()V

    .line 146
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_1
    const-string p0, "injector"

    .line 138
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isTouchOnMasCotView(FF)Z
    .locals 4

    .line 270
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 272
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v0

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    int-to-float p1, v2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    add-int/2addr v2, p0

    int-to-float p0, v2

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    move v1, p0

    :cond_0
    return v1
.end method

.method public final setMascotRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 218
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    .line 219
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;->needsNotUpdatable()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->cancelUpdateRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 223
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->cancelUpdateRunnable:Ljava/lang/Runnable;

    return-void

    :cond_2
    const-string p0, "injector"

    .line 219
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setMascotViewVisible(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/16 p1, 0x8

    .line 253
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "setMascotViewVisible() "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final updateDelayed(I)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateDelayed$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateDelayed$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    int-to-long p0, p1

    .line 295
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 294
    invoke-interface {v0, v1, p0, p1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public final updateMascotParams()V
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRes()V

    .line 280
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updatePosition(II)I
    .locals 3

    .line 312
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    .line 314
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotTopMarin:I

    if-lez p2, :cond_0

    add-int/2addr v0, p2

    .line 318
    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotBottomMarin:I

    int-to-float p1, p1

    int-to-float v2, v0

    add-float/2addr p1, v2

    .line 319
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    move p2, v1

    move v0, p2

    :goto_0
    add-int/2addr v1, v0

    add-int/2addr v1, p2

    return v1
.end method

.method public final updateRes()V
    .locals 2

    .line 286
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    sget v1, Lcom/android/systemui/R$dimen;->mascot_display_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    .line 288
    sget v1, Lcom/android/systemui/R$dimen;->mascot_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotTopMarin:I

    .line 289
    sget v1, Lcom/android/systemui/R$dimen;->mascot_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotBottomMarin:I

    return-void
.end method
