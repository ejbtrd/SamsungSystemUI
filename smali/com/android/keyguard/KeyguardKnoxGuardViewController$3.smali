.class Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardKnoxGuardViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardKnoxGuardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteLockInfoChanged()V
    .locals 2

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "onRemoteLockInfoChanged"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$200(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$100(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$100(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 147
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$100(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChanged subID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slotId : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", simState : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardKnoxGuardView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    const/4 p1, 0x5

    if-ne p3, p1, :cond_1

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$300(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    :cond_1
    return-void
.end method
