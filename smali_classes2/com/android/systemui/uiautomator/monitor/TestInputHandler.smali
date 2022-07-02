.class public final Lcom/android/systemui/uiautomator/monitor/TestInputHandler;
.super Ljava/lang/Object;
.source "TestInputHandler.kt"

# interfaces
.implements Lcom/android/systemui/uiautomator/monitor/TestInputMonitor$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/monitor/TestInputHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestInputHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestInputHandler.kt\ncom/android/systemui/uiautomator/monitor/TestInputHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/uiautomator/monitor/TestInputHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final displaySize:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mEventHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/uiautomator/monitor/EventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mLastEventTime:J

.field private mStartEventTime:J

.field private mStartX:I

.field private mStartY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->Companion:Lcom/android/systemui/uiautomator/monitor/TestInputHandler$Companion;

    .line 22
    const-class v0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->displaySize:Landroid/graphics/Point;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 30
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private final addEvent(Lcom/android/systemui/uiautomator/monitor/EventData;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final checkEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v4, v0

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v5, v0

    .line 61
    iget v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartX:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 62
    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartY:I

    sub-int v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xa

    if-gt v0, v2, :cond_2

    if-gt v1, v2, :cond_2

    .line 65
    iget v9, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartX:I

    iget-object p1, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gt v9, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartY:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    sget-object p1, Lcom/android/systemui/uiautomator/monitor/EventFactory;->Companion:Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;

    invoke-virtual {p1, v9, v0}, Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;->createTouchEvent(II)Lcom/android/systemui/uiautomator/monitor/EventData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/uiautomator/monitor/EventData;)V

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    sget-object v6, Lcom/android/systemui/uiautomator/monitor/EventFactory;->Companion:Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;

    iget v10, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartY:I

    const/4 v11, 0x1

    move v7, v9

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;->createSwipeEvent(IIIII)Lcom/android/systemui/uiautomator/monitor/EventData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/uiautomator/monitor/EventData;)V

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartEventTime:J

    sub-long/2addr v0, v2

    const/16 p1, 0x19

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v6, v0

    .line 75
    sget-object v1, Lcom/android/systemui/uiautomator/monitor/EventFactory;->Companion:Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;

    iget v2, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartX:I

    iget v3, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartY:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;->createSwipeEvent(IIIII)Lcom/android/systemui/uiautomator/monitor/EventData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/uiautomator/monitor/EventData;)V

    :goto_1
    return-void
.end method

.method private final checkSleepEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 50
    iget-wide v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mLastEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mLastEventTime:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 53
    sget-object v0, Lcom/android/systemui/uiautomator/monitor/EventFactory;->Companion:Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;

    invoke-virtual {v0, p1}, Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;->createSleepEvent(I)Lcom/android/systemui/uiautomator/monitor/EventData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->addEvent(Lcom/android/systemui/uiautomator/monitor/EventData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getEventList()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    new-instance v1, Lcom/android/systemui/uiautomator/utils/GsonWrapper;

    invoke-direct {v1}, Lcom/android/systemui/uiautomator/utils/GsonWrapper;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/uiautomator/utils/GsonWrapper;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 89
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v2

    throw p0
.end method

.method public onEventHandler(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->checkEvent(Landroid/view/MotionEvent;)V

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mLastEventTime:J

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartX:I

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartY:I

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->checkSleepEvent(Landroid/view/MotionEvent;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mStartEventTime:J

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/uiautomator/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
