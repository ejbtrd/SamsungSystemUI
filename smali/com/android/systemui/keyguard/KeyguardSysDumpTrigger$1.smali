.class final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;
.super Ljava/lang/Object;
.source "KeyguardSysDumpTrigger.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;Landroid/os/PowerManager;Landroid/os/UserManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    const/4 v1, 0x0

    .line 438
    :try_start_0
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getContext$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.salab.issuetracker"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 437
    :catch_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->setEnabled(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$getBgHandler$p(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1$1;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-direct {v1, v2}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "isInstalled: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardSysDumpTrigger"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
