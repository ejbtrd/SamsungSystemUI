.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;
.super Ljava/lang/Enum;
.source "VolumeStreamState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

.field public static final enum DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

.field public static final enum DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

.field public static final enum NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

.field public static final enum REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    const-string v1, "DUAL_BT_DEVICE_ADDRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    .line 28
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    const-string v3, "DUAL_BT_DEVICE_NAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->DUAL_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    .line 29
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    const-string v5, "REMOTE_LABEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    .line 30
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    const-string v7, "NAME_RES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 26
    sput-object v7, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;
    .locals 1

    .line 26
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;

    return-object v0
.end method
