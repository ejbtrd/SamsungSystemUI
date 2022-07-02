.class public final enum Lcom/android/systemui/volume/util/SALoggingWrapper$Event;
.super Ljava/lang/Enum;
.source "SALoggingWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/util/SALoggingWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/util/SALoggingWrapper$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum EXPAND:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_ACCESSIBILITY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_BIXBY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_MEDIA:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_NOTIFICATION:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_RINGTONE:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_SYSTEM:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum MEDIA_DEFAULT_OFF:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum MEDIA_DEFAULT_ON:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SAFETY_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SAFETY_OK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SHRINK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SUB_VOLUME_PANEL_FINE_CONTROL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SUB_VOLUME_PANEL_SHOW:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum VOLUME_KEY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum VOLUME_LIMITER_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum VOLUME_LIMITER_SETTING:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 17
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v1, "EXPAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->EXPAND:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 18
    new-instance v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v3, "SHRINK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SHRINK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 19
    new-instance v3, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v5, "MEDIA_DEFAULT_ON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_ON:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 20
    new-instance v5, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v7, "MEDIA_DEFAULT_OFF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_OFF:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 21
    new-instance v7, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v9, "SAFETY_CANCEL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 22
    new-instance v9, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v11, "SAFETY_OK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_OK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 23
    new-instance v11, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v13, "VOLUME_LIMITER_SETTING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_SETTING:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 24
    new-instance v13, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v15, "VOLUME_LIMITER_CANCEL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 25
    new-instance v15, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v14, "VOLUME_KEY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_KEY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 26
    new-instance v14, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v12, "FINE_CONTROL_RINGTONE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_RINGTONE:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 27
    new-instance v12, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v10, "FINE_CONTROL_NOTIFICATION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_NOTIFICATION:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 28
    new-instance v10, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v8, "FINE_CONTROL_MEDIA"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_MEDIA:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 29
    new-instance v8, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v6, "FINE_CONTROL_SYSTEM"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_SYSTEM:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 30
    new-instance v6, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v4, "FINE_CONTROL_BIXBY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_BIXBY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 31
    new-instance v4, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v2, "FINE_CONTROL_ACCESSIBILITY"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_ACCESSIBILITY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 32
    new-instance v2, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v6, "SUB_VOLUME_PANEL_SHOW"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SUB_VOLUME_PANEL_SHOW:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 33
    new-instance v6, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const-string v4, "SUB_VOLUME_PANEL_FINE_CONTROL"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SUB_VOLUME_PANEL_FINE_CONTROL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v4, 0x11

    new-array v4, v4, [Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

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

    aput-object v6, v4, v2

    .line 16
    sput-object v4, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->$VALUES:[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/util/SALoggingWrapper$Event;
    .locals 1

    .line 16
    const-class v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;
    .locals 1

    .line 16
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->$VALUES:[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    return-object v0
.end method
