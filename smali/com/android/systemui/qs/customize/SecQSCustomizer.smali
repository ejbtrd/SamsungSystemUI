.class public Lcom/android/systemui/qs/customize/SecQSCustomizer;
.super Landroid/widget/LinearLayout;
.source "SecQSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;,
        Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;
    }
.end annotation


# instance fields
.field private ACTIVE_LEFT_INDICATOR:I

.field private ACTIVE_RIGHT_INDICATOR:I

.field private final ACTIVE_TO_AVAILABLE:I

.field private final AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_AREA:I

.field private final MSG_HANDLE_ANIMATE_DROP:I

.field private final MSG_HANDLE_ANIMATE_PAGE:I

.field private final MSG_HANDLE_ANIMATE_START:I

.field private isShown:Z

.field private mActiveColumns:I

.field private mActivePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field private mActiveRows:I

.field private mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field private mAvailablePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field private mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

.field private mAvailableTileLayoutContainer:Landroid/widget/LinearLayout;

.field protected mCellHeight:I

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCustomizing:Z

.field private mCutOutHeight:I

.field private mDoneButton:Landroid/widget/TextView;

.field mDragListener:Landroid/view/View$OnDragListener;

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field protected mIsClosing:Z

.field private mIsDroppedOnView:Z

.field private mLeftIndicator:Landroid/widget/FrameLayout;

.field private mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

.field private mMinNum:I

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mPagedHeight:I

.field private mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mResetButton:Landroid/widget/TextView;

.field private mRightIndicator:Landroid/widget/FrameLayout;

.field private mToast:Landroid/widget/Toast;

.field mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

