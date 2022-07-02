.class Lcom/android/systemui/keyguard/KeyguardService$3;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardService;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    return-void
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 245
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 371
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onBootCompleted()V

    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 251
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 257
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    return-void
.end method

.method public onFinishedGoingToSleep(IZ)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    .line 274
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result p1

    .line 273
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onFinishedGoingToSleep(IZ)V

    .line 276
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 2

    const-string v0, "KeyguardService.mBinder#onFinishedWakingUp"

    .line 293
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getHelper()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object v0

    const-string v1, "onFinishedWakingUp"

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->log(Ljava/lang/String;)V

    .line 298
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 299
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onScreenInternalTurningOff()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 433
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onScreenInternalTurningOn()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 426
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOff()V

    .line 333
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    const-string v0, "KeyguardService.mBinder#onScreenTurnedOn"

    .line 313
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 316
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 317
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onScreenTurningOff()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getHelper()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object v0

    const-string v1, "onScreenTurningOff"

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->log(Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 1

    const-string v0, "KeyguardService.mBinder#onScreenTurningOn"

    .line 304
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 307
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 308
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onShortPowerPressedGoHome()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 390
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onShortPowerPressedGoHome()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    .line 264
    invoke-static {p1}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v1

    .line 263
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedGoingToSleep(I)V

    .line 265
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(II)V

    return-void
.end method

.method public onStartedWakingUp(IZ)V
    .locals 1

    const-string v0, "KeyguardService.mBinder#onStartedWakingUp"

    .line 283
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedWakingUp(ZI)V

    .line 286
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(II)V

    .line 288
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onSystemReady()V
    .locals 1

    const-string v0, "KeyguardService.mBinder#onSystemReady"

    .line 344
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 346
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 347
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onSystemReadyWithShowing(Z)V
    .locals 0

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 365
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 339
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    return-void
.end method

.method public setOccluded(ZZ)V
    .locals 1

    const-string v0, "KeyguardService.mBinder#setOccluded"

    .line 236
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 238
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 239
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 397
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getHelper()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 359
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwitchingUser(Z)V

    return-void
.end method

.method public startFingerprintAuthentication()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 419
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getHelper()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startFingerprintAuthentication()V

    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "KeyguardService.mBinder#startKeyguardExitAnimation"

    .line 381
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 383
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 384
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public startedEarlyWakingUp(I)V
    .locals 1

    const-string v0, "KeyguardService.mBinder#startedEarlyWakingUp"

    .line 403
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 405
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getHelper()Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->startedEarlyWakingUp(I)V

    .line 406
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1

    const-string v0, "KeyguardService.mBinder#verifyUnlock"

    .line 228
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 230
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$3;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 231
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
