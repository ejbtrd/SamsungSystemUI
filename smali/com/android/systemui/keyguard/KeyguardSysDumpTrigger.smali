.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;
.super Ljava/lang/Object;
.source "KeyguardSysDumpTrigger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SYSDUMP_COMPONENT_NAME:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bgHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancelExecToken:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private countDownTimer:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dumpPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isDebug:Z

.field private isEnabled:Z

.field private keyIndex:I

.field private final notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final powerManager:Landroid/os/PowerManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private prevEventTime:J

.field private final receiver:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private timer:Ljava/util/Timer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userManager:Landroid/os/UserManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->Companion:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$Companion;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 408
    fill-array-data v0, :array_0

    .line 407
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    .line 414
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.servicemodeapp"

    const-string v2, "com.sec.android.app.servicemodeapp.SysDump"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->SYSDUMP_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void

    nop

    :array_0
    .array-data 4
        0x18
        0x18
        0x18
        0x19
        0x19
        0x19
        0x18
        0x19
        0x18
        0x19
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;Landroid/os/PowerManager;Landroid/os/UserManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/PowerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/UserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateMonitor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationEntryManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->bgHandler:Landroid/os/Handler;

    .line 50
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->powerManager:Landroid/os/PowerManager;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->userManager:Landroid/os/UserManager;

    .line 52
    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 53
    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 54
    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 59
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->timer:Ljava/util/Timer;

    .line 62
    new-instance p3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->receiver:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;

    .line 81
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result p1

    sget p4, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-ne p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isDebug:Z

    .line 436
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    new-instance p4, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    .line 455
    invoke-virtual {p4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "package"

    .line 456
    invoke-virtual {p4, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 457
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p5, 0x0

    const/4 p0, 0x0

    const/16 p7, 0xc

    const/4 p8, 0x0

    move-object p2, p6

    move-object p6, p0

    .line 453
    invoke-static/range {p2 .. p8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getBgHandler$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->bgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCountDownTimer$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/os/CountDownTimer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$getDumpPath$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->dumpPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getExecutor$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public static final synthetic access$getSYSDUMP_COMPONENT_NAME$cp()Landroid/content/ComponentName;
    .locals 1

    .line 44
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->SYSDUMP_COMPONENT_NAME:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static final synthetic access$getTimer$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Ljava/util/Timer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method public static final synthetic access$getTriggerMsg(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;I)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getTriggerMsg(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTriggerMsgDetail(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getTriggerMsgDetail(IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUpdateMonitor$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method public static final synthetic access$getViewCount$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->viewCount:J

    return-wide v0
.end method

.method public static final synthetic access$setCountDownTimer$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static final synthetic access$setDumpPath$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->dumpPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setViewCount$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->viewCount:J

    return-void
.end method

.method public static final synthetic access$startGCTimer(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;JJ)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->startGCTimer(JJ)V

    return-void
.end method

.method public static final synthetic access$startViewCheckTimer(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->startViewCheckTimer()V

    return-void
.end method

.method public static final synthetic access$viewCountAfterGC(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->viewCountAfterGC()V

    return-void
.end method

.method private final getReportedTime(I)J
    .locals 3

    .line 247
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    const-string v0, "com.android.systemui.OutOfMemory"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "context.getSharedPreferences(\"com.android.systemui.OutOfMemory\", Context.MODE_PRIVATE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "memory_leak"

    .line 251
    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-string p1, "heap_dump"

    .line 250
    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method private final getTriggerMsg(I)Ljava/lang/String;
    .locals 3

    .line 221
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getTriggerMsgPrefix(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "too many views. notiCount : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". totalView : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->viewCount:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "saved heap dump"

    goto :goto_0

    :cond_2
    const-string p0, "input keys"

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "timeout of app resume"

    .line 221
    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getTriggerMsgDetail(IJ)Ljava/lang/String;
    .locals 1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getTriggerMsg(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/systemui/util/LogUtil;->makeDateTimeStr(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getTriggerMsgPrefix(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    const-string/jumbo p0, "systemui heap dump - "

    goto :goto_0

    :cond_0
    const-string p0, "lockscreen dump - "

    :goto_0
    return-object p0
.end method

.method protected static synthetic isEnabled$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic setTrigger$default(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;JIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, 0x1356

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 88
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->setTrigger(JI)V

    return-void
.end method

.method private final start(JIJ)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancel()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    invoke-interface {v0, v1, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Ljava/lang/Runnable;

    .line 108
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo p1, "start "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSysDumpTrigger"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final startGCTimer(JJ)V
    .locals 8

    .line 336
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->bgHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startGCTimer$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final startViewCheckTimer()V
    .locals 7

    .line 371
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/log/leak/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$fileList$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$fileList$1;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 375
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 376
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v1, "Exception : "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSysDumpTrigger"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    .line 384
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->updateTime(JI)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 387
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->timer:Ljava/util/Timer;

    .line 388
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startViewCheckTimer$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    const-wide/32 v3, 0xea60

    const-wide/32 v5, 0xa4cb80

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private final updateTime(JI)V
    .locals 2

    .line 234
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    const-string v0, "com.android.systemui.OutOfMemory"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "memory_leak"

    .line 237
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const-string v0, "heap_dump"

    .line 236
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    :goto_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p0

    .line 241
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "New timeStamp of reason "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string/jumbo p3, "yyyy-MM-dd (a) HH:mm:ss.SSS"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSysDumpTrigger"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final userActivity()V
    .locals 3

    .line 158
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method private final viewCountAfterGC()V
    .locals 4

    .line 328
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->viewCount:J

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :goto_0
    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->countDownTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Ljava/lang/Runnable;

    :goto_0
    const-string p0, "KeyguardSysDumpTrigger"

    const-string v0, "cancel"

    .line 100
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final getKeys()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 231
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    return-object p0
.end method

.method public final interceptKey(Landroid/view/KeyEvent;)V
    .locals 11
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 117
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    const/4 p1, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    if-lez v2, :cond_4

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    sub-int/2addr v2, v4

    aget v2, v3, v2

    if-ne v0, v2, :cond_4

    :goto_0
    move v0, p1

    goto :goto_2

    .line 121
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 122
    sget-object v5, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    aget v5, v5, v6

    if-ne v0, v5, :cond_4

    if-eqz v6, :cond_3

    .line 123
    iget-wide v7, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->prevEventTime:J

    sub-long v7, v2, v7

    const-wide/16 v9, 0x320

    cmp-long v0, v7, v9

    if-gtz v0, :cond_4

    .line 124
    :cond_3
    iput-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->prevEventTime:J

    add-int/2addr v6, v4

    .line 125
    iput v6, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    goto :goto_0

    :cond_4
    :goto_1
    move v0, v4

    .line 137
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isDebug:Z

    const-string v3, "KeyguardSysDumpTrigger"

    if-eqz v2, :cond_5

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptKey action="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " index="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reset="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v1, :cond_6

    .line 141
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    sget-object v5, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    rem-int/2addr v2, v5

    if-ne v2, v4, :cond_6

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->userActivity()V

    :cond_6
    if-nez v1, :cond_7

    .line 145
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    array-length v2, v2

    if-ne v1, v2, :cond_7

    const-string v0, "matched keys"

    .line 146
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->start(JIJ)V

    goto :goto_3

    :cond_7
    move v4, v0

    :goto_3
    if-eqz v4, :cond_8

    .line 152
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->keyIndex:I

    const-wide/16 v0, 0x0

    .line 153
    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->prevEventTime:J

    :cond_8
    return-void
.end method

.method protected final isEnabled()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isDebug:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final makeHeapDump()V
    .locals 10

    .line 302
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/log/leak/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 308
    :cond_0
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$makeHeapDump$fileList$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$makeHeapDump$fileList$1;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 310
    array-length v4, v2

    :cond_1
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xa4cb80

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    return-void

    .line 317
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/heap-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_com.android.systemui.hprof"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 319
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->dumpPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v1, "Exception : "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSysDumpTrigger"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x3

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->registerHeapDump(I)V

    return-void
.end method

.method public final registerHeapDump(I)V
    .locals 13

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto/16 :goto_1

    .line 291
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getReportedTime(I)J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb80

    add-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-gez p1, :cond_5

    .line 292
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getReportedTime(I)J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-gez p1, :cond_5

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    move-object v4, p0

    .line 293
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->start(JIJ)V

    .line 294
    invoke-direct {p0, v0, v1, v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->updateTime(JI)V

    goto :goto_1

    .line 266
    :cond_2
    :try_start_0
    new-instance p1, Ljava/io/File;

    const-string v3, "/data/log/core/"

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getReportedTime(I)J

    move-result-wide v3

    .line 268
    sget-object v5, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$registerHeapDump$fileList$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$registerHeapDump$fileList$1;

    invoke-virtual {p1, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 271
    array-length v8, p1

    :cond_3
    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v9, p1, v7

    const-string v10, "fileList"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    .line 272
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v10, v3, v10

    if-eqz v10, :cond_3

    const-wide/32 v10, 0x2932e00

    sub-long v10, v0, v10

    cmp-long v10, v3, v10

    if-gez v10, :cond_3

    .line 274
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v12, v5, v10

    if-gez v12, :cond_3

    .line 277
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->dumpPath:Ljava/lang/String;

    move-wide v5, v10

    goto :goto_0

    .line 281
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->dumpPath:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    move-object v7, p0

    .line 282
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->start(JIJ)V

    .line 283
    invoke-direct {p0, v5, v6, v2}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->updateTime(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 287
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p1, "exception : "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSysDumpTrigger"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method protected final sendIntent(IJ)V
    .locals 9

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 168
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->userManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendIntent reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSysDumpTrigger"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->userActivity()V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->bgHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;

    move-object v1, v8

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;-><init>(IZLcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final setEnabled(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled:Z

    return-void
.end method

.method public final setTrigger()V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->setTrigger$default(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;JIILjava/lang/Object;)V

    return-void
.end method

.method public final setTrigger(JI)V
    .locals 7

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v5, -0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    .line 92
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->start(JIJ)V

    return-void
.end method
