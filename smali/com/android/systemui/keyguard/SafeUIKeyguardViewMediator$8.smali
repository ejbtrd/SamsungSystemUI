.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;
.super Ljava/lang/Object;
.source "SafeUIKeyguardViewMediator.java"

# interfaces
.implements Landroid/view/IRemoteAnimationFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

.field final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 2274
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 2291
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onAnimationFinished()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2278
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onAnimationFinished"

    .line 2280
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2282
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$5500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 2283
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1, v0, v1}, Lcom/android/keyguard/KeyguardViewController;->hide(JJ)V

    .line 2285
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    const/16 v0, 0x1d

    .line 2286
    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method
