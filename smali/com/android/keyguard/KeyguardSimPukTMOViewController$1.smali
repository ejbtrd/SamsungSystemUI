.class Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPukTMOViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukTMOViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukTMOViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukTMOViewController;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(III)V
    .locals 5

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimStateChanged(subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",state="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardSimPukTMOView"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    const-string v0, "Dismiss required : "

    const-string v1, "Do nothing : "

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p3, v3, :cond_2

    const/4 v4, 0x4

    if-eq p3, v4, :cond_0

    if-eq p3, v2, :cond_2

    goto/16 :goto_1

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-interface {p1, v3, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-ne p3, v3, :cond_3

    const-string v2, "Card Remove during SIM PUK "

    .line 37
    invoke-static {p2, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne p3, v2, :cond_4

    const-string v2, "Card READY during SIM PUK "

    .line 39
    invoke-static {p2, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOViewController;

    .line 42
    invoke-static {p0}, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->access$000(Lcom/android/keyguard/KeyguardSimPukTMOViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimState(I)Z

    move-result p0

    if-nez p0, :cond_5

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-interface {p1, v3, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 46
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
