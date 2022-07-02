.class Lcom/android/keyguard/SecLockIconViewController$3;
.super Ljava/lang/Object;
.source "SecLockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/SecLockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v1, v0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/LockIconViewController;->updateKeyguardShowing()V

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    .line 375
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$3;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/SecLockIconViewController;->access$500(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams()V

    return-void
.end method
