.class Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;
.super Ljava/lang/Object;
.source "KeyguardSecSecurityContainerController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->dismiss(ZIZ)V

    return-void
.end method

.method public dismiss(ZIZ)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZIZ)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUnlockingKeyguard(Z)V

    :cond_0
    return-void
.end method

.method public onCancelClicked()V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onCancelClicked()V

    return-void
.end method

.method public onUserInput()V
    .locals 0

    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 1

    if-eqz p2, :cond_1

    .line 153
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 154
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 155
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$200(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    const/high16 v0, 0x24000000

    invoke-static {p2, p3, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "KeyguardSecSecurityView"

    const-string p3, "Alarm manager have ACTION_BIOMETRIC_LOCKOUT_RESET then will be canceled"

    .line 159
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$300(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/app/AlarmManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 161
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 165
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$400(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->isPwdChangeRequested()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.android.settings"

    const-string p3, "com.android.settings.password.ChooseLockGeneric$InternalActivity"

    .line 167
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string p3, "confirm_credentials"

    .line 168
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 169
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x400000

    .line 170
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x800000

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$500(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p2, p1, p3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->reportFailedUnlockAttempt(II)V

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFailedUnlockAttemptChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    return-void
.end method

.method public showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->userActivity()V

    .line 192
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$600(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz p0, :cond_0

    .line 123
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method
