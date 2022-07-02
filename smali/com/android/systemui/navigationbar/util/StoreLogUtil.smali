.class public Lcom/android/systemui/navigationbar/util/StoreLogUtil;
.super Ljava/lang/Object;
.source "StoreLogUtil.java"


# static fields
.field private static mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper; = null

.field private static mLoggingStarted:Z = true


# instance fields
.field private mDisabledEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/navigationbar/store/EventType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vssLcC6HqAPsROFdRC97u-b_mWI(Ljava/lang/StringBuilder;Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lambda$printEventLog$0(Ljava/lang/StringBuilder;Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    .line 25
    sput-object p1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 26
    sget-object p1, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_DEADZONE_SIZE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_MOVE_GESTURE_HINT_VI:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_STYLE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_INVALIDATE_REMOTEVIEW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_SET_DISABLE_FLAGS:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_BUTTON_FORCED_VISIBLE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_REGION_SAMPLING_ENABLE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_GAMETOOLS_SYSTEMUI_STATE_FLAG:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_GESTURE_HINT:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isEventLogEnabled(Lcom/android/systemui/navigationbar/store/EventType;)Z
    .locals 3

    .line 111
    sget-boolean v0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mLoggingStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/EventType;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$printEventLog$0(Ljava/lang/StringBuilder;Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public printErrorLog(Ljava/lang/String;)V
    .locals 1

    .line 107
    sget-object p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "Store"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public printEventLog(ILjava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/navigationbar/store/EventType;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p3}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->isEventLogEnabled(Lcom/android/systemui/navigationbar/store/EventType;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "--"

    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "handleEvent "

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 61
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[EventType] "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " [Module] "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance p1, Lcom/android/systemui/navigationbar/util/StoreLogUtil$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/util/StoreLogUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p4, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 66
    sget-object p1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Store"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public printLog(ILjava/lang/String;)V
    .locals 2

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "--"

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-object p1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Store"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
