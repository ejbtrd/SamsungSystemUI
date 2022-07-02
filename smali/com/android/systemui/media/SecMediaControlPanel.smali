.class public Lcom/android/systemui/media/SecMediaControlPanel;
.super Ljava/lang/Object;
.source "SecMediaControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/SecMediaControlPanel$Callback;,
        Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;
    }
.end annotation


# static fields
.field public static final ACTION_IDS:[I


# instance fields
.field private loc1:[I

.field private loc2:[I

.field private mActionButtonNumCollapsed:I

.field private mActionButtonNumExpand:I

.field private mActionXListAnimator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/TouchAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mActionYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlbumArtRadius:I

.field private mAlbumArtSize:I

.field private mBackgroundColor:I

.field protected final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mBondingActionButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mController:Landroid/media/session/MediaController;

.field private mDeviceIsNull:Z

.field private mDeviceName:Ljava/lang/String;

.field private mDualPlayModeEnabled:Z

.field private mDualPlayModeReceiver:Landroid/content/BroadcastReceiver;

.field private mExpandCallback:Lcom/android/systemui/media/SecMediaControlPanel$Callback;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandContentsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mExpandIconRotationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mExpanded:Z

.field private mFraction:F

.field private mFullyExpanded:Z

.field private mGutsBackgroundColor:I

.field private mHeight:I

.field private mIsEmptyPlayer:Z

.field private mIsSupportMediaOutputRemoteViews:Z

.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mLogger:Lcom/android/systemui/media/MediaLogger;

.field private mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

.field mOrientation:I

.field private mOutputSwitcherAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPlayerKey:Ljava/lang/String;

.field private mPlayerRect:Landroid/graphics/Rect;

.field private mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;

.field private mRemainWidthCollapsed:I

.field private mRemainWidthExpand:I

.field private mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

.field private final mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

.field private mSidePadding:I

.field private mSongTitleArtistRect:Landroid/graphics/Rect;

.field private mToken:Landroid/media/session/MediaSession$Token;

.field private mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

.field private final mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$2ZkI5vknjsJV4Vx8Ur_DkBPSlI0(Lcom/android/systemui/media/SecMediaControlPanel;ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/media/SecMediaControlPanel;->lambda$bind$2(ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AXR41qmxjUVf_s6wx9e_m43s6OE(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->lambda$startMediaActivity$8(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PmDpIk4f4Esmb7VrWXlZwEffmDY(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->lambda$startMediaActivity$7(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SLxwr1whsd3gCwqE1rqnbYmOUGs(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->lambda$bind$3(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d0ER-yEJ4ZE0DKWt48qA_KBtYWY(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/MediaData;Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/SecMediaControlPanel;->lambda$bind$0(Lcom/android/systemui/media/MediaData;Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kJqto3vcNXYqE3qMOkkMFyikLho(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/SecMediaControlPanel;->lambda$initLongPressMenu$5(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kVE9jwWZ1B0L8I03HlIYN3wTDPY(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/SecMediaControlPanel;->lambda$initLongPressMenu$4(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n7EImd5lFz1VbHOn2EAabcJ_uYo(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/SecMediaControlPanel;->lambda$initLongPressMenu$6(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pEBW48UgechVhFc-PrE-XV5AAn8(Lcom/android/systemui/media/SecMediaControlPanel;ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/media/SecMediaControlPanel;->lambda$bind$1(ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 95
    sget v1, Lcom/android/systemui/R$id;->sec_action0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->sec_action1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->sec_action2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->sec_action3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->sec_action4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SecSeekBarViewModel;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/media/MediaLogger;)V
    .locals 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBondingActionButtons:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    .line 125
    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    .line 126
    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    .line 127
    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerRect:Landroid/graphics/Rect;

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSongTitleArtistRect:Landroid/graphics/Rect;

    .line 133
    iput-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceIsNull:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsSupportMediaOutputRemoteViews:Z

    .line 144
    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SecMediaControlPanel$1;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 171
    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mHeight:I

    .line 172
    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    const/4 v1, 0x0

    .line 173
    iput v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 174
    iput-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->loc1:[I

    new-array v1, v1, [I

    .line 175
    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->loc2:[I

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionXListAnimator:Ljava/util/ArrayList;

    .line 612
    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SecMediaControlPanel$5;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    iput-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 857
    iput-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    .line 1308
    new-instance v0, Lcom/android/systemui/media/SecMediaControlPanel$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/SecMediaControlPanel$9;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 197
    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 198
    iput-object p4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 200
    iput-object p5, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    .line 201
    iput-object p6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaLogger;

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->loadDimens()V

    .line 204
    new-instance p1, Lcom/android/systemui/media/SecMediaControlPanel$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/SecMediaControlPanel$2;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/SecMediaControlPanel;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->isDisabledPlayer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecMediaControlPanel$Callback;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandCallback:Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateActionButtonLayout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->calculateSongTitleWidth()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/media/SecMediaControlPanel;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->isRTL()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/media/SecMediaControlPanel;)F
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/media/SecMediaControlPanel;F)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setSongTitleClipBounds(F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/media/SecMediaControlPanel;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/media/SecMediaControlPanel;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/media/SecMediaControlPanel;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setSongTitleWidth(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/media/SecMediaControlPanel;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateOutputSwitcherVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/media/SecMediaControlPanel;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateActionButtonVisibility()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/media/SecMediaControlPanel;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    return p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/media/SecMediaControlPanel;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateDeviceName()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/media/SecMediaControlPanel;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/media/SecMediaControlPanel;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtRadius:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/media/SecMediaControlPanel;)Landroid/media/session/MediaSession$Token;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/media/SecMediaControlPanel;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->startMediaActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecPlayerViewHolder;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/media/SecMediaControlPanel;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mGutsBackgroundColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/media/SecMediaControlPanel;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    return-void
.end method

.method private calculateSongTitleWidth()V
    .locals 8

    .line 1085
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1086
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_size_collapsed_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1087
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_size_expand_tablet:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1088
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_collapsed_margin_size_tablet:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1089
    iget v5, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_expand_margin_size_tablet:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1090
    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v6}, Lcom/android/systemui/media/SecPlayerViewHolder;->getTitleArtistActionButtonsView()Landroid/widget/FrameLayout;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1091
    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v6}, Lcom/android/systemui/media/SecPlayerViewHolder;->getTitleArtistActionButtonsView()Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    move v1, v5

    goto :goto_0

    .line 1094
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_size_collapsed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1095
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_size_expand:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1096
    iget-object v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_collapsed_margin_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 1102
    iget v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    mul-int/2addr v2, v6

    sub-int/2addr v6, v5

    mul-int/2addr v4, v6

    add-int/2addr v2, v4

    .line 1103
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    mul-int/2addr v3, v4

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    goto :goto_1

    .line 1105
    :cond_2
    iget v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    mul-int/2addr v2, v6

    sub-int/2addr v6, v5

    mul-int/2addr v6, v4

    add-int/2addr v2, v6

    .line 1106
    iget v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    mul-int/2addr v3, v6

    sub-int/2addr v6, v5

    mul-int/2addr v4, v6

    :goto_1
    add-int/2addr v3, v4

    .line 1109
    iget-object v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/systemui/R$dimen;->sec_media_view_padding_start:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 1110
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->sec_media_view_output_switcher_padding_end:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v4, v6

    if-eqz v0, :cond_3

    move v6, v1

    goto :goto_2

    .line 1112
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->sec_media_view_album_art_padding_end:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_2
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    .line 1113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mActionButtonNumCollapsed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mActionButtonNumExpand = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MediaControlPanel"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v5, :cond_4

    .line 1115
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1116
    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1118
    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    goto :goto_4

    .line 1120
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1121
    invoke-virtual {v6}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    .line 1122
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 1123
    invoke-virtual {v5}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v3

    if-eqz v0, :cond_5

    goto :goto_3

    .line 1125
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_collapsed_margin_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_3
    add-int/2addr v5, v1

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    :goto_4
    return-void
.end method

.method private getPlayerExpandedFraction()F
    .locals 2

    .line 974
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaPlayerExpandHeight(Landroid/content/Context;)I

    move-result v0

    .line 975
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getMediaPlayerCollapsedHeight(Landroid/content/Context;)I

    move-result v1

    .line 976
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mHeight:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method private getRelativePosition([ILandroid/view/View;)V
    .locals 3

    .line 980
    instance-of v0, p2, Lcom/android/systemui/media/QSMediaCornerRoundedView;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 981
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 982
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 983
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/SecMediaControlPanel;->getRelativePosition([ILandroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initLongPressMenu(Lcom/android/systemui/media/MediaData;)V
    .locals 9

    .line 764
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getOptions()Landroid/view/View;

    move-result-object v1

    .line 766
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 768
    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$8;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/media/SecMediaControlPanel$8;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getRemoveText()Landroid/widget/TextView;

    move-result-object v2

    .line 781
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_media_panel_options_remove_text_size:I

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 793
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCancelText()Landroid/widget/TextView;

    move-result-object v2

    .line 794
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_media_panel_options_cancel_text_size:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 805
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSettingsText()Landroid/widget/TextView;

    move-result-object v2

    .line 806
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getUid()I

    move-result v3

    const/16 v6, 0x8

    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 807
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_media_panel_options_settings_text_size:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    goto :goto_0

    .line 821
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 837
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getOptionsAppIcon()Landroid/widget/ImageView;

    move-result-object v2

    .line 838
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 839
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getUserId()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 841
    :cond_1
    sget v3, Lcom/android/systemui/R$drawable;->ic_music_note:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 845
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getOptionsAppTitle()Landroid/widget/TextView;

    move-result-object p0

    .line 846
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getApp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    sget p1, Lcom/android/systemui/R$dimen;->sec_qs_media_panel_options_app_name_text_size:I

    invoke-static {p0, p1, v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 851
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 852
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 0

    .line 1304
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda9;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1305
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private isDisabledPlayer()Z
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFullyExpanded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRTL()Z
    .locals 1

    .line 1008
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$bind$0(Lcom/android/systemui/media/MediaData;Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 2

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->isDisabledPlayer()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p3

    .line 359
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPNE0002"

    const-string v1, "app"

    .line 358
    invoke-static {p3, v0, v1, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private synthetic lambda$bind$1(ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 6

    .line 522
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    .line 523
    iget p6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    const/4 v1, 0x3

    if-ne p6, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v1, "QPNE0003"

    const-string/jumbo v2, "type"

    const-string v4, "app"

    .line 522
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaLogger;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/systemui/media/MediaLogger;->logActionClick(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 526
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$bind$2(ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 6

    .line 559
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    .line 560
    iget p6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    const/4 v1, 0x3

    if-ne p6, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v1, "QPNE0003"

    const-string/jumbo v2, "type"

    const-string v4, "app"

    .line 559
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaLogger;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/systemui/media/MediaLogger;->logActionClick(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 563
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$bind$3(Landroid/media/session/MediaController;)V
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private synthetic lambda$initLongPressMenu$4(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 2

    .line 783
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p2

    .line 784
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPNE0004"

    const-string v1, "app"

    .line 783
    invoke-static {p2, v0, v1, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mLogger:Lcom/android/systemui/media/MediaLogger;

    iget-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaLogger;->logRemoveClick(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->removePlayer()V

    .line 788
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandCallback:Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel$Callback;->updateMediaPlayerGuts(Z)V

    return-void
.end method

.method private synthetic lambda$initLongPressMenu$5(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/16 p3, 0x8

    .line 795
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 796
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget p2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    invoke-direct {p0, p2}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    .line 798
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandCallback:Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    if-eqz p0, :cond_0

    .line 799
    invoke-interface {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel$Callback;->updateMediaPlayerGuts(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initLongPressMenu$6(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 3

    .line 809
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p2

    .line 810
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPNE0015"

    const-string v2, "app"

    .line 809
    invoke-static {p2, v1, v2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getUid()I

    move-result p1

    const-string v0, "app_uid"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p2, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private synthetic lambda$startMediaActivity$7(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x10000000

    .line 1283
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1284
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$startMediaActivity$8(Landroid/content/Intent;)V
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/content/Intent;)V

    const-wide/16 p0, 0x170

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private loadDimens()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_media_player_album_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtRadius:I

    .line 234
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_media_album_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    .line 235
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->sec_qs_media_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSidePadding:I

    return-void
.end method

.method private scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 911
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 914
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 916
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 918
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    if-gt v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    if-le v0, v2, :cond_3

    .line 919
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 920
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v3, p0

    int-to-float p0, v3

    div-float/2addr p0, v2

    neg-float v0, v0

    float-to-int v0, v0

    neg-float p0, p0

    float-to-int p0, p0

    .line 921
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 923
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method private setAlbumArtBackground(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1042
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    .line 1043
    aget v1, v0, p1

    const/4 v2, 0x0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_0

    aget v1, v0, p1

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1044
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->sec_qs_media_player_album_stroke_dark:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x424c0000    # 51.0f

    .line 1045
    aget v2, v0, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    aget p1, v0, p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 1046
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->sec_qs_media_player_album_stroke_light:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setBackgroundColor(I)V
    .locals 1

    .line 626
    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    if-eqz v0, :cond_0

    return-void

    .line 628
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private setFraction(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 988
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateExpandAnimator()V

    .line 989
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateActionButtonVisibility()V

    .line 990
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateActionButtonEnabled(F)V

    .line 992
    :cond_1
    iput p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    .line 993
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateSeekBarVisibility()V

    .line 994
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setSongTitleClipBounds(F)V

    .line 995
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOutputSwitcherAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    .line 996
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandIconRotationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 998
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionXListAnimator:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 999
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/TouchAnimator;

    .line 1000
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_0

    .line 1003
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 1004
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandContentsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_6
    return-void
.end method

.method private setSongTitleClipBounds(F)V
    .locals 2

    .line 1140
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    if-lez p1, :cond_2

    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1142
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    if-eqz v1, :cond_1

    move p1, v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setSongTitleWidth(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setSongTitleWidth(I)V
    .locals 1

    .line 1130
    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getTitleArtistView()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getTitleArtistView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1134
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1135
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getTitleArtistView()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startMediaActivity(Ljava/lang/String;)V
    .locals 5

    .line 1272
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.mdx.quickboard"

    .line 1273
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "package_name"

    .line 1274
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    const-string v3, "key_media_session_token"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.mdx.quickboard.action.OPEN_MEDIA_PANEL_V2"

    .line 1277
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    invoke-direct {p0, v2}, Lcom/android/systemui/media/SecMediaControlPanel;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 1279
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1280
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1281
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ShadeController;

    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/content/Intent;)V

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 1287
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    goto :goto_0

    .line 1289
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :goto_0
    return-void

    :cond_1
    const-string p1, "com.samsung.android.mdx.quickboard.action.OPEN_MEDIA_PANEL"

    .line 1294
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    invoke-direct {p0, v2}, Lcom/android/systemui/media/SecMediaControlPanel;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1296
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void

    :cond_2
    const-string p0, "MediaControlPanel"

    const-string p1, "Can\'t start activity : MEDIA"

    .line 1300
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateActionButtonEnabled(F)V
    .locals 5

    .line 1184
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->isDisabledPlayer()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move p1, v2

    .line 1185
    :goto_0
    sget-object v0, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    array-length v3, v0

    if-ge p1, v3, :cond_0

    .line 1186
    aget v0, v0, p1

    .line 1187
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v3

    .line 1188
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1189
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v0

    .line 1190
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1195
    :goto_1
    sget-object v3, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 1196
    aget v3, v3, v0

    .line 1197
    iget-object v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v4

    .line 1198
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1199
    iget-object v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 1200
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateActionButtonLayout()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 1205
    :goto_0
    sget-object v2, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v1, v3, :cond_3

    .line 1206
    aget v2, v2, v1

    .line 1207
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v3

    .line 1208
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1209
    sget-boolean v7, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v7, :cond_0

    .line 1210
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_size_collapsed_tablet:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1211
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v1, :cond_1

    .line 1213
    iget v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_collapsed_margin_size_tablet:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 1216
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_size_collapsed:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1217
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v1, :cond_1

    .line 1219
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_collapsed_margin_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1222
    :cond_1
    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1224
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_2

    .line 1225
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v2

    .line 1226
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1230
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getExpandActionButtonsContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1231
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_4

    .line 1232
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 1235
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1236
    iget v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    if-eq v3, v4, :cond_8

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    move v2, v0

    goto :goto_2

    .line 1247
    :cond_5
    sget v3, Lcom/android/systemui/R$dimen;->qs_media_action_button_side_padding_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    .line 1244
    :cond_6
    sget v3, Lcom/android/systemui/R$dimen;->qs_media_action_button_side_padding_4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    .line 1241
    :cond_7
    sget v3, Lcom/android/systemui/R$dimen;->qs_media_action_button_side_padding_3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    .line 1238
    :cond_8
    sget v3, Lcom/android/systemui/R$dimen;->qs_media_action_button_side_padding_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2
    move v3, v0

    .line 1251
    :goto_3
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    if-ge v3, v4, :cond_b

    sget-object v4, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    array-length v6, v4

    if-ge v3, v6, :cond_b

    .line 1252
    aget v4, v4, v3

    .line 1253
    iget-object v6, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v4

    .line 1254
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1255
    sget-boolean v7, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v7, :cond_9

    .line 1256
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$dimen;->sec_qs_media_player_action_button_size_collapsed_tablet:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1257
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_9
    if-eqz v3, :cond_a

    .line 1260
    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1262
    :cond_a
    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1264
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 1265
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_media_player_expanded_action_icon_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 1267
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_media_player_expanded_action_icon_padding_bottom:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1264
    invoke-virtual {v1, v0, v2, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    return-void
.end method

.method private updateActionButtonVisibility()V
    .locals 7

    .line 724
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBondingActionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 725
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 726
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    .line 728
    iget v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateDeviceName()V
    .locals 4

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeamlessText()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1322
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceIsNull:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->sec_media_output_device:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/String;

    .line 1323
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDeviceName() : mDeviceIsNull = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceIsNull:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDualPlayModeEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaControlPanel"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-boolean v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    if-eqz v2, :cond_2

    .line 1325
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->sec_qs_media_player_dual_play_mode_information:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1324
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 1327
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateExpandAnimator()V
    .locals 17

    move-object/from16 v0, p0

    .line 632
    iget-object v1, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    if-nez v1, :cond_0

    return-void

    .line 633
    :cond_0
    new-instance v1, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3f1c28f6    # 0.61f

    const v4, 0x3ed1eb85    # 0.41f

    const v5, 0x3f59999a    # 0.85f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    .line 634
    iget-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionXListAnimator:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 636
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 637
    invoke-virtual {v3}, Lcom/android/systemui/media/SecPlayerViewHolder;->getMediaOutputText()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    invoke-virtual {v2, v3, v6, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 638
    invoke-virtual {v3}, Lcom/android/systemui/media/SecPlayerViewHolder;->getMediaOutputText()Landroid/widget/TextView;

    move-result-object v3

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    const-string/jumbo v7, "translationX"

    invoke-virtual {v2, v3, v7, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$6;

    invoke-direct {v3, v0}, Lcom/android/systemui/media/SecMediaControlPanel$6;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 639
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 652
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mOutputSwitcherAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 654
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 655
    invoke-virtual {v3}, Lcom/android/systemui/media/SecPlayerViewHolder;->getExpandIcon()Landroid/widget/ImageView;

    move-result-object v3

    new-array v5, v4, [F

    fill-array-data v5, :array_2

    const-string/jumbo v8, "rotation"

    invoke-virtual {v2, v3, v8, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 656
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandIconRotationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 658
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 659
    iget-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mBondingActionButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string/jumbo v8, "translationY"

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 660
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/view/View;

    .line 661
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    .line 662
    iget-object v10, v0, Lcom/android/systemui/media/SecMediaControlPanel;->loc1:[I

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/2addr v11, v4

    const/4 v12, 0x0

    add-int/2addr v11, v12

    aput v11, v10, v12

    .line 663
    iget-object v10, v0, Lcom/android/systemui/media/SecMediaControlPanel;->loc1:[I

    const/4 v11, 0x1

    aput v12, v10, v11

    .line 664
    iget-object v10, v0, Lcom/android/systemui/media/SecMediaControlPanel;->loc2:[I

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/2addr v13, v4

    add-int/2addr v13, v12

    aput v13, v10, v12

    .line 665
    iget-object v10, v0, Lcom/android/systemui/media/SecMediaControlPanel;->loc2:[I

    aput v12, v10, v11

    .line 666
    iget-object v10, v0, Lcom/android/systemui/media/SecMediaControlPanel;->loc1:[I

    invoke-direct {v0, v10, v9}, Lcom/android/systemui/media/SecMediaControlPanel;->getRelativePosition([ILandroid/view/View;)V

    .line 667
    iget-object v10, v0, Lcom/android/systemui/media/SecMediaControlPanel;->loc2:[I

    invoke-direct {v0, v10, v5}, Lcom/android/systemui/media/SecMediaControlPanel;->getRelativePosition([ILandroid/view/View;)V

    .line 668
    iget-object v5, v0, Lcom/android/systemui/media/SecMediaControlPanel;->loc2:[I

    aget v10, v5, v12

    iget-object v13, v0, Lcom/android/systemui/media/SecMediaControlPanel;->loc1:[I

    aget v14, v13, v12

    sub-int/2addr v10, v14

    .line 669
    aget v5, v5, v11

    aget v13, v13, v11

    sub-int/2addr v5, v13

    .line 671
    iget-object v13, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionXListAnimator:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v15, v4, [F

    const/16 v16, 0x0

    aput v16, v15, v12

    int-to-float v10, v10

    aput v10, v15, v11

    .line 672
    invoke-virtual {v14, v9, v7, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    const v14, 0x3e4ccccd    # 0.2f

    .line 673
    invoke-virtual {v10, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    .line 674
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    .line 675
    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v10

    .line 671
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v10, v4, [F

    aput v16, v10, v12

    int-to-float v5, v5

    aput v5, v10, v11

    .line 677
    invoke-virtual {v2, v9, v8, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto/16 :goto_0

    .line 680
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 681
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mActionYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 683
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 684
    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayer()Landroid/widget/LinearLayout;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$id;->action_buttons_expanded:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-array v5, v4, [F

    fill-array-data v5, :array_3

    invoke-virtual {v1, v2, v8, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 685
    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-array v3, v4, [F

    fill-array-data v3, :array_4

    invoke-virtual {v1, v2, v6, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 686
    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getProgressInfo()Landroid/widget/LinearLayout;

    move-result-object v2

    new-array v3, v4, [F

    fill-array-data v3, :array_5

    invoke-virtual {v1, v2, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 687
    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getProgressInfo()Landroid/widget/LinearLayout;

    move-result-object v2

    new-array v3, v4, [F

    fill-array-data v3, :array_6

    invoke-virtual {v1, v2, v6, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    .line 688
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$7;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/SecMediaControlPanel$7;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    .line 689
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 702
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandContentsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateSeekBarVisibility()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x43b40000    # 360.0f
        0x43340000    # 180.0f
    .end array-data

    :array_3
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateOutputSwitcherVisibility()V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getMediaOutputText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    if-nez v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getMediaOutputText()Landroid/widget/TextView;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateSeekBarVisibility()V
    .locals 4

    .line 708
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->isDisabledPlayer()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 709
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateWidth()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mWidth:I

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/media/SecPlayerViewHolder;)V
    .locals 2

    .line 291
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 292
    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 299
    new-instance v0, Lcom/android/systemui/media/SecSeekBarObserver;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/SecSeekBarObserver;-><init>(Lcom/android/systemui/media/SecPlayerViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

    .line 300
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->attachTouchHandlers(Landroidx/appcompat/widget/SeslSeekBar;)V

    .line 305
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    .line 306
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 309
    :cond_0
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz p1, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateWidth()V

    :cond_1
    return-void
.end method

.method public bind(Lcom/android/systemui/media/MediaData;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 328
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_1

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateWidth()V

    .line 334
    :cond_1
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBondingActionButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 337
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 338
    :cond_2
    iput-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 341
    :cond_3
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 342
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, v2, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    goto :goto_0

    .line 344
    :cond_4
    iput-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 347
    :goto_0
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->sec_qs_media_player_guts_background_color:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mGutsBackgroundColor:I

    .line 348
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->sec_qs_media_player_background_color:I

    .line 349
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    .line 350
    invoke-direct {v7, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 355
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;

    invoke-direct {v3, v7, v8, v0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/MediaData;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    :cond_5
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v0

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    move v2, v9

    goto :goto_1

    :cond_6
    move v2, v10

    :goto_1
    const/16 v11, 0x8

    if-eqz v2, :cond_7

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/systemui/media/SecMediaControlPanel;->scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 369
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 372
    :cond_7
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    :goto_2
    iget v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    invoke-direct {v7, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setAlbumArtBackground(I)V

    .line 377
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getHeader()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 378
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v0

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 385
    :cond_8
    sget v2, Lcom/android/systemui/R$drawable;->ic_music_note:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    :goto_3
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getExpandIcon()Landroid/widget/ImageView;

    move-result-object v0

    .line 390
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getSong()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAppName()Landroid/widget/TextView;

    move-result-object v0

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getArtistText()Landroid/widget/TextView;

    move-result-object v0

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtist()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeamlessText()Landroid/widget/TextView;

    move-result-object v0

    .line 434
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getMediaOutputText()Landroid/widget/TextView;

    move-result-object v2

    .line 435
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$3;

    invoke-direct {v3, v7, v8}, Lcom/android/systemui/media/SecMediaControlPanel$3;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 459
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaDeviceData;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v9

    goto :goto_4

    :cond_9
    move v3, v10

    :goto_4
    const-string v4, "MediaControlPanel"

    if-eqz v3, :cond_a

    .line 467
    iput-boolean v9, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceIsNull:Z

    const-string v2, "Device information doesn\'t display by showFallback."

    .line 468
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_d

    .line 472
    iput-boolean v10, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceIsNull:Z

    .line 473
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_media_output_switcher:I

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 476
    instance-of v1, v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    if-eqz v1, :cond_b

    .line 477
    check-cast v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    .line 478
    iget v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    .line 483
    :cond_b
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaDeviceData;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceName:Ljava/lang/String;

    .line 484
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaDeviceData;->getDeviceType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;

    if-eqz v0, :cond_c

    .line 485
    invoke-interface {v0}, Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;->IsBluetoothDualPlayMode()Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v9

    goto :goto_5

    :cond_c
    move v0, v10

    :goto_5
    iput-boolean v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeEnabled:Z

    goto :goto_6

    :cond_d
    const-string v1, "device is null. Not binding output chip."

    .line 488
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iput-boolean v9, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mDeviceIsNull:Z

    const v1, 0x1040477

    .line 491
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 493
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateDeviceName()V

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActions()Ljava/util/List;

    move-result-object v12

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActionsToShowInCompact()Ljava/util/List;

    move-result-object v13

    .line 498
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getExpandActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 499
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCollapseActionButtonsContainer()Landroid/widget/LinearLayout;

    .line 501
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumCollapsed:I

    .line 502
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mActionButtonNumExpand:I

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateActionButtonLayout()V

    move v0, v10

    .line 507
    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    sget-object v1, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_f

    .line 508
    aget v4, v1, v0

    add-int/lit8 v14, v0, 0x1

    .line 510
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1, v4, v9}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v15

    .line 511
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/media/MediaAction;

    .line 512
    invoke-virtual {v5}, Lcom/android/systemui/media/MediaAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    invoke-virtual {v5}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 514
    invoke-virtual {v5}, Lcom/android/systemui/media/MediaAction;->getAction()Ljava/lang/Runnable;

    move-result-object v6

    if-nez v6, :cond_e

    .line 517
    invoke-virtual {v15, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_8

    .line 519
    :cond_e
    invoke-virtual {v15, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 520
    new-instance v3, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v14

    move-object v11, v3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;)V

    invoke-virtual {v15, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    :goto_8
    invoke-virtual {v15, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    move v0, v14

    const/16 v11, 0x8

    goto :goto_7

    .line 536
    :cond_f
    :goto_9
    sget-object v1, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 537
    aget v1, v1, v0

    .line 538
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2, v1, v9}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x8

    .line 539
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 542
    :cond_10
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_11
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 543
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    sget-object v1, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 544
    aget v4, v1, v0

    add-int/lit8 v2, v0, 0x1

    .line 546
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1, v4, v10}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v14

    .line 547
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/media/MediaAction;

    .line 548
    invoke-virtual {v5}, Lcom/android/systemui/media/MediaAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    invoke-virtual {v5}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 550
    invoke-virtual {v5}, Lcom/android/systemui/media/MediaAction;->getAction()Ljava/lang/Runnable;

    move-result-object v6

    .line 551
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBondingActionButtons:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v3, v4, v10}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v15, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v15, v4, v9}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v15

    invoke-direct {v1, v3, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_12

    .line 554
    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_b

    .line 556
    :cond_12
    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 557
    new-instance v15, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;ILcom/android/systemui/media/MediaData;ILcom/android/systemui/media/MediaAction;Ljava/lang/Runnable;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :goto_b
    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_a

    :cond_13
    move v0, v10

    .line 571
    :goto_c
    sget-object v1, Lcom/android/systemui/media/SecMediaControlPanel;->ACTION_IDS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 572
    aget v1, v1, v0

    .line 573
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 574
    iget-object v2, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2, v1, v10}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAction(IZ)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x8

    .line 575
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_d

    :cond_14
    const/16 v2, 0x8

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 586
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    .line 587
    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;

    invoke-direct {v2, v7, v0}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/media/session/MediaController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 589
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/media/SecMediaControlPanel;->initLongPressMenu(Lcom/android/systemui/media/MediaData;)V

    .line 590
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/SecMediaControlPanel$4;

    invoke-direct {v1, v7}, Lcom/android/systemui/media/SecMediaControlPanel$4;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateExpandAnimator()V

    .line 607
    iget-object v0, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/media/SecMediaControlPanel;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateResources()V

    return-void
.end method

.method public getController()Landroid/media/session/MediaController;
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public getView()Landroid/widget/LinearLayout;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public isPlaying()Z
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying(Landroid/media/session/MediaController;)Z

    move-result p0

    return p0
.end method

.method protected isPlaying(Landroid/media/session/MediaController;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 956
    :cond_0
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    .line 961
    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1018
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_0

    .line 1019
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateWidth()V

    .line 1021
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_2

    .line 1022
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateExpandAnimator()V

    .line 1024
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SecSeekBarObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->onDestroy()V

    .line 222
    :try_start_0
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mDualPlayModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public removePlayer()V
    .locals 2

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing player from QSPanel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAppName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaControlPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;

    if-eqz v0, :cond_0

    .line 883
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;->remove(Ljava/lang/String;Lcom/android/systemui/media/SecMediaControlPanel;)V

    :cond_0
    return-void
.end method

.method public setCallback(Ljava/lang/String;Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    .line 877
    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mQSMediaPlayerBarCallback:Lcom/android/systemui/media/SecMediaControlPanel$QSMediaPlayerBarCallback;

    return-void
.end method

.method public setEmptyPalyer(Z)V
    .locals 0

    .line 872
    iput-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mIsEmptyPlayer:Z

    return-void
.end method

.method public setExpandCallback(Lcom/android/systemui/media/SecMediaControlPanel$Callback;)V
    .locals 0

    .line 1012
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandCallback:Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 1173
    iget-boolean v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    if-eq v0, p1, :cond_1

    .line 1174
    iput-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 1175
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getExpandIcon()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1176
    iget-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->sec_qs_media_player_collapse_content_description:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1177
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->sec_qs_media_player_expand_content_description:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1178
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getExpandIcon()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->setListening(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getOptions()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpandCallback:Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0, v1}, Lcom/android/systemui/media/SecMediaControlPanel$Callback;->updateMediaPlayerGuts(Z)V

    :cond_0
    if-eqz p1, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateExpandAnimator()V

    .line 271
    iput-boolean v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->calculateSongTitleWidth()V

    .line 273
    iget-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthExpand:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mRemainWidthCollapsed:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setSongTitleWidth(I)V

    :cond_2
    return-void
.end method

.method public setMediaExpansion(II)V
    .locals 3

    .line 965
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getPlayerView()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 966
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 967
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 968
    iput p2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mHeight:I

    .line 970
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->getPlayerExpandedFraction()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->setFraction(F)V

    return-void
.end method

.method public setPlayerKey(Ljava/lang/String;)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 867
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setQsFullyExpanded(Z)V
    .locals 0

    .line 1331
    iput-boolean p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFullyExpanded:Z

    .line 1332
    iget p1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mFraction:F

    invoke-direct {p0, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->updateActionButtonEnabled(F)V

    .line 1333
    invoke-direct {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->updateSeekBarVisibility()V

    return-void
.end method

.method public updateResources()V
    .locals 4

    .line 734
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->sec_qs_media_player_guts_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mGutsBackgroundColor:I

    .line 736
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->sec_qs_media_player_guts_header_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getOptionsAppTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->sec_qs_media_player_guts_buttons_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 741
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getRemoveText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 742
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getRemoveText()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->sec_qs_media_player_guts_button_background:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 744
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCancelText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 745
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getCancelText()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->notification_guts_button_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 746
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSettingsText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSettingsText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 749
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->sec_qs_media_player_background_color:I

    .line 750
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mBackgroundColor:I

    .line 751
    invoke-direct {p0, v0}, Lcom/android/systemui/media/SecMediaControlPanel;->setBackgroundColor(I)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->media_primary_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 754
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->media_secondary_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 755
    iget-object v2, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->updateColor(II)V

    .line 757
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getMediaOutputText()Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->sec_media_output_button_ripple_background:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
