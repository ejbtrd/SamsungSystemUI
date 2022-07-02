.class final enum Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PromptReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum ItPolicy:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum Restart:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

.field public static final enum Timeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;


# instance fields
.field private mPromptReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 88
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const-string v1, "Restart"

    const/4 v2, 0x0

    const-string/jumbo v3, "restart"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 89
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const-string v3, "Timeout"

    const/4 v4, 0x1

    const-string/jumbo v5, "timeout"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 90
    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const-string v5, "NonStrongBiometricTimeout"

    const/4 v6, 0x2

    const-string v7, "nonstrongbiometrictimeout"

    invoke-direct {v3, v5, v6, v7}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 91
    new-instance v5, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const-string v7, "DeviceAdmin"

    const/4 v8, 0x3

    const-string v9, "deviceadmin"

    invoke-direct {v5, v7, v8, v9}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    .line 92
    new-instance v7, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const-string v9, "ItPolicy"

    const/4 v10, 0x4

    const-string v11, "itpolicy"

    invoke-direct {v7, v9, v10, v11}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 87
    sput-object v9, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

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

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->mPromptReason:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;
    .locals 1

    .line 87
    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->mPromptReason:Ljava/lang/String;

    return-object p0
.end method
