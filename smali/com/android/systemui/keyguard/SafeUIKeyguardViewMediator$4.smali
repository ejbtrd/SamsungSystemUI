.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;
.super Landroid/content/BroadcastReceiver;
.source "SafeUIKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    .line 1789
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    .line 1792
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo p1, "seq"

    .line 1793
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "KeyguardViewMediator"

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayedShowingSequence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 1795
    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1794
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v1

    .line 1797
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$2900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 1798
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1800
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string p1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    .line 1801
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "seq"

    .line 1802
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.intent.extra.USER_ID"

    .line 1803
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_3

    .line 1805
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    .line 1806
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$3000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 1807
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$3100(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;I)V

    .line 1809
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
