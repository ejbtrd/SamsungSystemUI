.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;
.super Ljava/lang/Object;
.source "DcmMascotViewContainer.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/pm/PackageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string/jumbo v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    .line 56
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getBlockingQueue$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Ljava/util/concurrent/BlockingDeque;

    move-result-object p1

    invoke-static {p2}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onServiceConnected exception "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string/jumbo p1, "onServiceDisconnected"

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    return-void
.end method
