.class Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;
.super Ljava/lang/Object;
.source "TurnOverEdgeLighting.java"

# interfaces
.implements Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;


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

    .line 57
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "UpsideDownChecker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$300(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 62
    invoke-static {}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$300(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$302(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)I

    .line 66
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$200(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->access$300(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onChangedUpdown(I)V

    :cond_1
    return-void
.end method
