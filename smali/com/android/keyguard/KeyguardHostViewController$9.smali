.class Lcom/android/keyguard/KeyguardHostViewController$9;
.super Landroid/os/CountDownTimer;
.source "KeyguardHostViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostViewController;->handleAttemptLockout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final attemptRemainingBeforeWipe:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostViewController;JJ)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 924
    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$400(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->attemptRemainingBeforeWipe:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$3402(Lcom/android/keyguard/KeyguardHostViewController;Z)Z

    .line 939
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1400(Lcom/android/keyguard/KeyguardHostViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1500(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$3502(Lcom/android/keyguard/KeyguardHostViewController;Z)Z

    .line 943
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2600(Lcom/android/keyguard/KeyguardHostViewController;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 929
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardHostViewController;->access$3402(Lcom/android/keyguard/KeyguardHostViewController;Z)Z

    .line 930
    iget p1, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->attemptRemainingBeforeWipe:I

    if-lez p1, :cond_0

    .line 931
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardHostViewController;->access$3502(Lcom/android/keyguard/KeyguardHostViewController;Z)Z

    .line 932
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$9;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2600(Lcom/android/keyguard/KeyguardHostViewController;)V

    :cond_0
    return-void
.end method
