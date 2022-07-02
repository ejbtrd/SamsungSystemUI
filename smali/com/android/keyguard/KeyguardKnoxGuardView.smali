.class public Lcom/android/keyguard/KeyguardKnoxGuardView;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.source "KeyguardKnoxGuardView.java"


# instance fields
.field private mPinEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPasswordTextViewId()I
    .locals 0

    .line 34
    sget p0, Lcom/android/systemui/R$id;->keyguard_knox_guard_pin_view:I

    return p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    .line 43
    sget p0, Lcom/android/systemui/R$string;->kg_remote_lock_incorrect_pin:I

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 29
    sget v0, Lcom/android/systemui/R$id;->keyguard_knox_guard_pin_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method
