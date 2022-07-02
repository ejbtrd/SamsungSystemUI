.class public Lcom/android/systemui/qs/customize/SecQSCustomizerController;
.super Lcom/android/systemui/util/ViewController;
.source "SecQSCustomizerController.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/customize/SecQSCustomizer;",
        ">;",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;"
    }
.end annotation


# instance fields
.field private final CUSTOMIZER_TILES_SETTINGS_ERROR:I

.field private final CUSTOMIZER_TILES_SETTINGS_OK:I

.field private final CUSTOMIZER_TILE_DRAG_AND_DROP_NON_DC_MOTOR:I

.field private mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAudioManager:Landroid/media/AudioManager;

.field private mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButton:Landroid/widget/TextView;

.field private final mDoneOnClickListener:Landroid/view/View$OnClickListener;

.field private mDragStart:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

.field private mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

.field private mMinNum:I

.field private mNewCustomTileList:Ljava/lang/String;

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelLogger:Lcom/android/systemui/qs/logging/PanelLogger;

.field private mResetButton:Landroid/widget/TextView;

.field private mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private final mResetOnClickListener:Landroid/view/View$OnClickListener;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mShouldHandleOrientation:Z

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private mWhereAmI:I


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/logging/PanelLogger;)V
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->CUSTOMIZER_TILES_SETTINGS_ERROR:I

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->CUSTOMIZER_TILES_SETTINGS_OK:I

    const/16 v0, 0x6c

    .line 58
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->CUSTOMIZER_TILE_DRAG_AND_DROP_NON_DC_MOTOR:I

    .line 82
    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDragStart:Z

    const-string v0, ""

    .line 87
    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mNewCustomTileList:Ljava/lang/String;

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mShouldHandleOrientation:Z

    .line 91
    new-instance p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 101
    new-instance p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$2;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneOnClickListener:Landroid/view/View$OnClickListener;

    .line 111
    new-instance p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetOnClickListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 165
    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 166
    invoke-virtual {p2, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    .line 167
    iput-object p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 168
    iput-object p4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mPanelLogger:Lcom/android/systemui/qs/logging/PanelLogger;

    .line 169
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    sget p2, Lcom/android/systemui/R$id;->reset_button:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetButton:Landroid/widget/TextView;

    .line 170
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    sget p2, Lcom/android/systemui/R$id;->done_button:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneButton:Landroid/widget/TextView;

    .line 171
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    sget p2, Lcom/android/systemui/R$id;->qs_active_paged:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    .line 172
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    sget p2, Lcom/android/systemui/R$id;->qs_available_paged:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    .line 173
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsTileMinNum(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mMinNum:I

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/SecCustomizeTileView;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/customize/SecQSCustomizerController;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDragStart:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDragStart:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->reset()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->done()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->showResetDialog()V

    return-void
.end method

.method private addActiveTile()V
    .locals 8

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTileSpecs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecQSCustomizerController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile;

    .line 534
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->isCustomTile:Z

    if-eqz v4, :cond_1

    .line 535
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v4

    goto :goto_1

    .line 537
    :cond_1
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_0

    .line 540
    new-instance v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    .line 541
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 542
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v3

    iput-object v3, v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v5, 0x0

    .line 543
    iput-boolean v5, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 544
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v3, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    const/4 v3, 0x1

    .line 545
    iput-boolean v3, v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$string;->accessibility_button:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .line 547
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->qs_edit_setting_active_area_tapped:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 549
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 552
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addingTiles: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addTile(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 488
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 490
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 491
    new-instance v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    .line 492
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 493
    iget-object v4, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 494
    iget-boolean v4, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    iput-boolean v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    .line 495
    iget-object v4, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iput-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTile state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecQSCustomizerController"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v3, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->isNewCustomTile(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->isNewCustomTile:Z

    .line 501
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->accessibility_button:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .line 503
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->qs_edit_setting_available_area_tapped:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 505
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method private close()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->save()V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->close()V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->resetNewCustomTileList()V

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mShouldHandleOrientation:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 260
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mShouldHandleOrientation:Z

    :cond_0
    const-string p0, "QPP101"

    .line 263
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private done()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->verifyTilesSettings()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->sec_qs_unable_remove_minimum:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mMinNum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->close()V

    :cond_1
    return-void
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 2

    const/4 v0, 0x0

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mOtherTiles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "custom("

    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 319
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4

    const/4 p0, 0x0

    .line 349
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 350
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 349
    invoke-interface {v0, p1, p0, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SecQSCustomizerController"

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :catch_0
    :cond_1
    return p0
.end method

.method private isNewCustomTile(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "custom("

    .line 513
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 514
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 516
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mNewCustomTileList:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 521
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mNewCustomTileList:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private queryTiles()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method private recalcSpecs()V
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAllTiles:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isTileQueryFinished()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSpecs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mAllTiles size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAllTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQSCustomizerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAllTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAllTiles:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mOtherTiles:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 464
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 465
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mOtherTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 469
    iput-boolean v1, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    goto :goto_1

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mOtherTiles:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->addTile(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    .line 473
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getActiveRows()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getActiveColumns()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 474
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private reset()V
    .locals 12

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQSCustomizerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 394
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v4

    .line 397
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList()Ljava/lang/String;

    move-result-object v5

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cscTileList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, ","

    .line 403
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, v1, v7

    .line 404
    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v9, v8}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 405
    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v10, v9}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 408
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v10, v9}, Lcom/android/systemui/qs/QSTileHost;->isAvailableCustomTile(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    .line 411
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v9, v8}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 413
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 414
    iget-object v11, v10, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x1

    .line 416
    iput-boolean v8, v10, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    .line 417
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 421
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 427
    :cond_4
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 429
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    .line 431
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 432
    iput-boolean v6, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    goto :goto_3

    .line 434
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;->addTiles(Ljava/util/ArrayList;)V

    .line 436
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->resetRemovedTileList()V

    return-void
.end method

.method private save()V
    .locals 12

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSpecs =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQSCustomizerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setSearchedTileSpec(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v0

    .line 272
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "QUICK_PANEL_BUTTON"

    const-string v4, "isChanged"

    const-string v5, "QPPE1022"

    if-eqz v2, :cond_0

    const-string/jumbo p0, "save none : same list"

    .line 273
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "false"

    invoke-static {p0, v5, v4, v0, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "true"

    invoke-static {v2, v5, v4, v6, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "QsHasEditedQuickTileList"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 287
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 292
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 293
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 294
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->getTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "QPPE1023"

    const-string v8, "buttonName"

    const-string v10, "position"

    move-object v9, v5

    move-object v11, v3

    invoke-static/range {v6 .. v11}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->getTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 305
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v3

    const-string v5, "QPPE1024"

    const-string v6, "buttonName"

    invoke-static {v3, v5, v6, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "save remove : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setTileSpecs()V
    .locals 3

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    .line 442
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 443
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showResetDialog()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 366
    sget v1, Lcom/android/systemui/R$string;->sec_qs_edit_panel_reset_dialog_message:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_reset:I

    new-instance v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$5;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v1, Lcom/android/systemui/R$string;->no:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 385
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private verifyTilesSettings()I
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getSpec()Ljava/util/List;

    move-result-object v0

    .line 332
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 334
    invoke-interface {v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 335
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 338
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    return v4

    .line 341
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mMinNum:I

    if-ge v0, p0, :cond_2

    if-nez v1, :cond_2

    return v4

    :cond_2
    return v2
.end method


# virtual methods
.method public handleOrientation(Z)V
    .locals 0

    .line 558
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mShouldHandleOrientation:Z

    return-void
.end method

.method public hide()V
    .locals 5

    .line 228
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->verifyTilesSettings()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->sec_qs_unable_remove_minimum:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mMinNum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->close()V

    :cond_1
    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method public isShown()Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown()Z

    move-result p0

    return p0
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAllTiles:Ljava/util/List;

    .line 451
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->recalcSpecs()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mResetOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mDoneOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimatorManager(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setAnimatorManager(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 191
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setQs(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    return-void
.end method

.method public setSearchedTileSpec(Ljava/lang/String;)V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setSearchedTileSpec(Ljava/lang/String;)V

    return-void
.end method

.method public setTileLayoutResources(IIII)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setTileLayoutResources(IIII)V

    return-void
.end method

.method public show(IIZ)V
    .locals 3

    .line 215
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown()Z

    move-result p3

    if-nez p3, :cond_0

    .line 217
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    .line 218
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QsNewCustomTileList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, ""

    invoke-static {v0, p3, v1}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mNewCustomTileList:Ljava/lang/String;

    .line 220
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->show(II)V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->setTileSpecs()V

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->addActiveTile()V

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->queryTiles()V

    :cond_0
    return-void
.end method
