.class Lcom/android/keyguard/KeyguardCarrierViewController$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardCarrierViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierViewController;->onViewAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardCarrierView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string p2, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 144
    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->access$600(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    .line 145
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->access$700(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    goto :goto_1

    .line 141
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->access$500(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    goto :goto_1

    .line 138
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x749e82b0 -> :sswitch_2
        -0x290a5660 -> :sswitch_1
        -0x1423ea3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
