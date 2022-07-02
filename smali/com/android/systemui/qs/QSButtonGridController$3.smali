.class Lcom/android/systemui/qs/QSButtonGridController$3;
.super Ljava/lang/Object;
.source "QSButtonGridController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSButtonGridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSButtonGridController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSButtonGridController;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController$3;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/QSButtonGridController$3;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSButtonGridController;->access$200(Lcom/android/systemui/qs/QSButtonGridController;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridController$3;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-static {v1}, Lcom/android/systemui/qs/QSButtonGridController;->access$300(Lcom/android/systemui/qs/QSButtonGridController;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "qs_button_grid"

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerService.Tunable onTuningChanged(newValue:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Settings:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridController$3;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-static {v1}, Lcom/android/systemui/qs/QSButtonGridController;->access$300(Lcom/android/systemui/qs/QSButtonGridController;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QSButtonGridController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController$3;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSButtonGridController;->access$400(Lcom/android/systemui/qs/QSButtonGridController;I)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateTileWidth(F)V

    :cond_1
    :goto_0
    return-void
.end method
