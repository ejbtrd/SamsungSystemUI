.class Lcom/android/keyguard/SecFaceMsg;
.super Ljava/lang/Object;
.source "SecFaceMsg.java"


# instance fields
.field arg:I

.field msgString:Ljava/lang/CharSequence;

.field result:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;
    .locals 1

    .line 22
    new-instance v0, Lcom/android/keyguard/SecFaceMsg;

    invoke-direct {v0}, Lcom/android/keyguard/SecFaceMsg;-><init>()V

    .line 23
    iput p0, v0, Lcom/android/keyguard/SecFaceMsg;->type:I

    .line 24
    iput p1, v0, Lcom/android/keyguard/SecFaceMsg;->arg:I

    .line 25
    iput-object p2, v0, Lcom/android/keyguard/SecFaceMsg;->msgString:Ljava/lang/CharSequence;

    .line 26
    iput-object p3, v0, Lcom/android/keyguard/SecFaceMsg;->result:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    return-object v0
.end method
