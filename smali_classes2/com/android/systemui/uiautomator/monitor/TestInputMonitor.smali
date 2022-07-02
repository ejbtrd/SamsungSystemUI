.class public Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;
.super Ljava/lang/Object;
.source "TestInputMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$Companion;,
        Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;,
        Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tag:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInputHandler:Lcom/android/systemui/uiautomator/monitor/TestInputHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInputMonitor:Landroid/view/InputMonitor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mTestInputEventReceiver:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->Companion:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$Companion;

    .line 24
    const-class v0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final goToHome()V
    .locals 2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    iget-object p0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final getEventList()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/uiautomator/monitor/TestInputHandler;

    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->getEventList()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public final start()V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->tag:Ljava/lang/String;

    const-string v2, ".Thread"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    .line 32
    new-instance v0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;

    invoke-direct {v0}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/uiautomator/monitor/TestInputHandler;

    .line 33
    new-instance v0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;

    iget-object v2, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/uiautomator/monitor/TestInputHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;-><init>(Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->goToHome()V

    const-string p0, ":: start ::"

    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    :goto_0
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 43
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;

    .line 44
    iget-object v1, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 45
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/uiautomator/monitor/TestInputHandler;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->release()V

    .line 47
    :goto_3
    iput-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/uiautomator/monitor/TestInputHandler;

    .line 49
    sget-object p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;->tag:Ljava/lang/String;

    const-string v0, ":: stop ::"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
