.class Lcom/android/systemui/qs/QSPanelController$3;
.super Ljava/lang/Object;
.source "QSPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanelController;->showEdit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanelController;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$iQOEQ-BghO2lh4-kJxYqyU3JAJg(Lcom/android/systemui/qs/QSPanelController$3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanelController$3;->lambda$run$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QSPanelController;Landroid/view/View;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelController$3;->this$0:Lcom/android/systemui/qs/QSPanelController;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelController$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/view/View;)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController$3;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelController;->showEdit(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController$3;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelController;->access$500(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 351
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController$3;->val$view:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/QSPanelController$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/QSPanelController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSPanelController$3;Landroid/view/View;)V

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController$3;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelController;->access$600(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 359
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController$3;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelController;->access$500(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getRowCount()I

    move-result v2

    .line 360
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 361
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getCellWidth()I

    move-result v0

    .line 359
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setTileLayoutResources(IIII)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    .line 367
    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelController$3;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x1

    .line 368
    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelController$3;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    .line 370
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController$3;->this$0:Lcom/android/systemui/qs/QSPanelController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelController;->access$500(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->show(IIZ)V

    :cond_2
    return-void
.end method
