.class Lcom/android/keyguard/DualDarInnerLockScreenController$4;
.super Ljava/lang/Object;
.source "DualDarInnerLockScreenController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/DualDarInnerLockScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method public static synthetic $r8$lambda$ga5lK_HUftqWSDY-mUMHbHH4mTY(Lcom/android/keyguard/DualDarInnerLockScreenController$4;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->lambda$dismiss$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oBXrMidvMTUeaH3BjIxXSRMX3K4(Lcom/android/keyguard/DualDarInnerLockScreenController$4;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->lambda$dismiss$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$dismiss$0(I)V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0, p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$100(Lcom/android/keyguard/DualDarInnerLockScreenController;I)V

    return-void
.end method

.method private synthetic lambda$dismiss$1(I)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0, p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$100(Lcom/android/keyguard/DualDarInnerLockScreenController;I)V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 1

    .line 245
    iget-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$400(Lcom/android/keyguard/DualDarInnerLockScreenController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController$4;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismiss(ZIZ)V
    .locals 0

    .line 253
    iget-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$400(Lcom/android/keyguard/DualDarInnerLockScreenController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/keyguard/DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController$4;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCancelClicked()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {v0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onCancelClicked()V

    :cond_0
    return-void
.end method

.method public onUserInput()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {v0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    :cond_0
    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 1

    if-eqz p2, :cond_0

    .line 264
    iget-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object p2, p2, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p2, p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->clearFailedUnlockAttempts(I)V

    .line 265
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$500(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {v0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {v0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {v0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-static {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method
