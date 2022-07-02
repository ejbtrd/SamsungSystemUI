.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
.super Ljava/lang/Enum;
.source "VolumeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v1, "FIXED_SCO_VOLUME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 14
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v3, "IS_DUAL_AUDIO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 15
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v5, "IS_FROM_KEY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 16
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v7, "DISALLOW_RINGER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 17
    new-instance v7, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v9, "DISALLOW_SYSTEM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 18
    new-instance v9, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v11, "DISALLOW_MEDIA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 19
    new-instance v11, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const-string v13, "REMOTE_MIC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 12
    sput-object v13, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    return-object v0
.end method