.field private mWhereAmI:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 209
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_QuickSettings:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x3e8

    .line 76
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_TO_AVAILABLE:I

    const/16 v0, 0x7d0

    .line 77
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->AVAILABLE_TO_ACTIVE:I

    const/16 v1, 0x64

    .line 79
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_START:I

    const/16 v1, 0x65

    .line 80
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_DROP:I

    const/16 v1, 0x66

    .line 81
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_PAGE:I

    const/16 v1, 0x67

    .line 82
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->MSG_HANDLE_ANIMATE_AREA:I

    .line 84
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    .line 85
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    const/4 p2, 0x0

    .line 94
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    .line 95
    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    .line 112
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    const/4 p2, -0x1

    .line 113
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    const/4 p2, 0x3

    .line 114
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    const/4 p2, 0x4

    .line 115
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColumns:I

    .line 126
    new-instance p2, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance p2, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    .line 210
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->sec_qs_customize_panel_content:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 215
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->sec_qs_tile_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellWidth:I

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupPager()V

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsDroppedOnView:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animationDrop()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateArea(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animatePage(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animateCurrentPage(I)V

    return-void
.end method

.method private animateArea(II)V
    .locals 2

    .line 557
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    .line 558
    iput p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 559
    iput p2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    .line 560
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 562
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    .line 563
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x67

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 565
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private animateCurrentPage(I)V
    .locals 2

    .line 543
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    .line 544
    iput p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    .line 545
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    const/16 p1, 0xca

    .line 546
    iput p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 548
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 549
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 552
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private animatePage(I)V
    .locals 2

    .line 570
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    .line 571
    iput p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 572
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object p1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 574
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 575
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 579
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private animationDrop()V
    .locals 3

    .line 515
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    const/16 v1, 0xc9

    .line 516
    iput v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 517
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 520
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->removeAreaAnimationMessage()V

    .line 522
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 527
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getAvailableHeight()I
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsCustomizerAvailableHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 7

    .line 465
    iget-object v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 467
    iget v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v2, 0x3e8

    const-string v3, ","

    if-ne v1, v2, :cond_1

    .line 469
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getMinimumTileNum()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    if-gt v4, v5, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->showToast()V

    return-void

    .line 473
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->accessibility_button:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->qs_edit_setting_available_area_tapped:I

    .line 474
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    const/4 v3, 0x0

    .line 475
    iput-boolean v3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    .line 476
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 477
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v4, v0, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    .line 478
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/qs/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    goto :goto_0

    .line 480
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->accessibility_button:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->qs_edit_setting_active_area_tapped:I

    .line 481
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    const/4 v3, 0x1

    .line 482
    iput-boolean v3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isActive:Z

    .line 483
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    invoke-virtual {v4, v0, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    .line 484
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 485
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/qs/QSTileHost;->updateRemovedTileList(Ljava/lang/String;Z)V

    :goto_0
    if-ne v1, v2, :cond_2

    const/16 p1, 0x1770

    goto :goto_1

    :cond_2
    const/16 p1, 0x1388

    .line 487
    :goto_1
    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return-void
.end method

.method private removeAreaAnimationMessage()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 0

    .line 673
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    .line 674
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    :cond_0
    return-void
.end method

.method private setUpIndicator()V
    .locals 4

    .line 371
    sget v0, Lcom/android/systemui/R$id;->qs_active_page_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 372
    sget v1, Lcom/android/systemui/R$id;->qs_active_page_tile_layout_indicator:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 374
    sget v2, Lcom/android/systemui/R$id;->indicator_left:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    .line 375
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 376
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_LEFT_INDICATOR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 377
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 378
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v3, 0x800003

    .line 379
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 380
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLeftIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 383
    sget v2, Lcom/android/systemui/R$id;->indicator_right:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    .line 384
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->ACTIVE_RIGHT_INDICATOR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 387
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v1, 0x800005

    .line 388
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 389
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mRightIndicator:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method private setupMultiSIMBar()V
    .locals 5

    .line 394
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BARCONTROLLER_MULTISIM:Z

    if-eqz v0, :cond_1

    .line 395
    sget v0, Lcom/android/systemui/R$id;->qs_active_page_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 396
    sget v1, Lcom/android/systemui/R$id;->qs_multi_sim_preffered_slot:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 398
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->qs_panel_multi_sim_preffered_slot:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 400
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 401
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    const/4 v0, -0x1

    .line 404
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMultiSimBarHeight(Landroid/content/Context;)I

    move-result p0

    .line 405
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 406
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private setupPager()V
    .locals 8

    .line 239
    sget v0, Lcom/android/systemui/R$id;->qs_available_page_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayoutContainer:Landroid/widget/LinearLayout;

    .line 240
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_TOP_MARGIN:Z

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getAvailableHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 245
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->qs_edit_panel_available_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 248
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->qs_edit_panel_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_background_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayoutContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->qs_edit_panel_available_background:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    sget v0, Lcom/android/systemui/R$id;->qs_available_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 254
    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCutOutHeight:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 255
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayoutContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->qs_edit_available_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->qs_edit_panel_summary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsFooterViewHeight(Landroid/content/Context;)I

    move-result v0

    .line 260
    sget v1, Lcom/android/systemui/R$id;->qs_available_paged:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    .line 261
    sget v1, Lcom/android/systemui/R$id;->qs_available_paged_indicator_container:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 262
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 263
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    sget v1, Lcom/android/systemui/R$id;->qs_available_paged_indicator:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecPageIndicator;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailablePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 265
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V

    .line 266
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    .line 269
    sget v1, Lcom/android/systemui/R$id;->qs_active_paged:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    .line 270
    sget v1, Lcom/android/systemui/R$id;->qs_active_paged_indicator_container:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 271
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 272
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    sget v0, Lcom/android/systemui/R$id;->qs_active_paged_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecPageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActivePageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 274
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setDragListener(Landroid/view/View$OnDragListener;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    .line 277
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->qs_edit_panel_active_tile_icon_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 276
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setSecIndicatorColor(I)V

    .line 279
    sget v0, Lcom/android/systemui/R$id;->qs_edit_summary_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 280
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaDeviceBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 281
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getLastMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPagedHeight:I

    .line 288
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->qs_active_page_tile_layout_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPagedHeight:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 290
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    sget v0, Lcom/android/systemui/R$id;->qs_customize_panel_header_parent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQSBottomMargin(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 295
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getBrightnessBarTopBottomMargin(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 296
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    sget v1, Lcom/android/systemui/R$id;->done_button:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    .line 302
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->qs_detail_action_button:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->qs_btn_borderless_rect:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->quick_settings_done:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 308
    sget v1, Lcom/android/systemui/R$id;->reset_button:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    .line 309
    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 312
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->quick_settings_reset:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 314
    sget v0, Lcom/android/systemui/R$id;->qs_customizer_button_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->qs_detail_buttons_divider:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupMultiSIMBar()V

    return-void
.end method

.method private showToast()V
    .locals 5

    .line 491
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_qs_unable_remove_minimum:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateResources()Z
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 321
    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_tile_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    .line 322
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsTileMinNum(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mMinNum:I

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getRowCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColumns:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMatrix(II)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellWidth:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCellWidth(I)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    .line 336
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColumns:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPageMatrix(II)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellWidth:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCellWidth(I)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    .line 342
    sget v0, Lcom/android/systemui/R$id;->qs_edit_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 344
    sget v1, Lcom/android/systemui/R$string;->qs_edit_summary:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->qs_edit_panel_summary_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_done:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_reset:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mDoneButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$dimen;->qs_edit_button_text_size:I

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 350
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mResetButton:Landroid/widget/TextView;

    invoke-static {p0, v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public animationStart()V
    .locals 3

    .line 501
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;-><init>()V

    const/16 v1, 0xc8

    .line 502
    iput v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 503
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 505
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 510
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public close()V
    .locals 2

    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    const-string v0, "SecQSCustomizer"

    const-string v1, "close customizer"

    .line 450
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 451
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    .line 453
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setCustomizing(Z)V

    .line 454
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->transitionCustomizer(Z)V

    .line 455
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    const-string p0, "QPP101"

    .line 458
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getActiveColumns()I
    .locals 0

    .line 687
    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColumns:I

    return p0
.end method

.method public getActiveRows()I
    .locals 0

    .line 691
    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    return p0
.end method

.method public getDragShadowBuilder(Lcom/android/systemui/qs/customize/SecCustomizeTileView;I)Landroid/view/View$DragShadowBuilder;
    .locals 0

    .line 150
    new-instance p2, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/view/View;)V

    return-object p2
.end method

.method public isCustomizing()Z
    .locals 1

    .line 678
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCustomizing:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShown()Z
    .locals 0

    .line 669
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 599
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 606
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCutOutHeight:I

    if-eq v0, v1, :cond_2

    .line 607
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCutOutHeight:I

    .line 608
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    goto :goto_0

    .line 611
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCutOutHeight:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 612
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCutOutHeight:I

    .line 613
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    .line 616
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 222
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 584
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 585
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 586
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUPPORT_CUSTOMIZER_IN_LANDSCAPE:Z

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->close()V

    goto :goto_0

    .line 589
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupPager()V

    .line 590
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    .line 592
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCurrentOrientation:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 228
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 651
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 654
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_SUPPORT_CUSTOMIZER_IN_LANDSCAPE:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getRowCount()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    .line 659
    :cond_0
    sget p2, Lcom/android/systemui/R$id;->qs_available_paged:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    .line 660
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getAvailableHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    .line 661
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_edit_available_text_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    .line 662
    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsFooterViewHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 663
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCutOutHeight:I

    :goto_0
    sub-int/2addr v0, v1

    .line 664
    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellHeight:I

    mul-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_2

    mul-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileLayoutTopMargin(Landroid/content/Context;)I

    move-result p0

    add-int v0, v1, p0

    :cond_2
    const/high16 p0, 0x40000000    # 2.0f

    .line 665
    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/ViewGroup;->measure(II)V

    return-void
.end method

.method public setAnimatorManager(Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)V
    .locals 1

    .line 695
    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->getTransitionAnimator()Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 696
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->setCustomizerCallback(Lcom/android/systemui/qs/animator/QsTransitionAnimator$CustomizerCallback;)V

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setLongClickedViewInfo(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 538
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mWhereAmI:I

    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 1

    .line 415
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_0

    .line 417
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$id;->qs_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 418
    invoke-virtual {p1}, Lcom/android/systemui/qs/PagedTileLayout;->getLastMaxHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPagedHeight:I

    .line 419
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveTileLayout:Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPagedTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setPanelTileLayout(Lcom/android/systemui/qs/PagedTileLayout;)V

    :cond_0
    return-void
.end method

.method public setTileLayoutResources(IIII)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveRows:I

    .line 357
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mActiveColumns:I

    .line 359
    iput p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mPagedHeight:I

    .line 362
    iput p4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mCellWidth:I

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupPager()V

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    return-void
.end method

.method public show(II)V
    .locals 0

    .line 431
    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mIsClosing:Z

    if-nez p1, :cond_0

    const-string p1, "SecQSCustomizer"

    const-string/jumbo p2, "show customizer"

    .line 432
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 434
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isShown:Z

    .line 435
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setupPager()V

    .line 436
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->updateResources()Z

    .line 437
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setUpIndicator()V

    .line 439
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->transitionCustomizer(Z)V

    .line 440
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    const-string p0, "QPP102"

    .line 443
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
