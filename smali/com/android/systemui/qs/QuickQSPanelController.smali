.class public Lcom/android/systemui/qs/QuickQSPanelController;
.super Lcom/android/systemui/qs/QSPanelControllerBase;
.source "QuickQSPanelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickQSPanelController$BarItemsHeightProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSPanelControllerBase<",
        "Lcom/android/systemui/qs/QuickQSPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentScreenLayout:I

.field private mLastOrientation:I

.field private final mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;


# direct methods
.method public static synthetic $r8$lambda$vEqOQOv7ObL-HObzDRHb8bwXQpQ(Lcom/android/systemui/qs/QuickQSPanelController;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickQSPanelController;->lambda$new$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/qs/QSPanelControllerBase;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/qs/bar/BarController;)V

    .line 52
    new-instance p1, Lcom/android/systemui/qs/QuickQSPanelController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickQSPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QuickQSPanelController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/res/Configuration;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getQuickQsTileNum()I

    move-result v0

    .line 56
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 58
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iput v1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mCurrentScreenLayout:I

    .line 61
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickQSPanelController;->setMaxTiles(I)V

    .line 64
    :goto_0
    iget v0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mLastOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    .line 65
    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mLastOrientation:I

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->updateBottomPadding()V

    :cond_1
    return-void
.end method

.method private setMaxTiles(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setMaxTiles(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->setTiles()V

    return-void
.end method


# virtual methods
.method public getNumQuickTiles()I
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result p0

    return p0
.end method

.method protected isCollapsedView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isListening()Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onInit()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewAttached()V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    new-instance v1, Lcom/android/systemui/qs/QuickQSPanelController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickQSPanelController$1;-><init>(Lcom/android/systemui/qs/QuickQSPanelController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setBarItemHeightProvider(Lcom/android/systemui/qs/QuickQSPanelController$BarItemsHeightProvider;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewDetached()V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanel;->removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    return-void
.end method

.method public setContentMargins(II)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/qs/QSPanel;->setContentMargins(IILandroid/view/ViewGroup;)V

    return-void
.end method

.method public setTiles()V
    .locals 4

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    const/4 v1, 0x1

    .line 135
    invoke-super {p0, v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method
