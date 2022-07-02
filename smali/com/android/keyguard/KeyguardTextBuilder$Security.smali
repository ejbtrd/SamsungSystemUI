.class final enum Lcom/android/keyguard/KeyguardTextBuilder$Security;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Security"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$Security;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Security;

.field public static final enum PIN:Lcom/android/keyguard/KeyguardTextBuilder$Security;

.field public static final enum Password:Lcom/android/keyguard/KeyguardTextBuilder$Security;

.field public static final enum Pattern:Lcom/android/keyguard/KeyguardTextBuilder$Security;


# instance fields
.field private mSecurity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 72
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    const-string v1, "PIN"

    const/4 v2, 0x0

    const-string v3, "pin"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->PIN:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    .line 73
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    const-string v3, "Pattern"

    const/4 v4, 0x1

    const-string v5, "pattern"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Pattern:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    .line 74
    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    const-string v5, "Password"

    const/4 v6, 0x2

    const-string v7, "password"

    invoke-direct {v3, v5, v6, v7}, Lcom/android/keyguard/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Password:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/keyguard/KeyguardTextBuilder$Security;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 71
    sput-object v5, Lcom/android/keyguard/KeyguardTextBuilder$Security;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Security;

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

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->mSecurity:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$Security;
    .locals 1

    .line 71
    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$Security;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$Security;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$Security;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$Security;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->mSecurity:Ljava/lang/String;

    return-object p0
.end method
