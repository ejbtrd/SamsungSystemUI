.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSysDumpTrigger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;Landroid/os/PowerManager;Landroid/os/UserManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz v0, :cond_6

    const-string p2, "com.salab.issuetracker"

    .line 66
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 71
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 72
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->setEnabled(Z)V

    .line 73
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$startViewCheckTimer(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    goto :goto_2

    :cond_4
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 75
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->setEnabled(Z)V

    .line 77
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "pkg receiver "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSysDumpTrigger"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method
