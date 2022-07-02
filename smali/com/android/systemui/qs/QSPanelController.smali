.class public Lcom/android/systemui/qs/QSPanelController;
.super Lcom/android/systemui/qs/QSPanelControllerBase;
.source "QSPanelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanelController$ViewCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSPanelControllerBase<",
        "Lcom/android/systemui/qs/QSPanel;",
        ">;",
        "Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;"
    }
.end annotation


# instance fields
.field private mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

.field private mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mGridContentVisible:Z

.field private final mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

.field private mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

.field private final mQsCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

.field private final mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private final mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

.field private mTileLayoutTouchListener:Landroid/view/View$OnTouchListener;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private mViewCallback:Lcom/android/systemui/qs/QSPanelController$ViewCallBack;


# direct methods
.method public static synthetic $r8$lambda$b7o1hV7DIioJIhjRTbriVPLS_2Q(Lcom/android/systemui/qs/QSPanelController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanelController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/systemui/qs/QSTileRevealController$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p16

    move-object/from16 v11, p17

    move-object/from16 v12, p18

    .line 137
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/qs/QSPanelControllerBase;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/qs/bar/BarController;)V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, v13, Lcom/android/systemui/qs/QSPanelController;->mGridContentVisible:Z

    .line 88
    new-instance v0, Lcom/android/systemui/qs/QSPanelController$1;

    invoke-direct {v0, v13}, Lcom/android/systemui/qs/QSPanelController$1;-><init>(Lcom/android/systemui/qs/QSPanelController;)V

    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    .line 106
    new-instance v0, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda0;

    invoke-direct {v0, v13}, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSPanelController;)V

    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    .line 109
    new-instance v0, Lcom/android/systemui/qs/QSPanelController$2;

    invoke-direct {v0, v13}, Lcom/android/systemui/qs/QSPanelController$2;-><init>(Lcom/android/systemui/qs/QSPanelController;)V

    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelController;->mTileLayoutTouchListener:Landroid/view/View$OnTouchListener;

    .line 139
    iput-object v14, v13, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    move-object/from16 v0, p3

    .line 140
    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    move-object/from16 v0, p5

    .line 141
    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    move-object/from16 v0, p8

    .line 142
    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelController;->mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

    move-object/from16 v0, p15

    .line 143
    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v0, p4

    .line 144
    invoke-virtual {v14, v0}, Lcom/android/systemui/qs/QSSecurityFooter;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    if-eqz v15, :cond_0

    .line 156
    invoke-virtual {v15, v13}, Lcom/android/systemui/qs/PanelModeController;->addPanelModeChangeListener(Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;)V

    :cond_0
    move-object/from16 v0, p19

    .line 160
    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelController;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    move-object/from16 v0, p20

    .line 164
    iput-object v0, v13, Lcom/android/systemui/qs/QSPanelController;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/QSSecurityFooter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/QSPanelController$ViewCallBack;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mViewCallback:Lcom/android/systemui/qs/QSPanelController$ViewCallBack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/customize/SecQSCustomizerController;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private getRecord(Ljava/lang/String;)Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;
    .locals 2

    const/4 v0, 0x0

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanelController;->updateBrightnessMirror()V

    return-void
.end method

.method private updateBrightnessMirror()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setMirrorControllerAndMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    .line 222
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 221
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/QSTileRevealController$Factory;->create(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/QSTileRevealController;

    move-result-object p0

    return-object p0
.end method

.method public flipPageWithTile(Ljava/lang/String;)V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->flipPageWithTile(Ljava/lang/String;)V

    return-void
.end method

.method public getBrightnessView()Landroid/view/View;
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public getView()Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public onHomeHubModeChanged()V
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->onHomeHubModeChanged()V

    return-void
.end method

.method public onInit()V
    .locals 2

    .line 170
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onInit()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 180
    const-class v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method

.method public onPanelModeChanged()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 470
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->onPanelModeChanged()V

    goto :goto_0

    .line 473
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->onPanelModeChanged()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 186
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewAttached()V

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->updateMediaDisappearParameters()V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setSecurityFooter(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setQSPanelController(Lcom/android/systemui/qs/QSPanelController;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mTileLayoutTouchListener:Landroid/view/View$OnTouchListener;

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQSButtonGridController:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setQSButtonGridController(Lcom/android/systemui/qs/QSButtonGridController;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mViewCallback:Lcom/android/systemui/qs/QSPanelController$ViewCallBack;

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0}, Lcom/android/systemui/qs/QSPanelController$ViewCallBack;->onViewDetached()V

    .line 235
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewDetached()V

    return-void
.end method

.method public openDetails(Ljava/lang/String;)V
    .locals 3

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->isSettingsPanelExpanding()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    .line 300
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanelController;->getRecord(Ljava/lang/String;)Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    :cond_1
    return-void
.end method

.method public refreshAllTiles()V
    .locals 0

    .line 336
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->refreshAllTiles()V

    .line 337
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method public setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    return-void
.end method

.method public setGridContentVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 395
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanelController;->setVisibility(I)V

    .line 396
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanelController;->mGridContentVisible:Z

    if-eq v1, p1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    .line 399
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanelController;->mGridContentVisible:Z

    return-void
.end method

.method public setHeaderContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setHeaderContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setListening(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 252
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSPanelControllerBase;->setListening(Z)V

    .line 253
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    .line 257
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setListening(Z)V

    return-void
.end method

.method public setLockOrientation(Z)V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->handleOrientation(Z)V

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method public setSearchedTileSpec(Ljava/lang/String;)V
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setSearchedTileSpec(Ljava/lang/String;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 2

    .line 426
    instance-of v0, p1, Lcom/android/systemui/qs/SecQSLayoutDetail;

    if-eqz v0, :cond_0

    .line 427
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/SecQSLayoutDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mViewCallback:Lcom/android/systemui/qs/QSPanelController$ViewCallBack;

    .line 429
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isDetailVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 346
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/QSPanelController$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanelController$3;-><init>(Lcom/android/systemui/qs/QSPanelController;Landroid/view/View;)V

    .line 374
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public updateResources()V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    return-void
.end method
