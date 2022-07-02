.class Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;
.super Ljava/lang/Object;
.source "KeyguardSecAbsKeyInputViewController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 5

    .line 1337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    .line 1338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->initializeBottomContainerView(J)V

    if-eqz p1, :cond_1

    .line 1340
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 1342
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 1344
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$6;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    :cond_1
    :goto_0
    return-void
.end method
