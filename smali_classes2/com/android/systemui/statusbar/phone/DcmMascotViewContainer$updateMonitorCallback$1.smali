.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DcmMascotViewContainer.kt"


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 123
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$updateIsMascotAppRunning(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getInjector$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    goto :goto_1

    :cond_1
    const-string p0, "injector"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method
