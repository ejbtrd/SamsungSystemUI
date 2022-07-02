.class Lcom/android/keyguard/KeyguardSecSimPukViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecSimPukViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPukViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method public static synthetic $r8$lambda$Hlu2sDoTi-d0qpuVHmc3d0bOHv0(Lcom/android/keyguard/KeyguardSecSimPukViewController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->lambda$onSimStateChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSimStateChanged$0()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$300(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Lcom/android/keyguard/KeyguardSecESimArea;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSecSimPukViewController"

    const-string v1, "eraseSubscriptions"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$300(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Lcom/android/keyguard/KeyguardSecESimArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecESimArea;->eraseSubscriptions()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onSimStateChanged(III)V
    .locals 6

    .line 74
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

    const-string v0, "KeyguardSecSimPukViewController"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    if-eqz p3, :cond_9

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p3, v3, :cond_4

    if-eq p3, v1, :cond_2

    const/4 v4, 0x4

    if-eq p3, v4, :cond_0

    if-eq p3, v2, :cond_4

    .line 142
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    goto/16 :goto_1

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 100
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-interface {p2, v3, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_1

    .line 102
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    goto/16 :goto_1

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$200(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$200(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    if-eqz p1, :cond_b

    .line 108
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 109
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 110
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->access$200(Lcom/android/keyguard/KeyguardSecSimPukViewController;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    .line 113
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->verifyPasswordAndUnlock()V

    goto/16 :goto_1

    .line 116
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    goto/16 :goto_1

    :cond_4
    if-ne p3, v3, :cond_5

    const-string v4, "Card Remove during SIM PUK "

    .line 80
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-ne p3, v2, :cond_6

    const-string v4, "Card READY during SIM PUK "

    .line 82
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz p2, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 85
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimState(I)Z

    move-result v1

    if-nez v1, :cond_7

    const-string p0, "Dismiss SIM PUK View"

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-interface {p2, v3, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_7
    if-ne p3, v2, :cond_8

    .line 90
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget p2, p2, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    if-eq p2, p1, :cond_8

    const-string p0, "READY already came. Skip this"

    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    :cond_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    goto :goto_1

    .line 120
    :cond_9
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isESimRemoveButtonClicked()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 122
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_b

    .line 124
    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPukViewController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPukViewController$2;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    .line 138
    :cond_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->resetState()V

    :cond_b
    :goto_1
    return-void
.end method
