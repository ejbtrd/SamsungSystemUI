.class Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;
.super Ljava/lang/Object;
.source "KeyguardSecPatternViewController.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternDetected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;I)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iput p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    .line 235
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public onChecked(ZI)V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPatternDetected - onChecked - matched : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPatternViewController.DDAR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 207
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object v2, p1, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 208
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->val$userId:I

    invoke-virtual {p1, p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternChecked(IZIZ)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->val$userId:I

    invoke-virtual {p1, p2, v1, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternChecked(IZIZ)V

    .line 213
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    :goto_0
    return-void
.end method

.method public onInnerLayerUnlockFailed()V
    .locals 2

    const-string v0, "KeyguardSecPatternViewController.DDAR"

    const-string v1, "onPatternDetected - onInnerLayerUnlockFailed"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 228
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method public onInnerLayerUnlocked()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const-string v0, "KeyguardSecPatternViewController.DDAR"

    const-string v1, "onPatternDetected - onInnerLayerUnlocked"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
