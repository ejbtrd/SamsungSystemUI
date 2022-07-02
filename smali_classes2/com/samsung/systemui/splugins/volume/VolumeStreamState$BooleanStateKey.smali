.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;
.super Ljava/lang/Enum;
.source "VolumeStreamState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum MUTE_SUPPORT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_APP_MIRRORING:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

.field public static final enum ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    .line 14
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v3, "MUTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    .line 15
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v5, "MUTE_SUPPORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->MUTE_SUPPORT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    .line 16
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v7, "ROUTED_TO_BT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_BT:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    .line 17
    new-instance v7, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const-string v9, "ROUTED_TO_APP_MIRRORING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->ROUTED_TO_APP_MIRRORING:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 12
    sput-object v9, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;

    return-object v0
.end method
