.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;
.super Ljava/lang/Object;
.source "SubscreenNotificationController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;
.implements Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscreenNotificationController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscreenNotificationController.kt\ncom/android/systemui/statusbar/notification/SubscreenNotificationController\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,865:1\n114#2,6:866\n*E\n*S KotlinDebug\n*F\n+ 1 SubscreenNotificationController.kt\ncom/android/systemui/statusbar/notification/SubscreenNotificationController\n*L\n756#1,6:866\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private clickedRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private displayContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final edgeManager:Lcom/samsung/android/edge/SemEdgeManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fullScreenIntentEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private groupNotificationList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interruptionStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isCovered:Z

.field private isFolded:Z

.field private isRemoving:Z

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mTimeoutRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final marqueeStartRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private notiPopupBlocked:Z

.field private notiPopupClickTime:J

.field private notiPopupDoubleClicked:Z

.field private notiPopupShowing:Z

.field private notiPopupType:I

.field private notiPopupView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private notificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final powerManager:Landroid/os/PowerManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private presentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private screenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final statusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private subDisplay:Landroid/view/Display;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final subScreenManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topPopupAnimationListener:Landroid/animation/Animator$AnimatorListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private topPopupHeight:I

.field private final wakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private wakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private windowManager:Landroid/view/WindowManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->Companion:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/log/LogBuffer;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/log/LogBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/log/LogBuffer;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interruptionStateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "notificationEntryManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarLazy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pluginAODManagerLazy"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subScreenManagerLazy"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->interruptionStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 68
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 69
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->statusBarLazy:Ldagger/Lazy;

    .line 70
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->pluginAODManagerLazy:Ldagger/Lazy;

    .line 71
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subScreenManagerLazy:Ldagger/Lazy;

    .line 72
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 73
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 97
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    .line 99
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    .line 102
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    .line 107
    new-instance p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$wakefulnessObserver$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$wakefulnessObserver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->wakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 125
    new-instance p5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$topPopupAnimationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->topPopupAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 235
    new-instance p5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$marqueeStartRunnable$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$marqueeStartRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->marqueeStartRunnable:Ljava/lang/Runnable;

    .line 547
    new-instance p5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mTimeoutRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 776
    new-instance p5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$mUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 819
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 820
    sget-boolean p3, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz p3, :cond_0

    if-eqz p7, :cond_0

    .line 821
    invoke-virtual {p7, p5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 823
    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p5

    const-string p6, "getInstance()"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 824
    invoke-virtual {p5, p0, p6}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    const-string p5, "display"

    .line 825
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    const-string/jumbo p6, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {p5, p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Landroid/hardware/display/DisplayManager;

    const-string p6, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 827
    invoke-virtual {p5, p6}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p5

    const-string p6, "dm.getDisplays(DisplayManager.DISPLAY_CATEGORY_BUILTIN)"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p6, 0x1000000a

    const/4 p7, 0x0

    const/4 p8, 0x1

    if-eqz p3, :cond_1

    .line 830
    aget-object p5, p5, p7

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subDisplay:Landroid/view/Display;

    .line 831
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/android/systemui/R$dimen;->clear_cover_subscreen_noti_top_popup_height:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->topPopupHeight:I

    goto :goto_0

    .line 833
    :cond_1
    aget-object p5, p5, p8

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subDisplay:Landroid/view/Display;

    .line 835
    :goto_0
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subDisplay:Landroid/view/Display;

    invoke-virtual {p1, p5}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p5

    const-string v0, "context.createDisplayContext(subDisplay)"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->displayContext:Landroid/content/Context;

    const-string/jumbo p5, "power"

    .line 836
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    const-string/jumbo v0, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Landroid/os/PowerManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->powerManager:Landroid/os/PowerManager;

    .line 837
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    const-wide/32 v1, 0x2bf20

    const-string v3, "SystemUI:SubscreenNotification"

    if-nez v0, :cond_2

    if-eqz p3, :cond_4

    .line 838
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->displayContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string/jumbo v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->windowManager:Landroid/view/WindowManager;

    .line 839
    new-instance p3, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p5, p6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p6

    invoke-static {p6, v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p6

    const-string v0, "S.S.N.:ScreenOn"

    invoke-direct {p3, p6, v0}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->screenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 841
    const-class p3, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 842
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p3, p4}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 845
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, -0x1

    const/4 p6, -0x2

    const-string/jumbo v0, "turn_on_cover_screen_for_notification"

    .line 844
    invoke-static {p3, v0, p4, p6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_3

    move p3, p8

    goto :goto_1

    :cond_3
    move p3, p7

    :goto_1
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupBlocked:Z

    .line 847
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 848
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 850
    new-instance p6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;

    invoke-direct {p6, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/os/Handler;)V

    .line 847
    invoke-virtual {p3, p4, p7, p6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move p6, p8

    .line 860
    :cond_4
    new-instance p2, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p5, p6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    invoke-static {p3, v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p3

    const-string p4, "S.S.N."

    invoke-direct {p2, p3, p4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->wakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const-string p2, "edge"

    .line 862
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type com.samsung.android.edge.SemEdgeManager"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/edge/SemEdgeManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->edgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    return-void
.end method

.method public static final synthetic access$dismissImmediately(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->dismissImmediately()V

    return-void
.end method

.method public static final synthetic access$getClickedRunnable$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ljava/lang/Runnable;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->clickedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCurrentEntry$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public static final synthetic access$getFullScreenIntentEntries$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMTimeoutRunnable$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ljava/lang/Runnable;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getNotiPopupBlocked$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupBlocked:Z

    return p0
.end method

.method public static final synthetic access$getNotiPopupShowing$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupShowing:Z

    return p0
.end method

.method public static final synthetic access$getNotiPopupType$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    return p0
.end method

.method public static final synthetic access$getNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getNotiTemplate$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    return-object p0
.end method

.method public static final synthetic access$getPluginAODManagerLazy$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ldagger/Lazy;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->pluginAODManagerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getPresentation$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->presentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    return-object p0
.end method

.method public static final synthetic access$getScreenOnwakelock$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->screenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-object p0
.end method

.method public static final synthetic access$getStatusBarLazy$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ldagger/Lazy;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->statusBarLazy:Ldagger/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getTopPopupAnimationListener$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->topPopupAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public static final synthetic access$getTopPopupHeight$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->topPopupHeight:I

    return p0
.end method

.method public static final synthetic access$getWakelock$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->wakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-object p0
.end method

.method public static final synthetic access$getWindowManager$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Landroid/view/WindowManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static final synthetic access$isCovered$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isCovered:Z

    return p0
.end method

.method public static final synthetic access$isRemoving$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isRemoving:Z

    return p0
.end method

.method public static final synthetic access$setClickedRunnable$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ljava/lang/Runnable;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->clickedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setCovered$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isCovered:Z

    return-void
.end method

.method public static final synthetic access$setCurrentEntry$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method

.method public static final synthetic access$setNotiPopupBlocked$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupBlocked:Z

    return-void
.end method

.method public static final synthetic access$setNotiPopupDoubleClicked$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupDoubleClicked:Z

    return-void
.end method

.method public static final synthetic access$setNotiPopupShowing$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupShowing:Z

    return-void
.end method

.method public static final synthetic access$setNotiPopupType$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    return-void
.end method

.method public static final synthetic access$setNotiPopupView$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setNotiTemplate$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    return-void
.end method

.method public static final synthetic access$setPresentation$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->presentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    return-void
.end method

.method public static final synthetic access$setRemoving$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isRemoving:Z

    return-void
.end method

.method public static final synthetic access$showDetailAgain(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->showDetailAgain()V

    return-void
.end method

.method private final dismissImmediately()V
    .locals 6

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "S.S.N."

    const-string v1, " DISMISS IMMEDIATELY "

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 609
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isRemoving:Z

    .line 610
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->marqueeStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 611
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 612
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->wakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 613
    :goto_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v1, :cond_9

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->screenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->isAcquired()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 615
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->screenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 618
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupShowing:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 619
    iget v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 621
    sget-boolean v2, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v2, :cond_5

    .line 622
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->topPopupHeight:I

    mul-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string/jumbo v2, "ofFloat(notiPopupView, View.TRANSLATION_Y,0F, (topPopupHeight * -1).toFloat())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x190

    .line 623
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_3

    .line 625
    :cond_5
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string/jumbo v2, "ofFloat(notiPopupView, View.TRANSLATION_Y, 0F, -71F)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    .line 626
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 628
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->topPopupAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 629
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_5

    .line 631
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->windowManager:Landroid/view/WindowManager;

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 632
    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupShowing:Z

    .line 633
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupView:Landroid/view/View;

    .line 636
    :cond_8
    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    .line 638
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->presentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    if-nez p0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_6

    .line 640
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->showDetailAgain()V

    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3d720000    # -71.0f
    .end array-data
.end method

.method private final getFirstChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 725
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSummaryWithChildren()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 728
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object p1

    const-string/jumbo v0, "summary.getRow().getChildrenContainer()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 730
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "ncc.getAttachedChildren().get(0)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private final isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 9

    .line 274
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->needsAlert(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    .line 275
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 276
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->visibility:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 277
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->semFlags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    .line 278
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->edgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x2

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/edge/SemEdgeManager;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v6

    .line 279
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_b

    const-string v7, ""

    if-nez v6, :cond_3

    const-string v8, ":!isActivatedPackage:"

    .line 282
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    if-nez v0, :cond_4

    const-string v8, ":!needsAlert:"

    .line 285
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    if-nez v1, :cond_5

    const-string v8, ":!isNotSummary:"

    .line 288
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    if-eqz v4, :cond_6

    const-string v8, ":isSecret:"

    .line 291
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    if-eqz v5, :cond_7

    const-string v8, ":isDisabledByApp:"

    .line 294
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 296
    :cond_7
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isFolded:Z

    if-nez v8, :cond_8

    const-string v8, ":!isFolded:"

    .line 297
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 299
    :cond_8
    sget-boolean v8, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isCovered:Z

    if-nez v8, :cond_9

    const-string v8, ":!isCovered:"

    .line 300
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 302
    :cond_9
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_a

    move v8, v2

    goto :goto_3

    :cond_a
    move v8, v3

    :goto_3
    if-nez v8, :cond_b

    .line 303
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->logReason(Ljava/lang/String;)V

    .line 306
    :cond_b
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz p1, :cond_d

    if-eqz v6, :cond_c

    if-nez v5, :cond_c

    .line 307
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isCovered:Z

    if-eqz p0, :cond_c

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    move v2, v3

    :goto_4
    return v2

    :cond_d
    if-eqz v6, :cond_e

    if-nez v5, :cond_e

    .line 309
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isFolded:Z

    if-eqz p0, :cond_e

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    move v2, v3

    :goto_5
    return v2
.end method

.method private final makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 11

    .line 320
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomBigNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomHeadsupNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomPublicNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 325
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v3

    .line 326
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 327
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " MAKE DETAIL : exist - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v7, 0x0

    if-nez v6, :cond_3

    move-object v6, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isCustom - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " needsRedaction - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hasPublic - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "S.S.N."

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-boolean v5, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    const/4 v8, 0x2

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v5, :cond_4

    goto :goto_3

    .line 369
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto/16 :goto_7

    .line 331
    :cond_5
    :goto_3
    iget v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    if-nez v5, :cond_c

    .line 332
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->powerManager:Landroid/os/PowerManager;

    if-nez v5, :cond_6

    move-object v5, v7

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 333
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    move v9, v2

    goto :goto_5

    :cond_7
    move v9, v1

    :goto_5
    if-eqz v5, :cond_8

    if-nez v9, :cond_8

    .line 335
    iput v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    goto :goto_6

    .line 337
    :cond_8
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    .line 339
    :goto_6
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupBlocked:Z

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    if-ne v10, v2, :cond_9

    if-nez v9, :cond_9

    const-string p1, " MAKE DETAIL : full popup not showing"

    .line 341
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    .line 343
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    return-void

    .line 346
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " MAKE DETAIL : isInteractive - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " notiPopupType - "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    .line 346
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " fullScreenNoti - "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 349
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 350
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v5, :cond_a

    .line 352
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    const-string v9, " MAKE DETAIL : groupSummary for - "

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 354
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 356
    :cond_a
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_7

    .line 359
    :cond_b
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_7

    .line 362
    :cond_c
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_d

    return-void

    .line 365
    :cond_d
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :goto_7
    if-eqz v3, :cond_11

    if-eqz v4, :cond_10

    if-eqz v0, :cond_f

    .line 372
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomPublicNotification()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_8

    :cond_e
    move p1, v1

    goto :goto_9

    :cond_f
    :goto_8
    move p1, v2

    :goto_9
    if-eqz p1, :cond_10

    .line 373
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailPublic;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailPublic;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    goto :goto_a

    .line 375
    :cond_10
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    goto :goto_a

    :cond_11
    if-eqz v0, :cond_12

    .line 378
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationRestricted;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    goto :goto_a

    .line 380
    :cond_12
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 382
    :goto_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez p1, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->setCallback(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;)V

    .line 383
    :goto_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez p1, :cond_14

    goto :goto_c

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    if-ne p0, v8, :cond_15

    move v1, v2

    :cond_15
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    :goto_c
    return-void
.end method

.method private final needsAlert(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 314
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->interruptionStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->canHeadsUpCommonForFrontCoverScreen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final showDetailAgain()V
    .locals 4

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 593
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 595
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 597
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 598
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->showSubscreenNotification()V

    .line 600
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, " AGAIN "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S.S.N."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final showSubscreenNotification()V
    .locals 12

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-eqz v0, :cond_1d

    .line 163
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "  showSubscreenNotification - "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_f

    .line 165
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_f

    .line 166
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x7e5

    const v10, 0x1000128

    const/4 v11, -0x3

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v6, 0x30

    .line 174
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 175
    sget-boolean v6, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v6, :cond_1

    .line 176
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 177
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 178
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 180
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupShowing:Z

    if-eqz v7, :cond_8

    .line 181
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 182
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->windowManager:Landroid/view/WindowManager;

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v8, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 184
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->windowManager:Landroid/view/WindowManager;

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez v8, :cond_5

    move-object v8, v4

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->getView()Landroid/view/View;

    move-result-object v8

    :goto_1
    invoke-interface {v7, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez v0, :cond_6

    move-object v0, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->getView()Landroid/view/View;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupView:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_7

    move-object v0, v4

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v7, "  Noti popup updated - "

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 188
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->windowManager:Landroid/view/WindowManager;

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez v8, :cond_a

    move-object v8, v4

    goto :goto_5

    :cond_a
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->getView()Landroid/view/View;

    move-result-object v8

    :goto_5
    invoke-interface {v7, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :goto_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupShowing:Z

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez v0, :cond_b

    move-object v0, v4

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->getView()Landroid/view/View;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupView:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_c

    move-object v0, v4

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_8
    const-string v7, "  Noti popup attached - "

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    if-eqz v6, :cond_d

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    iget v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->topPopupHeight:I

    mul-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    aput v6, v5, v2

    const/4 v6, 0x0

    aput v6, v5, v3

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v1, "ofFloat(notiPopupView, View.TRANSLATION_Y, (topPopupHeight * -1).toFloat(), 0F)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x190

    .line 196
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_a

    .line 198
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v1, "ofFloat(notiPopupView, View.TRANSLATION_Y, -71F, 0F)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0xc8

    .line 199
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 201
    :goto_a
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->powerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_f

    .line 204
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->presentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    if-nez v0, :cond_12

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_10

    move-object v0, v4

    goto :goto_b

    :cond_10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_b
    const-string v5, "  SHOW NEW - "

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->displayContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez v7, :cond_11

    move-object v7, v4

    goto :goto_c

    :cond_11
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->getView()Landroid/view/View;

    move-result-object v7

    :goto_c
    invoke-direct {v0, p0, v5, v6, v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/content/Context;Landroid/view/Display;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->presentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    .line 208
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    const-string v5, "Invalid display: "

    .line 210
    invoke-static {v1, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->presentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    goto :goto_e

    .line 215
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez v0, :cond_13

    move-object v0, v4

    goto :goto_d

    :cond_13
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->getView()Landroid/view/View;

    move-result-object v0

    :goto_d
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->updateSubscreenNotificationView(Landroid/view/View;)V

    .line 217
    :goto_e
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_15

    .line 218
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/doze/PluginAODManager;->requestDozeState(IZ)V

    .line 221
    :cond_15
    :goto_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->wakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-nez v0, :cond_16

    goto :goto_10

    :cond_16
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 222
    :goto_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v1, :cond_17

    goto :goto_11

    :cond_17
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    :goto_11
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    move v0, v3

    goto :goto_12

    :cond_18
    move v0, v2

    .line 223
    :goto_12
    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez v1, :cond_19

    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v1, :cond_1b

    :cond_19
    if-eqz v0, :cond_1b

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->screenOnwakelock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-nez v1, :cond_1a

    goto :goto_13

    :cond_1a
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 227
    :cond_1b
    :goto_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->marqueeStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->marqueeStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    const-wide/32 v4, 0x2bf20

    goto :goto_14

    :cond_1c
    const-wide/16 v4, 0xbb8

    :goto_14
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isRemoving:Z

    :cond_1d
    return-void

    :array_0
    .array-data 4
        -0x3d720000    # -71.0f
        0x0
    .end array-data
.end method

.method private final showSubscreenToast()V
    .locals 5

    .line 240
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    .line 241
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->setCallback(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->getView()Landroid/view/View;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->updateSubscreenNotificationView(Landroid/view/View;)V

    .line 244
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$showSubscreenToast$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$showSubscreenToast$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->clickedRunnable:Ljava/lang/Runnable;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->marqueeStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isRemoving:Z

    return-void
.end method

.method private final updateSubscreenNotificationView(Landroid/view/View;)V
    .locals 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SHOW UPDATED - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    instance-of v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast;

    if-eqz v1, :cond_1

    const-string v1, " <T> "

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 256
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->presentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$updateSubscreenNotificationView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$updateSubscreenNotificationView$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->clickedRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method


# virtual methods
.method public final getBixbyNotificationInfo()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getBixbyNotificationInfo()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getLockscreenNotiCallback()Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getLockscreenNotiCallback()Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getNotificationActivityStarter()Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-object p0
.end method

.method public final getSubRoomNotificaiton()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    return-object p0
.end method

.method public final logReason(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 758
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$logReason$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$logReason$2;

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "S.S.N."

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 757
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public onDetailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "S.S.N."

    if-nez p1, :cond_0

    const-string p1, " TOAST CLICKED "

    .line 651
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->dismissImmediately()V

    return-void

    .line 655
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DETAIL CLICKED "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 678
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->showSubscreenToast()V

    goto :goto_5

    .line 657
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string p0, " DETAIL CLICKED fullscreenIntent so return"

    .line 658
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 661
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupDoubleClicked:Z

    if-nez v0, :cond_4

    .line 662
    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupClickTime:J

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupClickTime:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupDoubleClicked:Z

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getSubscreenNotificationInfoManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object p1

    .line 671
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->notifyNotificationSubRoomRequest()V

    .line 672
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {v0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->showDetailNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 674
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$onDetailClicked$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$onDetailClicked$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V

    .line 676
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notiPopupType:I

    if-ne p0, v1, :cond_8

    const-wide/16 v1, 0xc8

    goto :goto_4

    :cond_8
    const-wide/16 v1, 0x0

    .line 674
    :goto_4
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    return-void
.end method

.method public final onDisplayReady()V
    .locals 2

    .line 765
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 767
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    const-string v1, "dm.getDisplays(DisplayManager.DISPLAY_CATEGORY_VIEW_COVER_DISPLAY)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 768
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subDisplay:Landroid/view/Display;

    .line 769
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.createDisplayContext(subDisplay)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->displayContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 770
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->windowManager:Landroid/view/WindowManager;

    const-string p0, "S.S.N."

    const-string v0, " CC screen - onDisplayReady"

    .line 771
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEntryReinflated "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_6

    .line 390
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isFolded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isCovered:Z

    if-eqz v0, :cond_3

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 393
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificaitonInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 395
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 396
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 397
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-nez v1, :cond_6

    .line 398
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 399
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 409
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->showSubscreenNotification()V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/internal/statusbar/NotificationVisibility;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "entry"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    sget-boolean p2, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    const-string p3, "S.S.N."

    if-nez p2, :cond_0

    sget-boolean p4, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz p4, :cond_5

    .line 456
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "onEntryRemoved "

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isFolded:Z

    if-nez p4, :cond_1

    iget-boolean p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isCovered:Z

    if-eqz p4, :cond_3

    .line 458
    :cond_1
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p4, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 460
    :cond_3
    :goto_0
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez p4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setRemoveGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 461
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p4

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_5
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_8

    .line 470
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p4

    const-string v0, " REMOVE fullscreenIntent notification - "

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p3, "null cannot be cast to non-null type com.android.systemui.statusbar.notification.collection.NotificationEntry"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 472
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez p2, :cond_7

    .line 473
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz p1, :cond_6

    goto :goto_2

    .line 476
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 477
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 474
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->dismissImmediately()V

    :cond_8
    :goto_3
    return-void
.end method

.method public onFoldStateChanged(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "FOLD "

    goto :goto_0

    :cond_0
    const-string v0, "UNFOLD "

    :goto_0
    const-string v1, " FOLD STATE - "

    .line 683
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 685
    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 686
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->clickedRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    .line 687
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 688
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->clickedRunnable:Ljava/lang/Runnable;

    .line 690
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->dismissImmediately()V

    .line 692
    :cond_3
    sget-boolean v2, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_PENDING_WECHAT_CALL:Z

    if-eqz v2, :cond_5

    .line 693
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->setSkipFullScreenIntent(Z)V

    :cond_5
    :goto_2
    if-eqz v1, :cond_d

    .line 696
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_6

    .line 700
    :cond_7
    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_PENDING_WECHAT_CALL:Z

    if-eqz v1, :cond_9

    .line 701
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->setSkipFullScreenIntent(Z)V

    .line 703
    :cond_9
    :goto_3
    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz v1, :cond_d

    .line 704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getSubRoomNotificaiton()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initData()V

    .line 706
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 707
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->clickedRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    if-nez v1, :cond_b

    goto :goto_5

    .line 708
    :cond_b
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 709
    :goto_5
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->clickedRunnable:Ljava/lang/Runnable;

    .line 711
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->dismissImmediately()V

    .line 715
    :cond_d
    :goto_6
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isFolded:Z

    return-void
.end method

.method public onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNotificationAdded "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_5

    .line 416
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isFolded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isCovered:Z

    if-eqz v0, :cond_3

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 420
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 421
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 422
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_5

    .line 423
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 424
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->groupNotificationList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 434
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_8

    .line 436
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v3, "call"

    .line 437
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "alarm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string p0, "fullscreenIntent and this category is not supported in subscreen, so return - category = "

    .line 438
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    if-eqz v2, :cond_9

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->fullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->showSubscreenNotification()V

    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onVetoClicked()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->currentEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, " VETO CLICKED "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->dismissImmediately()V

    return-void
.end method

.method public final setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-void
.end method

.method public final showDetail(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 740
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    const-string v1, "S.S.N."

    if-eqz v0, :cond_0

    .line 742
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getFirstChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_0
    const-string v2, " SHOW SUMMARY : no visible child in group"

    .line 747
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ICON CLICKED - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v0, " <is> "

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 751
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->showSubscreenNotification()V

    :cond_3
    return-void
.end method
