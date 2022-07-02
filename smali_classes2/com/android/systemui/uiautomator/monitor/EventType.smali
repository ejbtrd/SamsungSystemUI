.class public final enum Lcom/android/systemui/uiautomator/monitor/EventType;
.super Ljava/lang/Enum;
.source "EventData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/uiautomator/monitor/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/uiautomator/monitor/EventType;

.field public static final enum SLEEP:Lcom/android/systemui/uiautomator/monitor/EventType;

.field public static final enum SWIPE:Lcom/android/systemui/uiautomator/monitor/EventType;

.field public static final enum TOUCH:Lcom/android/systemui/uiautomator/monitor/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/android/systemui/uiautomator/monitor/EventType;

    const-string v1, "TOUCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/uiautomator/monitor/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/uiautomator/monitor/EventType;->TOUCH:Lcom/android/systemui/uiautomator/monitor/EventType;

    new-instance v1, Lcom/android/systemui/uiautomator/monitor/EventType;

    const-string v3, "SWIPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/uiautomator/monitor/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/uiautomator/monitor/EventType;->SWIPE:Lcom/android/systemui/uiautomator/monitor/EventType;

    new-instance v3, Lcom/android/systemui/uiautomator/monitor/EventType;

    const-string v5, "SLEEP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/uiautomator/monitor/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/uiautomator/monitor/EventType;->SLEEP:Lcom/android/systemui/uiautomator/monitor/EventType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/systemui/uiautomator/monitor/EventType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/systemui/uiautomator/monitor/EventType;->$VALUES:[Lcom/android/systemui/uiautomator/monitor/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/uiautomator/monitor/EventType;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/uiautomator/monitor/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/systemui/uiautomator/monitor/EventType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/uiautomator/monitor/EventType;
    .locals 4

    sget-object v0, Lcom/android/systemui/uiautomator/monitor/EventType;->$VALUES:[Lcom/android/systemui/uiautomator/monitor/EventType;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/uiautomator/monitor/EventType;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
