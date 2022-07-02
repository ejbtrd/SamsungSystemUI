.class Lcom/android/keyguard/KeyguardSecurityContainerController$2;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainerController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public static synthetic $r8$lambda$SZW6wiWaYNwiexvNOmieqp7iz6U()V
    .locals 0

    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->lambda$reportUnlockAttempt$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$reportUnlockAttempt$0()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 161
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 164
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 165
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->dismiss(ZIZ)V

    return-void
.end method

.method public dismiss(ZIZ)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZIZ)Z

    return-void
.end method

.method public onCancelClicked()V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onCancelClicked()V

    return-void
.end method

.method public onUserInput()V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->cancelFaceAuth()V

    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 2

    const/16 v0, 0x40

    if-eqz p2, :cond_0

    const/4 p3, 0x2

    .line 153
    invoke-static {v0, p3}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 155
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 159
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainerController$2$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/keyguard/KeyguardSecurityContainerController$2$$ExternalSyntheticLambda0;

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 168
    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v0, p1, p3}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reportFailedUnlockAttempt(II)V

    .line 172
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->access$000(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    new-instance p3, Landroid/metrics/LogMaker;

    const/16 v0, 0xc5

    invoke-direct {p3, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    if-eqz p2, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :cond_1
    const/16 v0, 0xb

    .line 173
    :goto_1
    invoke-virtual {p3, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p3

    .line 172
    invoke-virtual {p1, p3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 174
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->access$100(Lcom/android/keyguard/KeyguardSecurityContainerController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p0

    if-eqz p2, :cond_2

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_SUCCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    goto :goto_2

    .line 175
    :cond_2
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_PASSWORD_FAILURE:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    .line 174
    :goto_2
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz p0, :cond_0

    .line 127
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method
