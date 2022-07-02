.class public interface abstract Lcom/android/keyguard/dagger/KeyguardBouncerModule;
.super Ljava/lang/Object;
.source "KeyguardBouncerModule.java"


# direct methods
.method public static providesCarrierText(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/CarrierText;
    .locals 1

    .line 104
    sget v0, Lcom/android/systemui/R$id;->bouncer_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    return-object p0
.end method

.method public static providesKeyguardBiometricView(Landroid/view/ViewGroup;)Lcom/android/keyguard/biometrics/KeyguardBiometricView;
    .locals 1

    .line 111
    sget v0, Lcom/android/systemui/R$id;->keyguard_biometric_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    return-object p0
.end method

.method public static providesKeyguardHostView(Landroid/view/ViewGroup;)Lcom/android/keyguard/KeyguardHostView;
    .locals 1

    .line 65
    sget v0, Lcom/android/systemui/R$id;->keyguard_host_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    return-object p0
.end method

.method public static providesKeyguardRotationController(Landroid/content/Context;)Lcom/android/keyguard/KeyguardRotationController;
    .locals 1

    .line 97
    new-instance v0, Lcom/android/keyguard/KeyguardRotationControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardRotationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static providesKeyguardSecSecurityContainer(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecSecurityContainer;
    .locals 1

    .line 81
    sget v0, Lcom/android/systemui/R$id;->keyguard_security_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    return-object p0
.end method

.method public static providesKeyguardSecurityContainer(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 1

    .line 72
    sget v0, Lcom/android/systemui/R$id;->keyguard_security_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object p0
.end method

.method public static providesKeyguardSecurityViewFlipper(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 1

    .line 90
    sget v0, Lcom/android/systemui/R$id;->view_flipper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    return-object p0
.end method

.method public static providesRootView(Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
    .locals 2

    .line 51
    sget v0, Lcom/android/systemui/R$layout;->keyguard_bouncer:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method
