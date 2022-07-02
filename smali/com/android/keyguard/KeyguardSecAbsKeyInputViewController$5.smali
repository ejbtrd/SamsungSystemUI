.class Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;
.super Ljava/lang/Object;
.source "KeyguardSecAbsKeyInputViewController.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

.field final synthetic val$password:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iput p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$userId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 717
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public onChecked(ZI)V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPasswordAndUnlock - onChecked - matched : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecAbsKeyInputViewController.DDAR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 686
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$2100(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 687
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 688
    iget v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$userId:I

    invoke-virtual {p1, v2, v0, p2, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IZIZ)V

    .line 690
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    goto :goto_0

    .line 692
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$userId:I

    invoke-virtual {p1, p0, v1, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IZIZ)V

    :goto_0
    return-void
.end method

.method public onInnerLayerUnlockFailed()V
    .locals 1

    const-string p0, "KeyguardSecAbsKeyInputViewController.DDAR"

    const-string/jumbo v0, "verifyPasswordAndUnlock - onInnerLayerUnlockFailed"

    .line 709
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInnerLayerUnlocked()V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const-string v0, "KeyguardSecAbsKeyInputViewController.DDAR"

    const-string/jumbo v1, "verifyPasswordAndUnlock - onInnerLayerUnlocked"

    .line 701
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$2200(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 703
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 704
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method
