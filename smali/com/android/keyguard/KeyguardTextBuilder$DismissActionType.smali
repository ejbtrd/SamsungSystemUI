.class final enum Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DismissActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum Active:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum Dex:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum EmergencyModeOff:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum EmergencyModeOn:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum FingerPrintError:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;


# instance fields
.field private mDismissType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 124
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const-string v1, "Active"

    const/4 v2, 0x0

    const-string v3, "active"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 125
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const-string v3, "ShutDown"

    const/4 v4, 0x1

    const-string/jumbo v5, "shutdown"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 126
    new-instance v3, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const-string v5, "Reboot"

    const/4 v6, 0x2

    const-string/jumbo v7, "reboot"

    invoke-direct {v3, v5, v6, v7}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 127
    new-instance v5, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const-string v7, "EmergencyModeOn"

    const/4 v8, 0x3

    const-string v9, "emergencymodeon"

    invoke-direct {v5, v7, v8, v9}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 128
    new-instance v7, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const-string v9, "EmergencyModeOff"

    const/4 v10, 0x4

    const-string v11, "emergencymodeoff"

    invoke-direct {v7, v9, v10, v11}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 129
    new-instance v9, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const-string v11, "Dex"

    const/4 v12, 0x5

    const-string v13, "dex"

    invoke-direct {v9, v11, v12, v13}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Dex:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    .line 130
    new-instance v11, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const-string v13, "FingerPrintError"

    const/4 v14, 0x6

    const-string v15, "fingerprinterror"

    invoke-direct {v11, v13, v14, v15}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 122
    sput-object v13, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

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

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->mDismissType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;
    .locals 1

    .line 122
    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;
    .locals 1

    .line 122
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->mDismissType:Ljava/lang/String;

    return-object p0
.end method
