.class public final enum Lcom/android/systemui/statusbar/IndicationEventType;
.super Ljava/lang/Enum;
.source "IndicationEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/IndicationEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum LEGACY_DEFAULT:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum NOTI_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;


# instance fields
.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v1, "EMPTY_LOW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 5
    new-instance v1, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v4, "LEGACY_DEFAULT"

    const/16 v5, 0x14

    invoke-direct {v1, v4, v3, v5}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_DEFAULT:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 6
    new-instance v4, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v6, "BATTERY_RESTING"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 7
    new-instance v5, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v6, "RESTING"

    const/4 v8, 0x3

    const/16 v9, 0x19

    invoke-direct {v5, v6, v8, v9}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/statusbar/IndicationEventType;->RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 8
    new-instance v6, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v10, "UNLOCK_GUIDE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v9}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 9
    new-instance v9, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v10, "BATTERY"

    const/4 v12, 0x5

    const/16 v13, 0x28

    invoke-direct {v9, v10, v12, v13}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 10
    new-instance v10, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v13, "EMPTY_HIGH"

    const/4 v14, 0x6

    const/16 v15, 0x2d

    invoke-direct {v10, v13, v14, v15}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 11
    new-instance v13, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v14, "BIOMETRICS_HIGH"

    const/4 v12, 0x7

    invoke-direct {v13, v14, v12, v15}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 12
    new-instance v14, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v15, "LEGACY_TRANSIENT"

    const/16 v12, 0x8

    invoke-direct {v14, v15, v12, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 13
    new-instance v15, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v12, "NOTI_GUIDE"

    const/16 v11, 0x9

    const/16 v8, 0x32

    invoke-direct {v15, v12, v11, v8}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/systemui/statusbar/IndicationEventType;->NOTI_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 14
    new-instance v8, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v12, "BIOMETRICS_HELP"

    const/16 v11, 0xa

    const/16 v7, 0x3c

    invoke-direct {v8, v12, v11, v7}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 15
    new-instance v12, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v11, "BIOMETRICS_STOP"

    const/16 v3, 0xb

    invoke-direct {v12, v11, v3, v7}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 16
    new-instance v7, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v11, "TRUST_AGENT_ERROR"

    const/16 v3, 0xc

    const/16 v2, 0x46

    invoke-direct {v7, v11, v3, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 17
    new-instance v2, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v11, "BIOMETRICS_COOLDOWN"

    const/16 v3, 0xd

    move-object/from16 v16, v7

    const/16 v7, 0x55

    invoke-direct {v2, v11, v3, v7}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 18
    new-instance v7, Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v11, "PPP_COOLDOWN"

    const/16 v3, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x5a

    invoke-direct {v7, v11, v3, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v11, 0x0

    aput-object v0, v2, v11

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v6, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v10, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v14, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v12, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v7, v2, v3

    .line 3
    sput-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->$VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/android/systemui/statusbar/IndicationEventType;->mPriority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/IndicationEventType;
    .locals 1

    .line 3
    const-class v0, Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/IndicationEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/IndicationEventType;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->$VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/IndicationEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/IndicationEventType;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/systemui/statusbar/IndicationEventType;->mPriority:I

    return p0
.end method
