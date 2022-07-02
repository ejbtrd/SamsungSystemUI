.class public Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "QSMediaPlayerBar.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;
    }
.end annotation


# static fields
.field private static ANIM_DURATION:I = 0x12c

.field private static FIRST_EMPTY_PAGE_KEY:Ljava/lang/String; = "first_page"

.field private static LAST_EMPTY_PAGE_KEY:Ljava/lang/String; = "last_page"

.field private static MINIMUM_VELOCITY:I = 0xfa

.field private static TAG:Ljava/lang/String; = "QSMediaPlayerBar"


# instance fields
.field private MEDIAOUTPUT_REMOTEVIEWS_AVAILABLE_CHECKED:Z

.field private final mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mBarHeight:F

.field private mBarState:I

.field private mBarTopMargin:I

.field private mBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCollapsedHeight:I

.field mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandCallback:Lcom/android/systemui/media/SecMediaControlPanel$Callback;

.field private mExpandedHeight:I

.field private mInitialBarHeight:F

.field private mIsGeustureExpand:Z

.field private mIsRTL:I

.field private mIsSupportMediaOutputRemoteViews:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalListening:Z

.field private mLogger:Lcom/android/systemui/media/MediaLogger;

.field private mMaxRemoteViewHeight:I

.field private mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

.field private mMediaControlPanelFactory:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaDataListener:Lcom/android/systemui/media/MediaDataManager$Listener;

.field private mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private mMediaOutputBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaOutputRemoteViewsBottom:Landroid/widget/LinearLayout;

.field private mMediaOutputRemoteViewsContents:Landroid/widget/LinearLayout;

.field private mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

.field private final mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field private mPageIndicatorHeight:I

.field private mPageIndicatorPosition:F

.field private mPagerMargin:I

.field private mPlayerBarState:I

.field private mPlayerNeedForceUpdate:Z

.field private mRadius:I

.field private mRemoteViewHeight:I

.field private mRemovedPlayer:Z

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTracking:Z

.field private mUpdatePlayers:Z

.field private mUserTouch:Z

.field private mVelocity:F


