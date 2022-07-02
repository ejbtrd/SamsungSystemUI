.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;Landroid/telephony/PinResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/PinResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/PinResult;

    invoke-static {v0, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->$r8$lambda$ZSCIKyqUtw7FL1X_C0k-lqZcnKg(Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;Landroid/telephony/PinResult;)V

    return-void
.end method
