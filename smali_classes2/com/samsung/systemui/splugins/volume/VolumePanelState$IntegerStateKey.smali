.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegerStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

.field public static final enum VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 88
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v1, "TIME_OUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 89
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v3, "ACTIVE_STREAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 90
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v5, "PIN_DEVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 91
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v7, "STREAM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 92
    new-instance v7, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v9, "MUSIC_FINE_VOLUME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 93
    new-instance v9, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v11, "RINGER_MODE_INTERNAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 94
    new-instance v11, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v13, "EAR_PROTECT_LEVEL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 95
    new-instance v13, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v15, "TIME_OUT_CONTROLS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 96
    new-instance v15, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v14, "TIME_OUT_CONTROLS_TEXT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 97
    new-instance v14, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v12, "COVER_TYPE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 98
    new-instance v12, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v10, "CUTOUT_HEIGHT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 99
    new-instance v10, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v8, "ICON_TARGET_STATE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 100
    new-instance v8, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v6, "ICON_CURRENT_STATE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 101
    new-instance v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const-string v4, "VOLUME_DIRECTION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->VOLUME_DIRECTION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 87
    sput-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;
    .locals 1

    .line 87
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;
    .locals 1

    .line 87
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    return-object v0
.end method
