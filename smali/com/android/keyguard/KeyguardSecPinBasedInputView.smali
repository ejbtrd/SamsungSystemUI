.class public abstract Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSecPinBasedInputView.java"


# instance fields
.field private mAttached:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mPasswordEntryBoxLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    .line 70
    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 44
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 53
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 79
    sget v0, Lcom/android/systemui/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    .line 80
    sget v0, Lcom/android/systemui/R$id;->password_entry_box:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 92
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz p1, :cond_1

    .line 93
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    if-eqz p1, :cond_1

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged() Visibility : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardSecPinBasedInputView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 97
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "deadzone_v2"

    const-string v0, "3.33%,3.33%,0%"

    .line 99
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 101
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-nez p1, :cond_1

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/tsp/SemTspStateManager;->clearDeadZone(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 62
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method
