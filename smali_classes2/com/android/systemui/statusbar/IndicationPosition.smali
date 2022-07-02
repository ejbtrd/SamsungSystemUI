.class public final enum Lcom/android/systemui/statusbar/IndicationPosition;
.super Ljava/lang/Enum;
.source "IndicationPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/IndicationPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/IndicationPosition;

.field public static final enum BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

.field public static final enum DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

.field public static final enum UPPER:Lcom/android/systemui/statusbar/IndicationPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/IndicationPosition;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/IndicationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    new-instance v1, Lcom/android/systemui/statusbar/IndicationPosition;

    const-string v3, "UPPER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/IndicationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    new-instance v3, Lcom/android/systemui/statusbar/IndicationPosition;

    const-string v5, "BIOMERIC_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/statusbar/IndicationPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->BIOMERIC_ERROR:Lcom/android/systemui/statusbar/IndicationPosition;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/systemui/statusbar/IndicationPosition;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/android/systemui/statusbar/IndicationPosition;->$VALUES:[Lcom/android/systemui/statusbar/IndicationPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/IndicationPosition;
    .locals 1

    .line 3
    const-class v0, Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/IndicationPosition;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/IndicationPosition;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->$VALUES:[Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/IndicationPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/IndicationPosition;

    return-object v0
.end method
