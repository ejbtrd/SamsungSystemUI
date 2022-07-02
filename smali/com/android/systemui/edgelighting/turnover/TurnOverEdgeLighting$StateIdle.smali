.class Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;
.super Ljava/lang/Object;
.source "TurnOverEdgeLighting.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateIdle"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const-class p1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    return-void
.end method

.method private isNeedTurnOverChecker()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$500(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v0, "isNeedTurnOverChecker: not enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$600(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener$Requestor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener$Requestor;->isBRScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v0, "isNeedTurnOverChecker: not support screen on"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 200
    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v0, "isNeedTurnOverChecker: not support in cover closed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$700(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v0, "isNeedTurnOverChecker: not support desktop mode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onChangedUpdown(I)V
    .locals 2

    .line 238
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedUpdown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$800(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->isSupportUpsideDownChecker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v1, "Device don\'t support position sensor type."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->isNeedTurnOverChecker()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$800(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$900(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->run(Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;)V

    .line 225
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 0

    return-object p0
.end method

.method public onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->isNeedTurnOverChecker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$800(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$900(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->run(Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;)V

    .line 246
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;->TAG:Ljava/lang/String;

    const-string v1, "onRingingEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
