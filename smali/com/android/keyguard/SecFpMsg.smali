.class Lcom/android/keyguard/SecFpMsg;
.super Ljava/lang/Object;
.source "SecFpMsg.java"


# instance fields
.field arg:I

.field msgString:Ljava/lang/CharSequence;

.field result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field sequence:I

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;
    .locals 1

    .line 24
    new-instance v0, Lcom/android/keyguard/SecFpMsg;

    invoke-direct {v0}, Lcom/android/keyguard/SecFpMsg;-><init>()V

    .line 25
    iput p0, v0, Lcom/android/keyguard/SecFpMsg;->type:I

    .line 26
    iput p1, v0, Lcom/android/keyguard/SecFpMsg;->sequence:I

    .line 27
    iput p2, v0, Lcom/android/keyguard/SecFpMsg;->arg:I

    .line 28
    iput-object p3, v0, Lcom/android/keyguard/SecFpMsg;->msgString:Ljava/lang/CharSequence;

    .line 29
    iput-object p4, v0, Lcom/android/keyguard/SecFpMsg;->result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-object v0
.end method
