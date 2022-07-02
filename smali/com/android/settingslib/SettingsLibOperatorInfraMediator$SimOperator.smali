.class public final enum Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;
.super Ljava/lang/Enum;
.source "SettingsLibOperatorInfraMediator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum AIO:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum AIRTEL:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum ASR:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum ATOLTE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum ATT:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum CMCC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum CTC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum DSH:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum OTHERS:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum RELIANCE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum SPR:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum TMB:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum TMK:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum USC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum VISIBLE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

.field public static final enum VZW:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 5
    new-instance v0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v1, "CMCC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->CMCC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 6
    new-instance v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v3, "CTC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->CTC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 7
    new-instance v3, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v5, "AIRTEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->AIRTEL:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 8
    new-instance v5, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v7, "RELIANCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->RELIANCE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 9
    new-instance v7, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v9, "ATOLTE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->ATOLTE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 10
    new-instance v9, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v11, "VZW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->VZW:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 11
    new-instance v11, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v13, "VISIBLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->VISIBLE:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 12
    new-instance v13, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v15, "ATT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->ATT:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 13
    new-instance v15, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v14, "AIO"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->AIO:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 14
    new-instance v14, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v12, "TMB"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->TMB:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 15
    new-instance v12, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v10, "TMK"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->TMK:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 16
    new-instance v10, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v8, "SPR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->SPR:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 17
    new-instance v8, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v6, "USC"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->USC:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 18
    new-instance v6, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v4, "DSH"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->DSH:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 19
    new-instance v4, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v2, "ASR"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->ASR:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    .line 20
    new-instance v2, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const-string v6, "OTHERS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->OTHERS:Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

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

    .line 4
    sput-object v6, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->$VALUES:[Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;
    .locals 1

    .line 4
    const-class v0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object p0
.end method

.method public static values()[Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;
    .locals 1

    .line 4
    sget-object v0, Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->$VALUES:[Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    invoke-virtual {v0}, [Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingslib/SettingsLibOperatorInfraMediator$SimOperator;

    return-object v0
.end method
