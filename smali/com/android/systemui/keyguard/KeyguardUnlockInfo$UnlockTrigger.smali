.class public final enum Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
.super Ljava/lang/Enum;
.source "KeyguardUnlockInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnlockTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_AOD_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_CARRIER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_COVER_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FLOATING_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_FOLD_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_GUTS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_KEYBOARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_KNOX_GUARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_PENDING_INTENT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_PENDING_WAKE_UP_ACTION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_PLUGIN_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_QUICK_TILE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_REMOTE_INPUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_RMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

.field public static final enum TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 187
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v1, "TRIGGER_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 188
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v3, "TRIGGER_EXTERNAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_EXTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 189
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v5, "TRIGGER_INTERNAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_INTERNAL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 190
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v7, "TRIGGER_BIO_UNLOCK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 191
    new-instance v7, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v9, "TRIGGER_BIO_WAKE_AND_UNLOCK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 192
    new-instance v9, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v11, "TRIGGER_SWIPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SWIPE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 193
    new-instance v11, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v13, "TRIGGER_SHELL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 194
    new-instance v13, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v15, "TRIGGER_NOTIFICATION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 195
    new-instance v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v14, "TRIGGER_AOD_NOTIFICATION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_AOD_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 196
    new-instance v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v12, "TRIGGER_QUICK_TILE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_QUICK_TILE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 197
    new-instance v12, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v10, "TRIGGER_SHORTCUT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 198
    new-instance v10, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v8, "TRIGGER_FLOATING_SHORTCUT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FLOATING_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 199
    new-instance v8, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v6, "TRIGGER_FACE_WIDGET"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 200
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v4, "TRIGGER_KEYBOARD"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_KEYBOARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 201
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v2, "TRIGGER_PENDING_INTENT"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PENDING_INTENT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 202
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v6, "TRIGGER_PLUGIN_LOCK"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PLUGIN_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 203
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v4, "TRIGGER_FOLD_OPENED"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FOLD_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 204
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v2, "TRIGGER_COVER_OPENED"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_COVER_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 205
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v6, "TRIGGER_FMM"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 206
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v4, "TRIGGER_RMM"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_RMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 207
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v2, "TRIGGER_CARRIER"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_CARRIER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 208
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v6, "TRIGGER_KNOX_GUARD"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_KNOX_GUARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 209
    new-instance v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v4, "TRIGGER_PENDING_WAKE_UP_ACTION"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PENDING_WAKE_UP_ACTION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 210
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v4, "TRIGGER_GUTS"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_GUTS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 211
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const-string v6, "TRIGGER_REMOTE_INPUT"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_REMOTE_INPUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    const/4 v6, 0x0

    aput-object v0, v2, v6

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

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    sput-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 212
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;
    .locals 4

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->$VALUES:[Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
