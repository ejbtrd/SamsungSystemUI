.class Lcom/android/keyguard/KeyguardSimPersoViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPersoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPersoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(III)V
    .locals 4

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimStateChanged(subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",state="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardSimPersoView"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    if-eq p3, p2, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->resetState()V

    goto :goto_1

    :cond_0
    if-ne p3, v1, :cond_1

    const-string v2, "Card Remove during SIM perso"

    .line 84
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    const-string v2, "Card READY during SIM perso "

    .line 86
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 89
    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$400(Lcom/android/keyguard/KeyguardSimPersoViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimState(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "Dismiss SIM perso View"

    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_3
    if-ne p3, p2, :cond_4

    .line 94
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$500(Lcom/android/keyguard/KeyguardSimPersoViewController;)I

    move-result p2

    if-eq p2, p1, :cond_4

    const-string p0, "READY already came. Skip this"

    .line 95
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->resetState()V

    :goto_1
    return-void
.end method
