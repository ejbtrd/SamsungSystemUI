.class public final enum Lcom/android/systemui/basic/util/ModuleType;
.super Ljava/lang/Enum;
.source "ModuleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/basic/util/ModuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum CONTROLS:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum GLOBALACTIONS:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum INDICATOR:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum POPUPUI:Lcom/android/systemui/basic/util/ModuleType;

.field public static final enum VOLUME:Lcom/android/systemui/basic/util/ModuleType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 4
    new-instance v0, Lcom/android/systemui/basic/util/ModuleType;

    const-string v1, "NAVBAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    .line 5
    new-instance v1, Lcom/android/systemui/basic/util/ModuleType;

    const-string v3, "VOLUME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    .line 6
    new-instance v3, Lcom/android/systemui/basic/util/ModuleType;

    const-string v5, "GLOBALACTIONS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/basic/util/ModuleType;->GLOBALACTIONS:Lcom/android/systemui/basic/util/ModuleType;

    .line 7
    new-instance v5, Lcom/android/systemui/basic/util/ModuleType;

    const-string v7, "POPUPUI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/basic/util/ModuleType;->POPUPUI:Lcom/android/systemui/basic/util/ModuleType;

    .line 8
    new-instance v7, Lcom/android/systemui/basic/util/ModuleType;

    const-string v9, "CONTROLS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/basic/util/ModuleType;->CONTROLS:Lcom/android/systemui/basic/util/ModuleType;

    .line 9
    new-instance v9, Lcom/android/systemui/basic/util/ModuleType;

    const-string v11, "INDICATOR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/basic/util/ModuleType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/basic/util/ModuleType;->INDICATOR:Lcom/android/systemui/basic/util/ModuleType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/systemui/basic/util/ModuleType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 3
    sput-object v11, Lcom/android/systemui/basic/util/ModuleType;->$VALUES:[Lcom/android/systemui/basic/util/ModuleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/basic/util/ModuleType;
    .locals 1

    .line 3
    const-class v0, Lcom/android/systemui/basic/util/ModuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/basic/util/ModuleType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/basic/util/ModuleType;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/systemui/basic/util/ModuleType;->$VALUES:[Lcom/android/systemui/basic/util/ModuleType;

    invoke-virtual {v0}, [Lcom/android/systemui/basic/util/ModuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/basic/util/ModuleType;

    return-object v0
.end method
