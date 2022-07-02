.class Lcom/android/keyguard/KeyguardSecSimPinViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecSimPinViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPinViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;


# direct methods
.method public static synthetic $r8$lambda$J7ca24zCgSTVAE0buTU0pE33TEM(Lcom/android/keyguard/KeyguardSecSimPinViewController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->lambda$onSimStateChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSimStateChanged$0()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$300(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Lcom/android/keyguard/KeyguardSecESimArea;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSecSimPinViewController"

    const-string v1, "eraseSubscriptions"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$300(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Lcom/android/keyguard/KeyguardSecESimArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecESimArea;->eraseSubscriptions()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onSimStateChanged(III)V
    .locals 6

    .line 77
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

    const-string v0, "KeyguardSecSimPinViewController"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    if-eqz p3, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p3, v3, :cond_4

    if-eq p3, v1, :cond_2

    const/4 v4, 0x4

    if-eq p3, v4, :cond_0

    if-eq p3, v2, :cond_4

    .line 145
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    goto/16 :goto_1

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 103
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-interface {p2, v3, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_1

    .line 105
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    goto/16 :goto_1

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$200(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$200(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    if-eqz p1, :cond_b

    .line 111
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 112
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 113
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$200(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    .line 116
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->verifyPasswordAndUnlock()V

    goto/16 :goto_1

    .line 119
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    goto/16 :goto_1

    :cond_4
    if-ne p3, v3, :cond_5

    const-string v4, "Card Remove during SIM PIN "

    .line 83
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-ne p3, v2, :cond_6

    const-string v4, "Card READY during SIM PIN "

    .line 85
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz p2, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 88
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimState(I)Z

    move-result v1

    if-nez v1, :cond_7

    const-string p0, "Dismiss SIM PIN View"

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-interface {p2, v3, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_7
    if-ne p3, v2, :cond_8

    .line 93
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget p2, p2, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    if-eq p2, p1, :cond_8

    const-string p0, "READY already came. Skip this"

    .line 94
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    :cond_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    goto :goto_1

    .line 123
    :cond_9
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isESimRemoveButtonClicked()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 125
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_b

    .line 127
    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPinViewController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$2;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .line 141
    :cond_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->resetState()V

    :cond_b
    :goto_1
    return-void
.end method