# direct methods
.method public static synthetic $r8$lambda$-v7-T27pHPbhpEEkyR9V0ioy-yw(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->lambda$animateToggle$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XyKvp3lm35XsfNvqXj8GZ5VUX0Y(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->lambda$removePausedPlayers$1(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jcVq611ODB1k_eRZ-PrhDjy1pnI(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->lambda$recreatePlayers$0(Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/MediaDataManager;Ljavax/inject/Provider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaLogger;Lcom/android/systemui/media/SecQSMediaPlayerData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/media/MediaLogger;",
            "Lcom/android/systemui/media/SecQSMediaPlayerData;",
            ")V"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemoteViewHeight:I

    .line 94
    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMaxRemoteViewHeight:I

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mTracking:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mUpdatePlayers:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemovedPlayer:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerNeedForceUpdate:Z

    .line 113
    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsSupportMediaOutputRemoteViews:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->MEDIAOUTPUT_REMOTEVIEWS_AVAILABLE_CHECKED:Z

    .line 153
    new-instance v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$1;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$2;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaOutputBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$3;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandCallback:Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    .line 672
    new-instance v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 786
    new-instance v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 1007
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsGeustureExpand:Z

    .line 1044
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mUserTouch:Z

    .line 1063
    new-instance v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$9;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaDataListener:Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 239
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 240
    iput-object p5, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLogger:Lcom/android/systemui/media/MediaLogger;

    .line 241
    iput-object p4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 242
    invoke-interface {p4, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 244
    iput-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaControlPanelFactory:Ljavax/inject/Provider;

    .line 245
    iput-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    .line 246
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaDataListener:Lcom/android/systemui/media/MediaDataManager$Listener;

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    .line 248
    iput-object p6, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    .line 249
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p6, p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->createMediaBluetoothHelper(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->showBar(Z)V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateResources()V

    .line 253
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaPlayerCollapsedHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:F

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->initMediaOutputSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/MediaDataManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsRTL:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Z)I
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mUpdatePlayers:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemovedPlayer:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->canRemovePausedPlayers()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mUserTouch:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->removePausedPlayers()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->swipeBack(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->animateToggle()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updatePageIndicatorVisibility()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updatePageIndicatorColor()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/qs/SecPageIndicator;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)F
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicatorPosition:F

    return p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;F)F
    .locals 0

    .line 64
    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicatorPosition:F

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/MediaLogger;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLogger:Lcom/android/systemui/media/MediaLogger;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->removePlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->FIRST_EMPTY_PAGE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->LAST_EMPTY_PAGE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getCurrentPage()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;IZ)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setCurrentPage(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemoteViewHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getPlayerWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRadius:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    return-object p0
.end method

.method private addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 7

    .line 373
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mOrientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mOrientation:I

    .line 375
    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerNeedForceUpdate:Z

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaPlayer()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    const/4 v1, 0x0

    .line 379
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result v3

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v0, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p2

    .line 382
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 384
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getFirstPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->removeMediaList(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 385
    iget-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getLastPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->removeMediaList(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 387
    iget-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaPlayer()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/SecMediaControlPanel;

    if-nez p2, :cond_3

    .line 389
    iget-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 390
    new-instance v0, Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$layout;->sec_media_view:I

    iget-object v6, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/systemui/media/SecPlayerViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->attach(Lcom/android/systemui/media/SecPlayerViewHolder;)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 398
    new-instance v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$6;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setCallback(Ljava/lang/String;Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;)V

    .line 416
    invoke-virtual {p2, p3}, Lcom/android/systemui/media/SecMediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;)V

    .line 417
    iget-boolean p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLocalListening:Z

    invoke-virtual {p2, p3}, Lcom/android/systemui/media/SecMediaControlPanel;->setListening(Z)V

    .line 418
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 419
    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p3, v1, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaList(ILcom/android/systemui/media/SecMediaControlPanel;)V

    move p3, v2

    goto :goto_0

    .line 422
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p3, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaList(Lcom/android/systemui/media/SecMediaControlPanel;)V

    move p3, v1

    .line 424
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLogger:Lcom/android/systemui/media/MediaLogger;

    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/MediaLogger;->logAddPlayer(Ljava/lang/String;Z)V

    goto :goto_2

    .line 426
    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/systemui/media/SecMediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;)V

    .line 427
    invoke-virtual {p2, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setPlayerKey(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p3}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-eqz p3, :cond_4

    .line 429
    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p3, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->removeMediaList(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 430
    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p3, v1, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaList(ILcom/android/systemui/media/SecMediaControlPanel;)V

    move p3, v2

    goto :goto_1

    :cond_4
    move p3, v1

    .line 433
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLogger:Lcom/android/systemui/media/MediaLogger;

    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/MediaLogger;->logUpdatePlayer(Ljava/lang/String;Z)V

    .line 436
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result p1

    if-lez p1, :cond_7

    .line 438
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getFirstPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p1

    if-nez p1, :cond_5

    .line 439
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    iget-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->setFirstPageView(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 440
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getFirstPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$layout;->sec_media_view:I

    iget-object v5, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/systemui/media/SecPlayerViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/SecMediaControlPanel;->attach(Lcom/android/systemui/media/SecPlayerViewHolder;)V

    .line 443
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getFirstPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->getView()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getFirstPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/systemui/media/SecMediaControlPanel;->setEmptyPalyer(Z)V

    .line 445
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getFirstPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaList(ILcom/android/systemui/media/SecMediaControlPanel;)V

    .line 446
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    sget-object v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->FIRST_EMPTY_PAGE_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getFirstPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 448
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getLastPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p1

    if-nez p1, :cond_6

    .line 449
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->setLastPageView(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 450
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getLastPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/SecPlayerViewHolder;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$layout;->sec_media_view:I

    iget-object v6, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/systemui/media/SecPlayerViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->attach(Lcom/android/systemui/media/SecPlayerViewHolder;)V

    .line 453
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getLastPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->getView()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getLastPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/systemui/media/SecMediaControlPanel;->setEmptyPalyer(Z)V

    .line 455
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getLastPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaList(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 456
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    sget-object p2, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->LAST_EMPTY_PAGE_KEY:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getLastPageView()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 459
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 460
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandCallback:Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    invoke-virtual {p2, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setExpandCallback(Lcom/android/systemui/media/SecMediaControlPanel$Callback;)V

    goto :goto_3

    .line 463
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->isShowing()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result p1

    if-lez p1, :cond_9

    .line 464
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;

    .line 465
    invoke-interface {p2, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;->onMediaVisibilityChanged(Z)V

    goto :goto_4

    .line 470
    :cond_9
    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_a

    .line 471
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateRemoteViewHeight()V

    .line 472
    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemoteViewHeight:I

    goto :goto_5

    :cond_a
    if-ne p1, v2, :cond_b

    .line 474
    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    goto :goto_5

    :cond_b
    if-nez p1, :cond_c

    .line 476
    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    goto :goto_5

    :cond_c
    move p1, v1

    :goto_5
    int-to-float p1, p1

    .line 478
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setPlayerBarExpansion(F)V

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateViewPager()V

    .line 481
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result p1

    if-eq v3, p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz p1, :cond_d

    .line 482
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 484
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getCurrentPage()I

    move-result p1

    if-nez p3, :cond_e

    if-eqz p1, :cond_e

    .line 485
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result p2

    sub-int/2addr p2, v2

    if-ne p1, p2, :cond_f

    .line 486
    :cond_e
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setCurrentPage(IZ)V

    .line 489
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaPlayerSize()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result p0

    if-eq p1, p0, :cond_10

    .line 490
    sget-object p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->TAG:Ljava/lang/String;

    const-string p1, "Size of players list and number of views in carousel are out of sync"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method private animateToggle()V
    .locals 5

    .line 886
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mTracking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 887
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->shouldPlayerExpand()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 888
    iget v3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:F

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v0, v0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 889
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    iget v3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 890
    iget v3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 891
    sget v3, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->ANIM_DURATION:I

    int-to-float v3, v3

    div-float/2addr v0, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 892
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3edc28f6    # 0.43f

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 893
    new-instance v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 896
    iput-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 897
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private canRemovePausedPlayers()Z
    .locals 1

    .line 827
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaPlayer()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 828
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private collapsePlayerHeight()V
    .locals 2

    .line 987
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    if-nez v0, :cond_0

    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1000
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setPlayerBarExpansion(F)V

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v0, :cond_2

    .line 1003
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicatorHeight:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method private getCurrentPage()I
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 750
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsRTL:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x0

    .line 751
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result p0

    sub-int/2addr p0, v1

    sub-int v0, p0, v0

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method private getMediaPlayerNum(Z)I
    .locals 1

    .line 776
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result p0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x2

    if-le p0, p1, :cond_2

    add-int/lit8 p0, p0, -0x2

    :cond_2
    return p0
.end method

.method private getPlayerWidth()I
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPagerMargin:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method private initMediaOutputSettings()V
    .locals 5

    .line 1269
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->MEDIAOUTPUT_REMOTEVIEWS_AVAILABLE_CHECKED:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.samsung.android.mdx.quickboard.provider"

    .line 1271
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1272
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "feature_lite_mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "isSupportLiteMode"

    .line 1273
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsSupportMediaOutputRemoteViews:Z

    .line 1274
    sget-object v2, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsSupportMediaOutputRemoteViews = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsSupportMediaOutputRemoteViews:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , bundle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLogger:Lcom/android/systemui/media/MediaLogger;

    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsSupportMediaOutputRemoteViews:Z

    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/media/MediaLogger;->logSupportMediaOutputRemoteViews(ZZ)V

    .line 1276
    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->MEDIAOUTPUT_REMOTEVIEWS_AVAILABLE_CHECKED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1278
    sget-object v2, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get settings : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsSupportMediaOutputRemoteViews:Z

    :goto_2
    return-void
.end method

.method private synthetic lambda$animateToggle$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 894
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setPlayerBarExpansion(F)V

    return-void
.end method

.method private synthetic lambda$recreatePlayers$0(Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 1

    .line 665
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->removePlayer(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 666
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method private static synthetic lambda$removePausedPlayers$1(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    .line 841
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private recreatePlayers()V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 664
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 669
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removePausedPlayers()V
    .locals 5

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 839
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 840
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 844
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v2, v1

    .line 846
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 847
    iget-object v3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/MediaDataManager;->onMediaDataRemoved(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    .line 851
    sget-object v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->FIRST_EMPTY_PAGE_KEY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->removePlayer(Ljava/lang/String;)V

    .line 852
    sget-object v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->LAST_EMPTY_PAGE_KEY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->removePlayer(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->showBar(Z)V

    .line 854
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;

    .line 855
    invoke-interface {v2, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;->onMediaVisibilityChanged(Z)V

    goto :goto_1

    .line 857
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarHeightChanged()V

    .line 861
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPNE0020"

    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 844
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private removePlayer(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 495
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemovedPlayer:Z

    .line 496
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 498
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->removeMediaList(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 499
    invoke-virtual {v1}, Lcom/android/systemui/media/SecMediaControlPanel;->onDestroy()V

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateViewPager()V

    .line 501
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_0

    .line 502
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLogger:Lcom/android/systemui/media/MediaLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaLogger;->logRemovePlayer(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLogger:Lcom/android/systemui/media/MediaLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaLogger;->logRemovePlayerError(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 508
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemovedPlayer:Z

    return-void
.end method

.method private setCurrentPage(IZ)V
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 740
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsRTL:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 741
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result v0

    sub-int/2addr v0, v1

    sub-int p1, v0, p1

    .line 743
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method private setPlayerBarExpansion(F)V
    .locals 3

    .line 917
    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:F

    .line 918
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 919
    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 920
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setPlayerBarState(I)V

    :goto_0
    move v1, v2

    goto :goto_1

    .line 923
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 924
    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    if-eq p1, v2, :cond_2

    .line 925
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setPlayerBarState(I)V

    goto :goto_0

    .line 929
    :cond_1
    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    if-eqz p1, :cond_2

    .line 930
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setPlayerBarState(I)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateMediaBarHeight()V

    .line 938
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updatePlayerHeight()V

    return-void
.end method

.method private setPlayerBarState(I)V
    .locals 0

    .line 942
    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    .line 943
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updatePageIndicatorVisibility()V

    return-void
.end method

.method private shouldPlayerExpand()Z
    .locals 5

    .line 901
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mTracking:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 902
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v2, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->MINIMUM_VELOCITY:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 903
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mVelocity:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 905
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    .line 906
    iget v3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    .line 907
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:F

    int-to-float v4, v3

    sub-float/2addr p0, v4

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 911
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isPlayerExpanded()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private swipeBack(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 868
    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsRTL:I

    if-ne p1, v0, :cond_0

    .line 869
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 871
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setCurrentPage(IZ)V

    int-to-float p1, p1

    .line 872
    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicatorPosition:F

    goto :goto_1

    .line 875
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result p1

    .line 876
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsRTL:I

    if-ne v1, v0, :cond_2

    move p1, v0

    .line 879
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setCurrentPage(IZ)V

    int-to-float p1, p1

    .line 880
    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicatorPosition:F

    .line 882
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicatorPosition:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    return-void
.end method

.method private updateMediaBarHeight()V
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 948
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateRemoteViewHeight()V

    .line 950
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemoteViewHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 952
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 954
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 956
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarTopMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 957
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePageIndicatorColor()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->media_primary_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/16 v1, 0xb4

    .line 760
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 761
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz p0, :cond_0

    .line 762
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setSecIndicatorColor(II)V

    :cond_0
    return-void
.end method

.method private updatePageIndicatorVisibility()V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 770
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result p0

    if-le p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 768
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updatePlayerHeight()V
    .locals 4

    .line 961
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result v0

    if-lez v0, :cond_3

    .line 962
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:F

    float-to-int v0, v0

    .line 963
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 964
    iget v3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/media/SecMediaControlPanel;->setExpanded(Z)V

    .line 965
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getPlayerWidth()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setMediaExpansion(II)V

    goto :goto_0

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarHeightChanged()V

    .line 968
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_3

    .line 969
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicatorHeight:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_3
    return-void
.end method

.method private updateRemoteViewHeight()V
    .locals 3

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaOutputRemoteViewsContents:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaOutputRemoteViewsBottom:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1141
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaOutputRemoteViewsBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemoteViewHeight:I

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1143
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    add-int/2addr v1, v2

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 1144
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMaxRemoteViewHeight:I

    .line 1145
    :goto_1
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemoteViewHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemoteViewHeight:I

    .line 1146
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemoteViewHeight:I

    :cond_3
    :goto_2
    return-void
.end method

.method private updateResources()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaPlayerCollapsedHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaPlayerExpandHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_media_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPagerMargin:I

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_media_player_background_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRadius:I

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaPlayerBarTopMargin(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarTopMargin:I

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_media_player_page_indicator_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicatorHeight:I

    return-void
.end method

.method private updateViewPager()V
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addVisibilityListener(Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;)V
    .locals 0

    .line 979
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 519
    invoke-super {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaDataListener:Lcom/android/systemui/media/MediaDataManager$Listener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaDataManager;->removeListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaDataListener:Lcom/android/systemui/media/MediaDataManager$Listener;

    return-void
.end method

.method public getBarHeight()I
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:F

    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarTopMargin:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    float-to-int p0, v0

    return p0
.end method

.method protected getBarLayout()I
    .locals 0

    .line 369
    sget p0, Lcom/android/systemui/R$layout;->sec_media_carousel:I

    return p0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateResources()V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getBarLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 318
    sget v0, Lcom/android/systemui/R$id;->media_carousel_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 319
    new-instance v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 330
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 332
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->sec_media_carousel_view_pager:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    .line 333
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 334
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 335
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPagerMargin:I

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 336
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->sec_media_page_indicator:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateMediaBarHeight()V

    .line 361
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result p1

    if-lez p1, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->showBar(Z)V

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->recreatePlayers()V

    .line 364
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    return-object p0
.end method

.method public isMediaOutputVisible()Z
    .locals 1

    .line 1174
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlayerExpanded()Z
    .locals 0

    .line 1019
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 602
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLogger:Lcom/android/systemui/media/MediaLogger;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaDataSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaLogger;->logConfigChanged(Ljava/lang/Integer;)V

    const/4 v0, 0x1

    .line 603
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mUpdatePlayers:Z

    .line 604
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 605
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateResources()V

    .line 606
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->invalidateOutline()V

    .line 608
    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 609
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateRemoteViewHeight()V

    .line 610
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mRemoteViewHeight:I

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    .line 612
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 614
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    int-to-float v2, v2

    .line 616
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setPlayerBarExpansion(F)V

    .line 617
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateMediaBarHeight()V

    .line 618
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerNeedForceUpdate:Z

    if-eqz v2, :cond_5

    .line 619
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->recreatePlayers()V

    .line 620
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mOrientation:I

    .line 626
    :cond_5
    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsRTL:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 627
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsRTL:I

    if-eq v2, v0, :cond_6

    .line 630
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v1, v2, v1

    .line 632
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget v3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsRTL:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 633
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 635
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaPlayer()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 636
    invoke-virtual {v3, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 638
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->seslSetConfigurationChanged(Z)V

    .line 639
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setCurrentPage(IZ)V

    .line 640
    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mUpdatePlayers:Z

    return-void
.end method

.method public onMediaPlayerTouch(F)V
    .locals 2

    .line 1010
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayerBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 1012
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mInitialBarHeight:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCollapsedHeight:I

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1013
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x1

    .line 1014
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsGeustureExpand:Z

    .line 1015
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setPlayerBarExpansion(F)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    .line 578
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarState:I

    if-eq v0, p1, :cond_1

    .line 579
    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarState:I

    .line 580
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLocalListening:Z

    .line 581
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaPlayer()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 583
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLocalListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/SecMediaControlPanel;->setListening(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onUiModeChanged()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaPlayer()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 647
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateResources()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setListening(Z)V
    .locals 4

    .line 543
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->setListening(Z)V

    .line 544
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLocalListening:Z

    if-eq v0, p1, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 545
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-eq p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 546
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result v2

    if-lez v2, :cond_2

    .line 547
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaPlayer()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 548
    invoke-virtual {v3, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setListening(Z)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    .line 551
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setCurrentPage(IZ)V

    .line 552
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->collapsePlayerHeight()V

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    .line 555
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->collapsePlayerHeight()V

    .line 557
    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mLocalListening:Z

    :cond_4
    return-void
.end method

.method public setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V
    .locals 1

    .line 724
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    const/4 v0, 0x1

    .line 725
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getMediaPlayerNum(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 726
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPageIndicatorPosition:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    sget p1, Lcom/android/systemui/R$id;->media_carousel_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1057
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public setQsFullyExpanded(Z)V
    .locals 1

    .line 590
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->setQsFullyExpanded(Z)V

    if-eqz p1, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->collapsePlayerHeight()V

    .line 595
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPlayerData:Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaPlayer()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 596
    invoke-virtual {v0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setQsFullyExpanded(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTracking(ZF)V
    .locals 4

    .line 1023
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isMediaOutputVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1026
    :cond_0
    iput p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mVelocity:F

    if-nez p1, :cond_1

    .line 1027
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->animateToggle()V

    .line 1028
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mTracking:Z

    const/4 v0, 0x0

    if-eq p2, p1, :cond_2

    if-nez p1, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsGeustureExpand:Z

    if-eqz p2, :cond_2

    .line 1029
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p2

    const-string v1, "QPNE0021"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "swipe"

    invoke-static {p2, v1, v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsGeustureExpand:Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 1036
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mIsGeustureExpand:Z

    .line 1038
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mTracking:Z

    if-eqz p1, :cond_4

    .line 1040
    iget p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:F

    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mInitialBarHeight:F

    :cond_4
    return-void
.end method

.method public setUserTouch(Z)V
    .locals 0

    .line 1047
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mUserTouch:Z

    return-void
.end method

.method protected showBar(Z)V
    .locals 0

    .line 306
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 307
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaCarousel:Landroidx/viewpager/widget/ViewPager;

    if-eqz p0, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    :cond_0
    return-void
.end method
