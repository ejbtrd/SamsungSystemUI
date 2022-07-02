.class final Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DndDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field private mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$1;)V
    .locals 0

    .line 530
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V
    .locals 0

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updateSummary()V

    return-void
.end method

.method private updateSummary()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 611
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile;->access$1000(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 601
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/DndTile;->access$900(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->sec_qs_detail_text:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 602
    sget p2, Lcom/android/systemui/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updateSummary()V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x95

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 554
    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->access$400()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 541
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile;->access$200(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_dnd_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile;->access$300(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->access$1702(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 670
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$1702(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    const/4 p1, 0x0

    .line 671
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    return-void
.end method

.method public setToggleState(Z)V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$500(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 560
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 561
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isDndTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/DndTile;->access$600(Lcom/android/systemui/qs/tiles/DndTile;)V

    .line 563
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$700(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToggleState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 569
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->access$800(Lcom/android/systemui/qs/tiles/DndTile;Z)V

    return-void
.end method
