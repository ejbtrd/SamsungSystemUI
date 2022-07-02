.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;
.super Ljava/lang/Enum;
.source "VolumeStreamState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegerStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

.field public static final enum LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

.field public static final enum MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

.field public static final enum MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    const-string v1, "LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 22
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    const-string v3, "MIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 23
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    const-string v5, "MAX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 20
    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    return-object v0
.end method
