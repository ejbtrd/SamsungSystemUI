.class Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;
.super Ljava/lang/Object;
.source "KeyguardSecIndicationController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeBiometricErrorIndication(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

.field final synthetic val$indication:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Ljava/lang/CharSequence;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->val$indication:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/SecLockIconViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->val$indication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/SecLockIconViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->initShowingBiometricErrorAnimation()V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/SecLockIconViewController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecLockIconViewController;->startShowingBiometricErrorAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
