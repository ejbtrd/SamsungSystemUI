.class public final enum Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
.super Ljava/lang/Enum;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum AdminLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SKTCarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 44
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 45
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v3, "None"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 46
    new-instance v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v5, "Pattern"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 47
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v7, "Password"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 48
    new-instance v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v9, "PIN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 49
    new-instance v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v11, "SimPin"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 50
    new-instance v11, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v13, "SimPuk"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 51
    new-instance v13, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v15, "FMM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 53
    new-instance v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v14, "RMM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 55
    new-instance v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v12, "KNOXGUARD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 57
    new-instance v12, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v10, "SKTCarrierLock"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 59
    new-instance v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v8, "SKTCarrierPassword"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 61
    new-instance v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v6, "SmartcardPIN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 63
    new-instance v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v4, "AdminLock"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AdminLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 65
    new-instance v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v2, "SimPerso"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 67
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v6, "Swipe"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 43
    sput-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .line 43
    const-class v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method
