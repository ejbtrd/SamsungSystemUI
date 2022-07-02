.class Lcom/android/keyguard/KeyguardSecPatternViewController$6;
.super Ljava/lang/Object;
.source "KeyguardSecPatternViewController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 4

    .line 878
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->access$1900(Lcom/android/keyguard/KeyguardSecPatternViewController;)V

    if-eqz p1, :cond_1

    .line 880
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 882
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 884
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    :cond_1
    :goto_0
    return-void
.end method
