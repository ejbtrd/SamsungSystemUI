.class public Lcom/android/keyguard/KeyguardSecSimPinView;
.super Lcom/android/keyguard/KeyguardSimPinView;
.source "KeyguardSecSimPinView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 26
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onDetachedFromWindow()V

    return-void
.end method
