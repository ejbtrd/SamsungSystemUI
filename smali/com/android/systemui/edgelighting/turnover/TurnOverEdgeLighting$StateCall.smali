.class Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;
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
    name = "StateCall"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field currentIsUpSide:I

.field final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V
    .locals 1

    .line 326
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const-class v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    .line 327
    iput p2, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->currentIsUpSide:I

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    .line 329
    invoke-static {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onTurnOver(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onChangedUpdown(I)V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedUpdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->currentIsUpSide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->currentIsUpSide:I

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->stopTurnOver()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onTurnOver(Z)V

    .line 360
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->currentIsUpSide:I

    return-void
.end method

.method public onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    const-string v1, "onNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    const-string v1, "onNotificationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    const-string v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->TAG:Ljava/lang/String;

    const-string v1, "onRingingEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$800(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$302(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)I

    .line 374
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onIdle()V

    .line 375
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;)V

    return-object v0
.end method
