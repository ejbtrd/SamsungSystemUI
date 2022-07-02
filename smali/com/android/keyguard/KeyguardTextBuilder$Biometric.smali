.class final enum Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Biometric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$Biometric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum Face:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum FaceFingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

.field public static final enum MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;


# instance fields
.field private mBiometric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 55
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    const-string v1, "Fingerprint"

    const/4 v2, 0x0

    const-string v3, "fingerprint"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 56
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    const-string v3, "Face"

    const/4 v4, 0x1

    const-string v5, "face"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Face:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 57
    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    const-string v5, "MultiBiometrics"

    const/4 v6, 0x2

    const-string v7, "multi"

    invoke-direct {v3, v5, v6, v7}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    .line 58
    new-instance v5, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    const-string v7, "FaceFingerprint"

    const/4 v8, 0x3

    const-string v9, "facefingerprint"

    invoke-direct {v5, v7, v8, v9}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 54
    sput-object v7, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
    .locals 1

    .line 54
    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    return-object p0
.end method
