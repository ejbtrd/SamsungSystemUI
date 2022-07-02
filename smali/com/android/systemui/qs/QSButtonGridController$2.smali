.class Lcom/android/systemui/qs/QSButtonGridController$2;
.super Ljava/lang/Object;
.source "QSButtonGridController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


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

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController$2;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 3

    .line 56
    iget-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController$2;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-static {p1}, Lcom/android/systemui/qs/QSButtonGridController;->access$200(Lcom/android/systemui/qs/QSButtonGridController;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settingsHelper onChanged() Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/QSButtonGridController$2;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-static {v1}, Lcom/android/systemui/qs/QSButtonGridController;->access$300(Lcom/android/systemui/qs/QSButtonGridController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSButtonGridController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/QSButtonGridController$2;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSButtonGridController;->access$300(Lcom/android/systemui/qs/QSButtonGridController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p1}, Lcom/android/systemui/qs/PagedTileLayout;->initLastCellWidth()V

    .line 61
    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController$2;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 62
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    const-string v2, "qs_button_grid"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/QSButtonGridController;->access$400(Lcom/android/systemui/qs/QSButtonGridController;I)F

    move-result p0

    .line 61
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateTileWidth(F)V

    goto :goto_0

    .line 64
    :cond_1
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateTileWidth(F)V

    :goto_0
    return-void
.end method
