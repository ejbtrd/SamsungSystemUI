.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;
.super Ljava/lang/Enum;
.source "VolumeInfraMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum DEVICES_FOR_STREAM_MUSIC:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum EAR_PROTECT_LIMIT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum FRONT_SUB_DISPLAY:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum MULTI_SOUND_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum TIMEOUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum TIMEOUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 97
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v1, "BT_SCO_DEVICE_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 98
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v3, "SMART_VIEW_DEVICE_NAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 99
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v5, "ACTIVE_BT_DEVICE_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 100
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v7, "PIN_DEVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 101
    new-instance v7, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v9, "EAR_PROTECT_LIMIT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->EAR_PROTECT_LIMIT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 102
    new-instance v9, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v11, "SYSTEM_TIME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 103
    new-instance v11, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v13, "TIMEOUT_CONTROLS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->TIMEOUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 104
    new-instance v13, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v15, "TIMEOUT_CONTROLS_TEXT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->TIMEOUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 105
    new-instance v15, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v14, "PIN_APP_NAME"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 106
    new-instance v14, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v12, "PIN_DEVICE_NAME"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 107
    new-instance v12, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v10, "DEVICES_FOR_STREAM_MUSIC"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->DEVICES_FOR_STREAM_MUSIC:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 108
    new-instance v10, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v8, "MUSIC_FINE_VOLUME"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 109
    new-instance v8, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v6, "CUTOUT_HEIGHT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 110
    new-instance v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v4, "FRONT_SUB_DISPLAY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->FRONT_SUB_DISPLAY:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 111
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v2, "MULTI_SOUND_DEVICE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->MULTI_SOUND_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 112
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const-string v6, "AUDIO_SHARING_DEVICE_NAME"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->AUDIO_SHARING_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

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

    .line 96
    sput-object v6, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;
    .locals 1

    .line 96
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;
    .locals 1

    .line 96
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    return-object v0
.end method
