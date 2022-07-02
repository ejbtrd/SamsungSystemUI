.class Lcom/android/keyguard/KeyguardSecESimArea$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSecESimArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecESimArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecESimArea;


# direct methods
.method public static synthetic $r8$lambda$aJ42ROf03G4OptQkKcZCWIE4EjA(Lcom/android/keyguard/KeyguardSecESimArea$1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecESimArea$1;->lambda$onReceive$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSecESimArea;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "KeyguardSecEsimArea"

    const-string p2, "onClick - Remove button"

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecESimArea;->access$300(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result p1

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecESimArea;->access$300(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->removeESim(I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.keyguard.disable_esim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    const-string v1, "KeyguardSecEsimArea"

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecESimArea;->access$000(Lcom/android/keyguard/KeyguardSecESimArea;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error disabling esim, result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switch detailedCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2711

    if-ne p1, v3, :cond_2

    .line 66
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecESimArea;->access$100(Lcom/android/keyguard/KeyguardSecESimArea;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->kg_esim_memory_reset_message_1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 68
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->kg_esim_memory_reset_message_2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 69
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->kg_esim_memory_reset_message_3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 71
    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 72
    sget v2, Lcom/android/systemui/R$string;->kg_esim_memory_reset_remove_button:I

    new-instance v3, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecESimArea$1;)V

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 78
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    const-string p1, "Success ACTION_DISABLE_ESIM"

    .line 82
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecESimArea;->access$200(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 85
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecESimArea;->access$300(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimState(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 86
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecESimArea;->access$300(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimState(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 87
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecESimArea;->access$300(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Dismiss SIM PIN/PUK View"

    .line 88
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecESimArea;->access$200(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecESimArea;->access$200(Lcom/android/keyguard/KeyguardSecESimArea;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 96
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.keyguard.euicc_reset"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 97
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecESimArea;->access$000(Lcom/android/keyguard/KeyguardSecESimArea;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p0

    if-eqz p0, :cond_3

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error euicc memory reset, result code = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p0, "Success ACTION_EUICC_RESET"

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
