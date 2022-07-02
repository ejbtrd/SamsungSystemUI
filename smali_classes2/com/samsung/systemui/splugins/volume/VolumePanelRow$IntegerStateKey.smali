.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegerStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 42
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v1, "REAL_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 43
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v3, "LEVEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 44
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v5, "LEVEL_MIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 45
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v7, "LEVEL_MAX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 46
    new-instance v7, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v9, "ICON_TYPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 47
    new-instance v9, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v11, "AUDIBLE_LEVEL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 48
    new-instance v11, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v13, "EAR_PROTECT_LEVEL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 49
    new-instance v13, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v15, "PRIORITY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 50
    new-instance v15, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const-string v14, "ORIGINAL_PRIORITY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 41
    sput-object v14, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
    .locals 1

    .line 41
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
    .locals 1

    .line 41
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    return-object v0
.end method
