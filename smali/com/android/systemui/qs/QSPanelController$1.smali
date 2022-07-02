.class Lcom/android/systemui/qs/QSPanelController$1;
.super Ljava/lang/Object;
.source "QSPanelController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanelController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanelController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelController;->access$000(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelController;->access$100(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->onConfigurationChanged()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelController;->access$200(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/QSPanelController$ViewCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelController;->access$200(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/QSPanelController$ViewCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanelController$ViewCallBack;->onConfigChange(Landroid/content/res/Configuration;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {p1}, Lcom/android/systemui/qs/QSPanelController;->access$300(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    :cond_1
    return-void
.end method
