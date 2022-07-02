.class Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;
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
    name = "StateNoti"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field currentIsUpSide:I

.field final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const-class p1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 264
    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChangedUpdown(I)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedUpdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->stopTurnOver()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onTurnOver(Z)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onTurnRight(Z)V

    .line 304
    :goto_0
    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    return-void
.end method

.method public onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 3

    .line 274
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "StateNoti$onNotification: should not reach here at normal case"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$300(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onTurnOver(Z)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onTurnRight(Z)V

    :goto_0
    return-object p0
.end method

.method public onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    const-string v1, "onNotificationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$800(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$302(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)I

    .line 288
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onIdle()V

    .line 289
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;)V

    return-object v0
.end method

.method public onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    const-string v1, "onRinging. So hide edge effect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onIdle()V

    .line 312
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$300(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    return-object v0
.end method

.method public onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "StateNoti$onRingingEnd: should not reach here at normal case"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method
