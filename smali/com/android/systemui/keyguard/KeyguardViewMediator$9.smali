.class Lcom/android/systemui/keyguard/KeyguardViewMediator$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$handleStartKeyguardExitAnimation$14(Landroid/view/IRemoteAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 2758
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/16 p1, 0x1d

    .line 2774
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2778
    :goto_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    .line 2779
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "KeyguardViewMediator"

    const-string v0, "RemoteException"

    .line 2776
    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 2778
    :goto_2
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    .line 2779
    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 2780
    throw p0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/16 p1, 0x1d

    .line 2762
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2766
    :goto_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    .line 2767
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "KeyguardViewMediator"

    const-string v0, "RemoteException"

    .line 2764
    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 2766
    :goto_2
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    .line 2767
    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 2768
    throw p0
.end method
