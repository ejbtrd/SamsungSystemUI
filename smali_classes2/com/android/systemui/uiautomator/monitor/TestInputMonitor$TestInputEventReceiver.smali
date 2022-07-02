.class final Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "TestInputMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TestInputEventReceiver"
.end annotation


# instance fields
.field private final eventHandler:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/InputChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;",
            "Landroid/view/InputChannel;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;->this$0:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor;

    invoke-direct {p0, p3, p4}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;->eventHandler:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1    # Landroid/view/InputEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "inputEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 66
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    .line 70
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$TestInputEventReceiver;->eventHandler:Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-interface {v1, v2}, Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;->onEventHandler(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
