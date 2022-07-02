.class Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;
.super Landroid/os/IRemoteCallback$Stub;
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

    .line 124
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "result"

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "timeout"

    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlock attempt result : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timeout : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "KeyguardKnoxGuardView"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$100(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$100(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 132
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$100(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
