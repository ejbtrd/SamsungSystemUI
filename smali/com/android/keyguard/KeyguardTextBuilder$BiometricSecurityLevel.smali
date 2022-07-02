.class final enum Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BiometricSecurityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

.field public static final enum IdleTimeout:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

.field public static final enum Strong:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

.field public static final enum Weak:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;


# instance fields
.field private mBiometricSecurityLevel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 107
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    const-string v1, "Strong"

    const/4 v2, 0x0

    const-string/jumbo v3, "strong"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Strong:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 108
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    const-string v3, "Weak"

    const/4 v4, 0x1

    const-string/jumbo v5, "weak"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Weak:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    .line 109
    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    const-string v5, "IdleTimeout"

    const/4 v6, 0x2

    const-string v7, "idletimeout"

    invoke-direct {v3, v5, v6, v7}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->IdleTimeout:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 105
    sput-object v5, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

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

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->mBiometricSecurityLevel:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;
    .locals 1

    .line 105
    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;
    .locals 1

    .line 105
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->mBiometricSecurityLevel:Ljava/lang/String;

    return-object p0
.end method
