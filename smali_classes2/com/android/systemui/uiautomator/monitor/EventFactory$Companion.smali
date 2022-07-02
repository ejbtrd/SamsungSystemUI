.class public final Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;
.super Ljava/lang/Object;
.source "EventFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/monitor/EventFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSleepEvent(I)Lcom/android/systemui/uiautomator/monitor/EventData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    new-instance p0, Lcom/android/systemui/uiautomator/monitor/EventData;

    sget-object v1, Lcom/android/systemui/uiautomator/monitor/EventType;->SLEEP:Lcom/android/systemui/uiautomator/monitor/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/uiautomator/monitor/EventData;-><init>(Lcom/android/systemui/uiautomator/monitor/EventType;IIIIII)V

    return-object p0
.end method

.method public final createSwipeEvent(IIIII)Lcom/android/systemui/uiautomator/monitor/EventData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance p0, Lcom/android/systemui/uiautomator/monitor/EventData;

    sget-object v1, Lcom/android/systemui/uiautomator/monitor/EventType;->SWIPE:Lcom/android/systemui/uiautomator/monitor/EventType;

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/uiautomator/monitor/EventData;-><init>(Lcom/android/systemui/uiautomator/monitor/EventType;IIIIII)V

    return-object p0
.end method

.method public final createTouchEvent(II)Lcom/android/systemui/uiautomator/monitor/EventData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    new-instance p0, Lcom/android/systemui/uiautomator/monitor/EventData;

    sget-object v1, Lcom/android/systemui/uiautomator/monitor/EventType;->TOUCH:Lcom/android/systemui/uiautomator/monitor/EventType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/uiautomator/monitor/EventData;-><init>(Lcom/android/systemui/uiautomator/monitor/EventType;IIIIII)V

    return-object p0
.end method
