.class Lcom/android/keyguard/KeyguardCarrierViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCarrierViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierViewController;
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

    .line 76
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->access$102(Lcom/android/keyguard/KeyguardCarrierViewController;I)I

    .line 80
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->access$200(Lcom/android/keyguard/KeyguardCarrierViewController;I)V

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 1

    .line 85
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

    const-string p2, "KeyguardCarrierView"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x5

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->access$000(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p3, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-static {p3}, Lcom/android/keyguard/KeyguardCarrierViewController;->access$300(Lcom/android/keyguard/KeyguardCarrierViewController;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "Hide OwnerCallButton"

    .line 89
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->access$400(Lcom/android/keyguard/KeyguardCarrierViewController;Z)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->access$000(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    :goto_0
    return-void
.end method
