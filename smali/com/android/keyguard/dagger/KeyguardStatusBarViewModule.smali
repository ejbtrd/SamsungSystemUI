.class public abstract Lcom/android/keyguard/dagger/KeyguardStatusBarViewModule;
.super Ljava/lang/Object;
.source "KeyguardStatusBarViewModule.java"


# direct methods
.method static getCarrierText(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/keyguard/CarrierText;
    .locals 1

    .line 32
    sget v0, Lcom/android/systemui/R$id;->keyguard_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    return-object p0
.end method
