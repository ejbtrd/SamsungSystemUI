.class public final synthetic Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/SecFpAuthCallback;

.field public final synthetic f$1:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecFpAuthCallback;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    iput-object p2, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    iget-object p0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/SecFpAuthCallback;->$r8$lambda$5F7BnUFS0czmD9IKf0BPRHNviUc(Lcom/android/keyguard/SecFpAuthCallback;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;Ljava/util/function/Consumer;)V

    return-void
.end method
