.class Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;
.super Ljava/lang/Object;
.source "KeyguardKnoxDualDarInnerPinViewController.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

.field final synthetic val$password:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    iput p2, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->val$userId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->access$000(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 154
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public onChecked(ZI)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->access$000(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->access$100(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecPINView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez p1, :cond_0

    .line 143
    iget p1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->val$userId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->onPasswordChecked(IZIZ)V

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public onEarlyMatched()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->access$000(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->this$0:Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    iget v1, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->val$userId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;->onPasswordChecked(IZIZ)V

    .line 134
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController$1;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method
