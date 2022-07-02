.class Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;
.super Ljava/lang/Object;
.source "TurnOverEdgeLighting.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$102(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Z)Z

    if-eq p1, v1, :cond_1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$200(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$202(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    goto :goto_1

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$200(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$202(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    :goto_1
    return-void
.end method
