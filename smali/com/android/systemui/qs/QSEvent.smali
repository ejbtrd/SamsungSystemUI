.class public final enum Lcom/android/systemui/qs/QSEvent;
.super Ljava/lang/Enum;
.source "QSEvents.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSEvent;

.field public static final enum QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

.field public static final enum QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lcom/android/systemui/qs/QSEvent;

    const-string v1, "QS_ACTION_CLICK"

    const/4 v2, 0x0

    const/16 v3, 0x183

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_CLICK:Lcom/android/systemui/qs/QSEvent;

    .line 44
    new-instance v1, Lcom/android/systemui/qs/QSEvent;

    const-string v3, "QS_ACTION_SECONDARY_CLICK"

    const/4 v4, 0x1

    const/16 v5, 0x184

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_SECONDARY_CLICK:Lcom/android/systemui/qs/QSEvent;

    .line 48
    new-instance v3, Lcom/android/systemui/qs/QSEvent;

    const-string v5, "QS_ACTION_LONG_PRESS"

    const/4 v6, 0x2

    const/16 v7, 0x185

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/qs/QSEvent;->QS_ACTION_LONG_PRESS:Lcom/android/systemui/qs/QSEvent;

    .line 51
    new-instance v5, Lcom/android/systemui/qs/QSEvent;

    const-string v7, "QS_PANEL_EXPANDED"

    const/4 v8, 0x3

    const/16 v9, 0x186

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    .line 54
    new-instance v7, Lcom/android/systemui/qs/QSEvent;

    const-string v9, "QS_PANEL_COLLAPSED"

    const/4 v10, 0x4

    const/16 v11, 0x187

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    .line 57
    new-instance v9, Lcom/android/systemui/qs/QSEvent;

    const-string v11, "QS_TILE_VISIBLE"

    const/4 v12, 0x5

    const/16 v13, 0x188

    invoke-direct {v9, v11, v12, v13}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/qs/QSEvent;->QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    .line 61
    new-instance v11, Lcom/android/systemui/qs/QSEvent;

    const-string v13, "QQS_PANEL_EXPANDED"

    const/4 v14, 0x6

    const/16 v15, 0x189

    invoke-direct {v11, v13, v14, v15}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    .line 64
    new-instance v13, Lcom/android/systemui/qs/QSEvent;

    const-string v15, "QQS_PANEL_COLLAPSED"

    const/4 v14, 0x7

    const/16 v12, 0x18a

    invoke-direct {v13, v15, v14, v12}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    .line 67
    new-instance v12, Lcom/android/systemui/qs/QSEvent;

    const-string v15, "QQS_TILE_VISIBLE"

    const/16 v14, 0x8

    const/16 v10, 0x18b

    invoke-direct {v12, v15, v14, v10}, Lcom/android/systemui/qs/QSEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/qs/QSEvent;->QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/android/systemui/qs/QSEvent;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/android/systemui/qs/QSEvent;->$VALUES:[Lcom/android/systemui/qs/QSEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/qs/QSEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSEvent;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/qs/QSEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 72
    check-cast p0, Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSEvent;
    .locals 4

    sget-object v0, Lcom/android/systemui/qs/QSEvent;->$VALUES:[Lcom/android/systemui/qs/QSEvent;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/qs/QSEvent;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/systemui/qs/QSEvent;->_id:I

    return p0
.end method
