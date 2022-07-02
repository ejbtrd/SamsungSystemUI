.class Lcom/android/keyguard/LockIconViewController$4;
.super Ljava/lang/Object;
.source "LockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardFadingAwayChanged()V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/LockIconViewController;->updateKeyguardShowing()V

    .line 478
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 0

    return-void
.end method

.method public onUnlockedChanged()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    iget-object v1, v0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/LockIconViewController;->updateKeyguardShowing()V

    .line 452
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$4;->this$0:Lcom/android/keyguard/LockIconViewController;

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    :cond_0
    return-void
.end method
