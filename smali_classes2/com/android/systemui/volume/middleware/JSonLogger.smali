.class public Lcom/android/systemui/volume/middleware/JSonLogger;
.super Ljava/lang/Object;
.source "JSonLogger.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeMiddleware<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "JSonLogger"


# instance fields
.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field mLogStore:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public static synthetic $r8$lambda$9NMyTgIIrqTgn-OEv70fPldteDE(Lcom/android/systemui/volume/middleware/JSonLogger;Lcom/google/gson/Gson;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/middleware/JSonLogger;->lambda$applyState$2(Lcom/google/gson/Gson;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mk6WhPAIHcOIy83xeNmeRQIgpcY(Lcom/android/systemui/volume/middleware/JSonLogger;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;->lambda$apply$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$smktPtxohu0cWlBr5j_8AMsAp9o(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;->lambda$applyState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uLLHwzVRcsiiulFEIQSxTs2dgpw(Lcom/android/systemui/volume/middleware/JSonLogger;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;->lambda$applyState$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xhuq95V1sV56jqyCQ8In24OtgmA(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;->lambda$applyState$3(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/middleware/JSonLogger;->mLogStore:Lcom/android/systemui/basic/util/LogWrapper;

    .line 20
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/JSonLogger;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    return-void
.end method

.method private synthetic lambda$apply$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 28
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/JSonLogger;->mLogStore:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$applyState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$applyState$2(Lcom/google/gson/Gson;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 47
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/JSonLogger;->mLogStore:Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v0, Lcom/android/systemui/volume/middleware/JSonLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyVolumeRow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$applyState$3(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 53
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$applyState$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 54
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/JSonLogger;->mLogStore:Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v0, Lcom/android/systemui/volume/middleware/JSonLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVolumeProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
    .locals 2

    .line 25
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/systemui/volume/middleware/JSonLogger;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/middleware/JSonLogger;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;->apply(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    return-object p0
.end method

.method public applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 42
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    if-ne v0, v1, :cond_0

    .line 44
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 45
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 46
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/middleware/JSonLogger;Lcom/google/gson/Gson;)V

    .line 47
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    if-ne v0, v1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 53
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/middleware/JSonLogger$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/middleware/JSonLogger;)V

    .line 54
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic applyState(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;->applyState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method
