.class public Lcom/android/keyguard/KeyguardSwipeViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "KeyguardSwipeViewController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardInputViewController<",
        "Lcom/android/keyguard/KeyguardSwipeView;",
        ">;",
        "Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;"
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field public final mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSwipeView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V

    .line 27
    new-instance p1, Lcom/android/keyguard/KeyguardSwipeViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSwipeViewController$1;-><init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 60
    iput-object p5, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 61
    iput-object p6, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 62
    iput-object p7, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    .line 64
    invoke-virtual {p7, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->init(Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;)V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSwipeView;

    sget p1, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/widget/SystemUITextView;

    .line 67
    sget p1, Lcom/android/systemui/R$string;->kg_swipe_active_instructions:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    invoke-virtual {p5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    sget p1, Lcom/android/systemui/R$string;->kg_voice_assistant_active_instructions:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public callUserActivity()V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 1

    const-string p0, "KeyguardSwipeView"

    const-string v0, "onPause()"

    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume(I)V
    .locals 1

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResume(reason = + "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSwipeView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_0
    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSwipeView;

    new-instance v1, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;-><init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSwipeView;->setSwipeEventListener(Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 90
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSwipeView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSwipeView;->setSwipeEventListener(Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->reset()V

    return-void
.end method
