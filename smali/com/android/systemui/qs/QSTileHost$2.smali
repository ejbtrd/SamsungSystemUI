.class Lcom/android/systemui/qs/QSTileHost$2;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateQuickPanelItems()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$100(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->access$002(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)Ljava/util/List;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateQuickPanelItems : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v1}, Lcom/android/systemui/qs/QSTileHost;->access$000(Lcom/android/systemui/qs/QSTileHost;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$300(Lcom/android/systemui/qs/QSTileHost;)V

    .line 367
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    return-void
.end method

.method public onUpdateQuickPanelUnavailableButtons()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$100(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/knox/KnoxStateMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getQuickPanelUnavailableButtons()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->access$402(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)Ljava/util/List;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateQuickPanelItems : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v1}, Lcom/android/systemui/qs/QSTileHost;->access$400(Lcom/android/systemui/qs/QSTileHost;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost;->access$200(Lcom/android/systemui/qs/QSTileHost;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$2;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {p0}, Lcom/android/systemui/qs/QSTileHost;->access$300(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method
