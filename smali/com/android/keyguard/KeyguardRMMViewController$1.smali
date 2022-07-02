.class Lcom/android/keyguard/KeyguardRMMViewController$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "KeyguardRMMViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardRMMViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMViewController;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "result"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRMMViewController;->access$000(Lcom/android/keyguard/KeyguardRMMViewController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRMMViewController;->access$000(Lcom/android/keyguard/KeyguardRMMViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->access$000(Lcom/android/keyguard/KeyguardRMMViewController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
