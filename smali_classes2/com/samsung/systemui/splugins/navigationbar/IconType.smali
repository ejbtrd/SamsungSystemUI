.class public final enum Lcom/samsung/systemui/splugins/navigationbar/IconType;
.super Ljava/lang/Enum;
.source "IconType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/navigationbar/IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 7
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v1, "TYPE_BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 8
    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v3, "TYPE_BACK_LAND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 9
    new-instance v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v5, "TYPE_BACK_ALT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 10
    new-instance v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v7, "TYPE_BACK_ALT_LAND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 11
    new-instance v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v9, "TYPE_HOME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 12
    new-instance v9, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v11, "TYPE_RECENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 13
    new-instance v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v13, "TYPE_DOCKED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 14
    new-instance v13, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v15, "TYPE_IME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 15
    new-instance v15, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v14, "TYPE_MENU"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 16
    new-instance v14, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v12, "TYPE_SHOW_PIN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 17
    new-instance v12, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v10, "TYPE_HIDE_PIN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 18
    new-instance v10, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v8, "TYPE_A11Y"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 19
    new-instance v8, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v6, "TYPE_BACK_CAR"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 20
    new-instance v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v4, "TYPE_BACK_LAND_CAR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 21
    new-instance v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v2, "TYPE_BACK_ALT_CAR"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 22
    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v6, "TYPE_BACK_ALT_LAND_CAR"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 23
    new-instance v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v4, "TYPE_HOME_CAR"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 24
    new-instance v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v2, "TYPE_GESTURE_HINT"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 25
    new-instance v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v6, "TYPE_GESTURE_HINT_VI"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 26
    new-instance v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v4, "TYPE_GESTURE_HANDLE_HINT"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 27
    new-instance v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v2, "TYPE_SECONDARY_HOME_HANDLE"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/samsung/systemui/splugins/navigationbar/IconType;

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

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    .line 6
    sput-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/navigationbar/IconType;
    .locals 1

    .line 6
    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/navigationbar/IconType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/navigationbar/IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/navigationbar/IconType;

    return-object v0
.end method
