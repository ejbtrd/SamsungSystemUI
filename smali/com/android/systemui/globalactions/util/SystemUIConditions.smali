.class public final enum Lcom/android/systemui/globalactions/util/SystemUIConditions;
.super Ljava/lang/Enum;
.source "SystemUIConditions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/util/SystemUIConditions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_COM_CONTAINER_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_ENABLE_USE_OF_PACKET_DATA:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_MINI_OPEN_COVER:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_WHITE_THEME:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 4
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v1, "IS_CLEAR_COVER_CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 5
    new-instance v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v3, "IS_WHITE_THEME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_WHITE_THEME:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 6
    new-instance v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v5, "IS_SETTINGS_CHANGES_ALLOWED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 7
    new-instance v5, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v7, "IS_POWER_OFF_ALLOWED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 8
    new-instance v7, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v9, "IS_SAFE_MODE_ALLOWED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 9
    new-instance v9, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v11, "IS_ENABLE_USE_OF_PACKET_DATA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ENABLE_USE_OF_PACKET_DATA:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 10
    new-instance v11, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v13, "IS_DO_PROVISIONING_MODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 11
    new-instance v13, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v15, "IS_STATUSBAR_EXPAND_DISABLED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 12
    new-instance v15, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v14, "IS_BIXBY_PACKAGE_ENABLED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 13
    new-instance v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v12, "PWD_CHANGE_ENFORCED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 14
    new-instance v12, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v10, "IS_CLEAR_SIDE_VIEW_COVER_CLOSED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 15
    new-instance v10, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v8, "IS_CLEAR_CAMERA_VIEW_COVER_CLOSED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 16
    new-instance v8, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v6, "IS_MINI_SVIEW_COVER_CLOSED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 17
    new-instance v6, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v4, "IS_MINI_OPEN_COVER"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_OPEN_COVER:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 18
    new-instance v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v2, "IS_CELLULAR_DATA_ALLOWED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 19
    new-instance v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v6, "IS_COM_CONTAINER_MODE"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_COM_CONTAINER_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 20
    new-instance v6, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v4, "GET_PROKIOSK_STATE"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 21
    new-instance v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v2, "GET_POWER_DIALOG_CUSTOM_ITEMS_STATE"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 22
    new-instance v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v6, "IS_ALLOWED_SHOW_ACTIONS"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 23
    new-instance v6, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v4, "IS_KIOSK_MODE"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

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

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v6, v4, v2

    .line 3
    sput-object v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    .line 3
    const-class v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/util/SystemUIConditions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-object v0
.end method
