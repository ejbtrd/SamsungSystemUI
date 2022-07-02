.class Lcom/android/keyguard/KeyguardHostViewController$2;
.super Ljava/lang/Object;
.source "KeyguardHostViewController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZIZ)Z
    .locals 4

    .line 229
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    const-string v1, "KeyguardViewBase"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    .line 230
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$400(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "dismiss failed. Permanent state."

    .line 231
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "  "

    if-eqz p1, :cond_1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismiss caller\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-static {v3, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    .line 238
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->isUnknownTrigger()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v1

    sget v2, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_LOW:I

    if-eq v1, v2, :cond_2

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown trigger caller\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    invoke-static {v2, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUnlockInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardSecurityContainerController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showNextSecurityScreenOrFinish(ZIZ)Z

    move-result p0

    return p0
.end method

.method public finish(ZI)V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$2000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 272
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardHostViewController;->access$2002(Lcom/android/keyguard/KeyguardHostViewController;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 273
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardHostViewController;->access$2102(Lcom/android/keyguard/KeyguardHostViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 277
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "KeyguardViewBase"

    const-string v3, "finish strongAuth=%s, defer=%s, userId=%d"

    invoke-static {v1, v3, v2}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 282
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending(ZI)V

    goto :goto_1

    .line 284
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(ZI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCancelClicked()V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->onCancelClicked()V

    return-void
.end method

.method public onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$2;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    return-void
.end method
