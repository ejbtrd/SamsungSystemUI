.class public Lcom/android/keyguard/KeyguardSimPersoView;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.source "KeyguardSimPersoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPersoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    .line 26
    sget p0, Lcom/android/systemui/R$id;->simPersoEntry:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onDetachedFromWindow()V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
