.class public final enum Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;
.super Ljava/lang/Enum;
.source "OperatorInfraMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum CARRIER_INFO_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum COUNTRY_ISO_STRING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum CURRENT_TELEPHONY_SIGNAL_STRENGTH:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum CURRENT_TELEPHONY_SIGNAL_STRENGTH_ONE_LEVEL_PER_SEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum ICON_BRANDING_FROM_CARRIER_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum ICON_BRANDING_FROM_CSC_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum MAX_SIGNAL_LEVEL:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum NO_SIM_NOTI_BUILDER:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum OVERRIDE_ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum PRIMARY_SIM_SLOT_ID:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum RES_ID_OF_HOME_CARRIER_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum RES_ID_OF_LOCK_CARRIER_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum SIGNAL_CONTENT_DESCRIPTION:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

.field public static final enum SYSTEM_ICON_LIST:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v1, "ICON_BRANDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 79
    new-instance v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v3, "ICON_BRANDING_FROM_CSC_FEATURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING_FROM_CSC_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 80
    new-instance v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v5, "ICON_BRANDING_FROM_CARRIER_FEATURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->ICON_BRANDING_FROM_CARRIER_FEATURE:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 81
    new-instance v5, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v7, "OVERRIDE_ICON_BRANDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->OVERRIDE_ICON_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 82
    new-instance v7, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v9, "COUNTRY_ISO_STRING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->COUNTRY_ISO_STRING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 83
    new-instance v9, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v11, "PRIMARY_SIM_SLOT_ID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->PRIMARY_SIM_SLOT_ID:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 84
    new-instance v11, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v13, "SYSTEM_ICON_LIST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->SYSTEM_ICON_LIST:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 86
    new-instance v13, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v15, "MAX_SIGNAL_LEVEL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->MAX_SIGNAL_LEVEL:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 87
    new-instance v15, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v14, "CURRENT_TELEPHONY_SIGNAL_STRENGTH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->CURRENT_TELEPHONY_SIGNAL_STRENGTH:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 88
    new-instance v14, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v12, "CURRENT_TELEPHONY_SIGNAL_STRENGTH_ONE_LEVEL_PER_SEC"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->CURRENT_TELEPHONY_SIGNAL_STRENGTH_ONE_LEVEL_PER_SEC:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 89
    new-instance v12, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v10, "SIGNAL_CONTENT_DESCRIPTION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->SIGNAL_CONTENT_DESCRIPTION:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 91
    new-instance v10, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v8, "CARRIER_INFO_LOGO"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->CARRIER_INFO_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 92
    new-instance v8, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v6, "NO_SIM_NOTI_BUILDER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->NO_SIM_NOTI_BUILDER:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 93
    new-instance v6, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v4, "RES_ID_OF_LOCK_CARRIER_LOGO"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->RES_ID_OF_LOCK_CARRIER_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    .line 94
    new-instance v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const-string v2, "RES_ID_OF_HOME_CARRIER_LOGO"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->RES_ID_OF_HOME_CARRIER_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 77
    sput-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->$VALUES:[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;
    .locals 1

    .line 77
    const-class v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->$VALUES:[Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    return-object v0
.end method
