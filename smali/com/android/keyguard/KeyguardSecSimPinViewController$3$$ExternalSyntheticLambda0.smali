.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

.field public final synthetic f$1:Landroid/telephony/PinResult;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$3;Landroid/telephony/PinResult;ILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    iput p3, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$3$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;->$r8$lambda$CVRJqhCKJ7b-BUr43U5Bd8BJ1Dw(Lcom/android/keyguard/KeyguardSecSimPinViewController$3;Landroid/telephony/PinResult;ILcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method
