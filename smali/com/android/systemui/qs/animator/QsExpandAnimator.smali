.class public Lcom/android/systemui/qs/animator/QsExpandAnimator;
.super Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.source "QsExpandAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/animator/SecQSAnimator;
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private loc1:[I

.field private loc2:[I

.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

.field private mAnimatorForListener:Lcom/android/systemui/qs/TouchAnimator;

.field private mBackgroundTopYDiff:I

.field private mBarController:Lcom/android/systemui/qs/bar/BarController;

.field private mCollapsedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

.field private mCollapsedMediaDeviceBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

.field private mContext:Landroid/content/Context;

.field mCurrentPanelHeight:I

.field private final mDisappearingQuickQsTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

.field private mExpandedMediaDeviceBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

.field private mHeader:Landroid/view/View;

.field private mHeaderBrightnessAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderBrightnessYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderClockView:Landroid/view/View;

.field private mHeaderClockYDiff:I

.field private mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderDateView:Landroid/view/View;

.field private mHeaderMediaDeviceAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderMediaDeviceYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeightDiff:I

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field mIsBrightnessBarShowingOnTop:Z

.field private mLastPosition:F

.field private mMediaContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMediaContainerTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMediaDeviceAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMediaDeviceTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

.field private mMoreButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMoreContainer:Landroid/view/View;

.field private mMultiSIMAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMultiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

.field private mMultiSIMYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMumButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMumContainer:Landroid/view/View;

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNotificationOverScrolling:Z

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field mOrientation:I

.field private mPagedIndicator:Landroid/view/View;

.field private mPagedIndicatorAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPagedIndicatorYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPanelBrightnessAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPanelBrightnessYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPanelClockYDiff:I

.field private mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPanelDateView:Landroid/view/View;

.field private mPowerButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPowerContainer:Landroid/view/View;

.field private mQQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private mQsButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mQsEditButton:Landroid/view/View;

.field private mQsEditButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private mQsRootPanel:Landroid/view/View;

.field private mQuickQSPanelTileContainer:Landroid/view/View;

.field private mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mQuickQsTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickQsTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSearchButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSearchContainer:Landroid/view/View;

.field private mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSecondRowStartDelay:F

.field private mSecondTileYDiff:I

.field private mSecurityFooterView:Landroid/view/View;

.field private mSettingContainer:Landroid/view/View;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

.field private mTileAnimatorBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/TouchAnimator$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mTileAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/TouchAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mTileColumnCount:I

.field private mTileLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private mTileRowCount:I

.field private mTileTempStartDelay:F

.field private mTileYDiff:I

.field private mTopRowEndDelay:F

.field private mTopRowStartDelay:F

.field private mTopSecondRowQuickQsAlphaBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mTopSecondRowQuickQsTranslationBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$krBnMi2XX2pzaKOK44OR_E2VM3A(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;-><init>()V

    .line 84
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 85
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    .line 86
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDisappearingQuickQsTiles:Ljava/util/ArrayList;

    .line 120
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    .line 121
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    const/4 p6, 0x1

    .line 123
    iput-boolean p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnFirstPage:Z

    const/4 p6, 0x0

    .line 126
    iput p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    const/4 p6, 0x0

    .line 162
    iput p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeightDiff:I

    .line 163
    iput p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileYDiff:I

    .line 164
    iput p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondTileYDiff:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 165
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    new-array v0, v0, [I

    .line 166
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    .line 167
    iput p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileColumnCount:I

    .line 168
    iput p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileRowCount:I

    .line 169
    iput p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderClockYDiff:I

    .line 170
    iput p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelClockYDiff:I

    .line 178
    iput-boolean p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNotificationOverScrolling:Z

    .line 279
    iput-boolean p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mIsBrightnessBarShowingOnTop:Z

    .line 1019
    new-instance p6, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;-><init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 1032
    new-instance p6, Lcom/android/systemui/qs/animator/QsExpandAnimator$2;

    invoke-direct {p6, p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator$2;-><init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 192
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    .line 193
    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 194
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 195
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 196
    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    .line 197
    invoke-virtual {p5, p0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->setQsAnimator(Lcom/android/systemui/qs/animator/SecQSAnimator;)V

    .line 198
    iput-object p7, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/animator/QsExpandAnimator;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    return-object p0
.end method

.method private checkNumQuickTile()V
    .locals 3

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v0

    .line 359
    iget v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNumQuickTiles:I

    if-eq v0, v1, :cond_1

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNumQuickTile expectedNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mNumQuickTiles = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNumQuickTiles:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QsExpandAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNumQuickTiles:I

    :cond_1
    return-void
.end method

.method private clearAnimationState()V
    .locals 9

    const-string v0, "QsExpandAnimator"

    const-string v1, "clearAnimationState "

    .line 984
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isDetailVisible()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isCustomizerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 989
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsFullyExpanded:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 991
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_8

    .line 993
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 994
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string/jumbo v6, "view_visible_always"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 995
    :cond_3
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string/jumbo v7, "view_visible_expanded_state"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    if-eqz v2, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    move v8, v7

    :goto_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 996
    :cond_5
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string/jumbo v8, "view_visible_collapsed_state"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    if-eqz v2, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 997
    :cond_7
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 998
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1000
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_9

    .line 1002
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method private getEndDelay(Landroid/view/View;)F
    .locals 5

    .line 774
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v0

    int-to-float v0, v0

    .line 778
    iget-object v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v1, v1

    .line 779
    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/PagedTileLayout;->getTileVerticalMargin()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 781
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {p0, v3, p1, v4}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 p0, 0x1

    .line 782
    aget p0, v3, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float p0, p0

    sub-float/2addr v0, v2

    sub-float/2addr p0, v0

    int-to-float v0, v1

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 796
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 797
    aput v1, p1, v0

    .line 798
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 802
    instance-of v0, p2, Lcom/android/systemui/qs/QSContainerImpl;

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 805
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/TileLayout;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 806
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 807
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 809
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getStartDelay(Landroid/view/View;IZ)F
    .locals 6

    .line 751
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCollapsedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    const-string v2, "expand_anim"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 755
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    :cond_2
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 757
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    iget-object v5, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {p0, v4, v0, v5}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 758
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 759
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    aget v0, v0, v2

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    aget v3, v3, v2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 761
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/BarController;->getCollapsedBarItemsHeight()I

    move-result v3

    .line 762
    iget-object v4, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v4

    int-to-float v4, v4

    float-to-int v0, v0

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    goto :goto_2

    .line 764
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p3}, Lcom/android/systemui/qs/PagedTileLayout;->getTileVerticalMargin()I

    move-result p3

    :goto_2
    sub-int/2addr v3, p3

    int-to-float p3, v3

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 766
    iget-object v5, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {p0, v3, p1, v5}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 767
    aget p0, v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    sub-int/2addr p0, p2

    int-to-float p0, p0

    sub-float/2addr v4, p3

    sub-float/2addr p0, v4

    int-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, p0

    :goto_3
    return v1
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    .line 788
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 792
    iget p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNumQuickTiles:I

    add-int/2addr p0, v0

    sub-int/2addr p0, v2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    if-ge p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private synthetic lambda$onConfigurationChanged$0()V
    .locals 0

    .line 1118
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    return-void
.end method

.method private setHeaderBrightnessBarVisibility(I)V
    .locals 1

    .line 744
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCollapsedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object p0

    const-string v0, "expand_anim"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 746
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateAnimaResources()V
    .locals 5

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v0

    int-to-float v0, v0

    .line 345
    iget-object v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeightDiff:I

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$dimen;->qs_tile_anim_y_diff:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileYDiff:I

    if-eqz v0, :cond_2

    goto :goto_1

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_second_tile_anim_y_diff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondTileYDiff:I

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileColumnCount:I

    .line 350
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getRowCount()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileRowCount:I

    .line 351
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_clock_anim_y_diff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderClockYDiff:I

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->panel_clock_anim_y_diff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelClockYDiff:I

    .line 353
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "brightness_on_top"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mIsBrightnessBarShowingOnTop:Z

    return-void
.end method

.method private updateBarAnimator()V
    .locals 21

    move-object/from16 v0, p0

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 633
    :goto_0
    iget-object v5, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedMediaDeviceBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    const-string v6, "expand_anim"

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v7

    .line 634
    :goto_1
    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCollapsedMediaDeviceBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    goto :goto_2

    :cond_3
    move-object v8, v7

    .line 635
    :goto_2
    iget-object v9, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCollapsedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    goto :goto_3

    :cond_4
    move-object v9, v7

    .line 636
    :goto_3
    iget-object v10, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    goto :goto_4

    :cond_5
    move-object v10, v7

    .line 637
    :goto_4
    iget-object v11, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    goto :goto_5

    :cond_6
    move-object v11, v7

    .line 638
    :goto_5
    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    .line 646
    :cond_7
    iget-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    iget-object v13, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {v0, v6, v12, v13}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 647
    iget-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    iget-object v13, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {v0, v6, v12, v13}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 648
    iget-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    aget v6, v6, v3

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    aget v13, v12, v3

    sub-int/2addr v6, v13

    int-to-float v6, v6

    if-eqz v5, :cond_8

    .line 652
    iget-object v14, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {v0, v12, v5, v14}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 653
    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    iget-object v14, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    iget-object v15, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {v0, v12, v14, v15}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 654
    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    aget v12, v12, v3

    iget-object v14, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    aget v14, v14, v3

    sub-int/2addr v12, v14

    int-to-float v12, v12

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    .line 659
    iget-object v14, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    iget-object v15, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {v0, v14, v9, v15}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 660
    iget-object v14, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    iget-object v15, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {v0, v14, v10, v15}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 661
    iget-object v14, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    aget v14, v14, v3

    iget-object v15, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    aget v15, v15, v3

    sub-int/2addr v14, v15

    int-to-float v14, v14

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    :goto_7
    const-string/jumbo v15, "view_visible_expanded_state"

    const v3, 0x3f7d70a4    # 0.99f

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v13, "alpha"

    const-string/jumbo v2, "translationY"

    if-eqz v5, :cond_b

    if-eqz v1, :cond_a

    .line 665
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v4, v18

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    :goto_8
    int-to-float v4, v4

    sub-float/2addr v12, v4

    div-float/2addr v12, v6

    sub-float v4, v16, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 666
    new-instance v12, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    move/from16 v19, v6

    const/4 v3, 0x2

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    .line 667
    invoke-virtual {v12, v5, v13, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v6

    .line 668
    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 669
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaDeviceAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 670
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v6, v3, [F

    .line 672
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    neg-int v12, v12

    mul-int/2addr v12, v3

    int-to-float v3, v12

    const/4 v12, 0x0

    aput v3, v6, v12

    const/4 v3, 0x0

    const/4 v12, 0x1

    aput v3, v6, v12

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    .line 673
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaDeviceTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 674
    iget-object v3, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v15, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    move/from16 v19, v6

    :goto_9
    const-string/jumbo v3, "view_visible_collapsed_state"

    if-eqz v8, :cond_f

    .line 678
    iget-object v4, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v4}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isDetailVisible()Z

    move-result v4

    if-nez v4, :cond_d

    .line 679
    iget-boolean v4, v0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    goto :goto_a

    :cond_c
    move/from16 v4, v16

    :goto_a
    invoke-virtual {v8, v4}, Landroid/view/View;->setAlpha(F)V

    .line 681
    :cond_d
    iget v4, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondRowStartDelay:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-nez v6, :cond_e

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_b

    :cond_e
    sub-float v4, v16, v4

    :goto_b
    const v6, 0x3f7d70a4    # 0.99f

    .line 682
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 683
    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    move-object/from16 v20, v7

    const/4 v12, 0x2

    new-array v7, v12, [F

    const/16 v17, 0x0

    aput v5, v7, v17

    const/4 v5, 0x1

    aput v14, v7, v5

    .line 684
    invoke-virtual {v6, v8, v2, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 685
    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderMediaDeviceYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 686
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v6, v12, [F

    fill-array-data v6, :array_1

    .line 687
    invoke-virtual {v5, v8, v13, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 688
    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 689
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderMediaDeviceAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 690
    iget-object v4, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_f
    move-object/from16 v20, v7

    :goto_c
    if-eqz v9, :cond_10

    .line 694
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v14, v6, v7

    .line 695
    invoke-virtual {v4, v9, v2, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 696
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderBrightnessYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 697
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v6, v5, [F

    fill-array-data v6, :array_2

    .line 698
    invoke-virtual {v4, v9, v13, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    const v5, 0x3f666666    # 0.9f

    .line 699
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 700
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderBrightnessAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_10
    if-eqz v10, :cond_12

    if-eqz v1, :cond_11

    const v1, 0x3f59999a    # 0.85f

    goto :goto_d

    :cond_11
    const v1, 0x3f75c28f    # 0.96f

    .line 706
    :goto_d
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_3

    .line 707
    invoke-virtual {v4, v10, v13, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 708
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelBrightnessAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 710
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v5, [F

    neg-float v5, v14

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 711
    invoke-virtual {v1, v10, v2, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 712
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelBrightnessYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 713
    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v15, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    if-eqz v11, :cond_14

    .line 717
    iget v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondRowStartDelay:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-nez v5, :cond_13

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_e

    :cond_13
    sub-float v1, v16, v1

    const v4, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v4

    :goto_e
    const v4, 0x3f7d70a4    # 0.99f

    .line 718
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 719
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_4

    .line 720
    invoke-virtual {v4, v11, v13, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 721
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 722
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 723
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v5, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v14, v4, v5

    .line 724
    invoke-virtual {v1, v11, v2, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 725
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaContainerTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 726
    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v20, :cond_15

    .line 730
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v3, 0x2

    div-int/2addr v1, v3

    int-to-float v1, v1

    div-float v1, v1, v19

    sub-float v1, v16, v1

    const v4, 0x3f7d70a4    # 0.99f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 731
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v5, v3, [F

    fill-array-data v5, :array_5

    move-object/from16 v7, v20

    .line 732
    invoke-virtual {v4, v7, v13, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 733
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 734
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 735
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v3, v3, [F

    .line 737
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-virtual {v1, v7, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 739
    iget-object v0, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v15, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateBarItems()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getCollapsedBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCollapsedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getExpandedBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getCollapsedMediaDeviceBar()Lcom/android/systemui/qs/bar/MediaDevicesBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCollapsedMediaDeviceBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getExpandedMediaDeviceBar()Lcom/android/systemui/qs/bar/MediaDevicesBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedMediaDeviceBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getMultiSIMBar()Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getMediaPlayer()Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    return-void
.end method

.method private updateHeaderAnimator()V
    .locals 11

    .line 533
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 534
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    iget v6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileYDiff:I

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v3, v7

    const-string/jumbo v6, "translationY"

    .line 535
    invoke-virtual {v0, v1, v6, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v8, "alpha"

    .line 536
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 537
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 539
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    const-string/jumbo v9, "view_visible_collapsed_state"

    invoke-direct {v1, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderClockView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 542
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderClockView:Landroid/view/View;

    new-array v3, v2, [F

    aput v5, v3, v4

    iget v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderClockYDiff:I

    int-to-float v10, v10

    aput v10, v3, v7

    .line 543
    invoke-virtual {v0, v1, v6, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    .line 544
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateView:Landroid/view/View;

    new-array v2, v2, [F

    aput v5, v2, v4

    iget v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderClockYDiff:I

    int-to-float v3, v3

    aput v3, v2, v7

    .line 545
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopRowStartDelay:F

    sub-float/2addr v1, v2

    .line 546
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 548
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_1

    move v4, v7

    :cond_1
    if-eqz v4, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderClockView:Landroid/view/View;

    invoke-direct {v1, v9, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateView:Landroid/view/View;

    invoke-direct {v1, v9, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x3fa00000    # -3.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updatePanelAnimator()V
    .locals 13

    .line 556
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 558
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 559
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecurityFooterView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 560
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    .line 561
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 564
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const-string/jumbo v5, "view_visible_always"

    invoke-direct {v1, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelDateView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    .line 567
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelDateView:Landroid/view/View;

    new-array v3, v2, [F

    iget v5, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelClockYDiff:I

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v3, v6

    const/4 v5, 0x1

    const/4 v7, 0x0

    aput v7, v3, v5

    const-string/jumbo v8, "translationY"

    .line 568
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecurityFooterView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    .line 569
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecurityFooterView:Landroid/view/View;

    new-array v3, v2, [F

    iget v9, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelClockYDiff:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v3, v6

    aput v7, v3, v5

    .line 570
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    .line 571
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 573
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelDateView:Landroid/view/View;

    const-string/jumbo v9, "view_visible_expanded_state"

    invoke-direct {v1, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSettingContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 576
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->sec_qs_button_side_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    .line 578
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v5, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    if-eqz v3, :cond_3

    neg-int v0, v0

    neg-float v1, v1

    .line 585
    :cond_3
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    new-array v11, v2, [F

    int-to-float v0, v0

    aput v0, v11, v6

    aput v7, v11, v5

    const-string/jumbo v12, "translationX"

    .line 586
    invoke-virtual {v3, v10, v12, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSearchContainer:Landroid/view/View;

    new-array v11, v2, [F

    aput v0, v11, v6

    aput v7, v11, v5

    .line 587
    invoke-virtual {v3, v10, v12, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    new-array v11, v2, [F

    aput v0, v11, v6

    aput v7, v11, v5

    .line 588
    invoke-virtual {v3, v10, v12, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSettingContainer:Landroid/view/View;

    new-array v11, v2, [F

    add-float/2addr v1, v0

    aput v1, v11, v6

    aput v7, v11, v5

    .line 589
    invoke-virtual {v3, v10, v12, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMoreContainer:Landroid/view/View;

    new-array v10, v2, [F

    aput v0, v10, v6

    aput v7, v10, v5

    .line 590
    invoke-virtual {v1, v3, v12, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 594
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMoreContainer:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    .line 595
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    .line 596
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMoreButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 598
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_5

    .line 599
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3f0ccccd    # 0.55f

    .line 600
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 602
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSearchContainer:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_6

    .line 603
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3f333334    # 0.70000005f

    .line 604
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSearchButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 606
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_7

    .line 607
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3f59999a    # 0.85f

    .line 608
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 611
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    invoke-direct {v1, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSearchContainer:Landroid/view/View;

    invoke-direct {v1, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    invoke-direct {v1, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMoreContainer:Landroid/view/View;

    invoke-direct {v1, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, v5}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getStartDelay(Landroid/view/View;IZ)F

    move-result v0

    .line 617
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicator:Landroid/view/View;

    new-array v10, v2, [F

    fill-array-data v10, :array_8

    .line 618
    invoke-virtual {v1, v3, v4, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 619
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 620
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicatorAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 621
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicator:Landroid/view/View;

    new-array v4, v2, [F

    .line 622
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v10

    neg-int v10, v10

    div-int/2addr v10, v2

    int-to-float v2, v10

    aput v2, v4, v6

    aput v7, v4, v5

    invoke-virtual {v1, v3, v8, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 623
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicatorYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 625
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicator:Landroid/view/View;

    invoke-direct {v1, v9, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateTileAnimator()V
    .locals 27

    move-object/from16 v1, p0

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 368
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 369
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 370
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 371
    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 372
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 374
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v8

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->checkNumQuickTile()V

    .line 380
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string/jumbo v12, "view_visible_expanded_state"

    const-string/jumbo v13, "translationY"

    const-string v14, "alpha"

    const/16 v17, 0x1

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/plugins/qs/QSTile;

    .line 381
    iget v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileColumnCount:I

    iget v15, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileRowCount:I

    mul-int/2addr v0, v15

    .line 382
    iget-object v15, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v15, v10}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v15

    move-object/from16 v19, v9

    const-string v9, "QsExpandAnimator"

    if-nez v15, :cond_1

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tileView is null "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v19

    goto :goto_0

    :cond_1
    move-object/from16 v20, v9

    .line 389
    invoke-virtual {v15}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v9

    move-object/from16 v21, v8

    .line 390
    sget v8, Lcom/android/systemui/R$id;->label_group:I

    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v22, v7

    .line 393
    iget v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileColumnCount:I

    const/high16 v23, 0x40000000    # 2.0f

    move-object/from16 v24, v6

    const-string/jumbo v6, "translationX"

    move-object/from16 v25, v5

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v11, v7, :cond_4

    .line 394
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v7, 0x2

    new-array v0, v7, [F

    .line 396
    fill-array-data v0, :array_0

    .line 397
    invoke-virtual {v2, v15, v14, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v0, v7, [F

    .line 398
    fill-array-data v0, :array_1

    .line 399
    invoke-virtual {v3, v8, v14, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v19

    move-object/from16 v8, v21

    move-object/from16 v7, v22

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    goto/16 :goto_0

    .line 403
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 404
    iget-object v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v10

    iget-object v5, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {v1, v7, v10, v5}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 405
    iget-object v5, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    iget-object v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {v1, v5, v9, v7}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 406
    iget-object v5, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc2:[I

    const/4 v7, 0x0

    aget v9, v5, v7

    iget-object v10, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->loc1:[I

    aget v20, v10, v7

    sub-int v9, v9, v20

    .line 407
    aget v5, v5, v17

    aget v7, v10, v17

    sub-int/2addr v5, v7

    .line 408
    iput v5, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBackgroundTopYDiff:I

    if-nez v11, :cond_3

    .line 410
    iget v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeightDiff:I

    if-eqz v7, :cond_3

    iget-boolean v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnFirstPage:Z

    if-eqz v7, :cond_3

    .line 414
    invoke-direct {v1, v15}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getEndDelay(Landroid/view/View;)F

    move-result v7

    iput v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopRowEndDelay:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v7, v10, v7

    div-float v7, v7, v23

    .line 415
    iput v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopRowStartDelay:F

    :cond_3
    const/4 v7, 0x2

    new-array v10, v7, [F

    const/16 v16, 0x0

    const/16 v18, 0x0

    aput v16, v10, v18

    int-to-float v7, v9

    aput v7, v10, v17

    .line 420
    invoke-virtual {v2, v0, v6, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    move-object/from16 v26, v2

    const/4 v10, 0x2

    new-array v2, v10, [F

    aput v16, v2, v18

    int-to-float v10, v5

    aput v10, v2, v17

    .line 421
    invoke-virtual {v7, v0, v13, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    const/4 v7, 0x2

    new-array v10, v7, [F

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v10, v18

    aput v16, v10, v17

    .line 422
    invoke-virtual {v2, v15, v6, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    new-array v6, v7, [F

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v6, v18

    aput v16, v6, v17

    .line 423
    invoke-virtual {v2, v15, v13, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    new-array v5, v7, [F

    fill-array-data v5, :array_2

    .line 424
    invoke-virtual {v2, v15, v14, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v2, v7, [F

    .line 426
    fill-array-data v2, :array_3

    .line 427
    invoke-virtual {v3, v8, v14, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 429
    iget-object v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v15}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v12, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    goto/16 :goto_4

    :cond_4
    move-object/from16 v26, v2

    if-gt v7, v11, :cond_7

    .line 434
    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNumQuickTiles:I

    if-ge v11, v2, :cond_7

    if-ge v11, v0, :cond_7

    .line 435
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v0

    if-nez v0, :cond_5

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v19

    move-object/from16 v8, v21

    move-object/from16 v7, v22

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    goto/16 :goto_5

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 440
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 441
    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileColumnCount:I

    if-ne v11, v2, :cond_6

    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeightDiff:I

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnFirstPage:Z

    if-eqz v2, :cond_6

    .line 442
    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondTileYDiff:I

    const/4 v5, 0x0

    invoke-direct {v1, v15, v2, v5}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getStartDelay(Landroid/view/View;IZ)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondRowStartDelay:F

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    .line 445
    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    const/4 v7, 0x2

    new-array v9, v7, [F

    const/4 v10, 0x0

    aput v10, v9, v5

    .line 446
    iget v5, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBackgroundTopYDiff:I

    int-to-float v5, v5

    aput v5, v9, v17

    .line 447
    invoke-virtual {v4, v0, v13, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    new-array v9, v7, [F

    const/16 v16, 0x0

    aput v10, v9, v16

    int-to-float v2, v2

    aput v2, v9, v17

    .line 448
    invoke-virtual {v5, v0, v6, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v2, v7, [F

    .line 450
    fill-array-data v2, :array_4

    move-object/from16 v5, v25

    .line 451
    invoke-virtual {v5, v0, v14, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    iget v6, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopRowStartDelay:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v6, v9, v6

    .line 452
    invoke-virtual {v2, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v2, v7, [F

    .line 454
    iget v6, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondTileYDiff:I

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v9, 0x0

    aput v6, v2, v9

    const/4 v6, 0x0

    aput v6, v2, v17

    move-object/from16 v6, v24

    .line 455
    invoke-virtual {v6, v15, v13, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    new-array v7, v7, [F

    fill-array-data v7, :array_5

    .line 456
    invoke-virtual {v2, v15, v14, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    iget v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondRowStartDelay:F

    .line 457
    invoke-virtual {v2, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 459
    iget-object v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDisappearingQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_7
    move-object/from16 v6, v24

    move-object/from16 v5, v25

    .line 463
    invoke-direct {v1, v11}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isIconInAnimatedRow(I)Z

    move-result v2

    if-eqz v2, :cond_8

    if-ge v11, v0, :cond_8

    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 464
    iget v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondTileYDiff:I

    neg-int v7, v7

    int-to-float v7, v7

    const/4 v9, 0x0

    aput v7, v0, v9

    const/4 v7, 0x0

    aput v7, v0, v17

    move-object/from16 v7, v22

    .line 465
    invoke-virtual {v7, v15, v13, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    new-array v2, v2, [F

    fill-array-data v2, :array_6

    .line 466
    invoke-virtual {v0, v15, v14, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondRowStartDelay:F

    .line 467
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto/16 :goto_4

    :cond_8
    move-object/from16 v7, v22

    .line 473
    :try_start_0
    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNumQuickTiles:I

    if-le v2, v0, :cond_a

    iget v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileColumnCount:I

    if-gt v0, v11, :cond_a

    if-ge v11, v2, :cond_a

    .line 474
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v0

    if-nez v0, :cond_9

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v19

    move-object/from16 v8, v21

    goto/16 :goto_5

    :cond_9
    const/4 v2, 0x2

    new-array v9, v2, [F

    const/4 v2, 0x0

    const/16 v16, 0x0

    aput v2, v9, v16

    .line 479
    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBackgroundTopYDiff:I

    int-to-float v2, v2

    aput v2, v9, v17

    .line 480
    invoke-virtual {v4, v0, v13, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v2, 0x2

    new-array v9, v2, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    aput v2, v9, v18

    const/16 v16, 0x0

    aput v16, v9, v17

    .line 483
    invoke-virtual {v5, v0, v14, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v7

    :try_start_1
    iget v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopRowStartDelay:F

    sub-float v7, v2, v7

    .line 484
    invoke-virtual {v9, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 486
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 487
    iget-object v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDisappearingQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    move-object/from16 v22, v7

    .line 489
    :goto_2
    iget v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileColumnCount:I

    rem-int v0, v11, v0

    if-nez v0, :cond_b

    .line 490
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondRowStartDelay:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v7, v2, v0

    div-float v7, v7, v23

    add-float/2addr v0, v7

    iput v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileTempStartDelay:F

    .line 494
    :cond_b
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 495
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v2, 0x2

    new-array v7, v2, [F

    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileYDiff:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v9, 0x0

    aput v2, v7, v9

    const/4 v2, 0x0

    aput v2, v7, v17

    .line 496
    invoke-virtual {v0, v15, v13, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v2, v7, v9

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v7, v17

    .line 497
    invoke-virtual {v0, v15, v14, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileTempStartDelay:F

    .line 498
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 501
    :cond_c
    iget v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileColumnCount:I

    rem-int v2, v11, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v2, v0, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v11, v0, :cond_e

    .line 502
    :cond_d
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v22, v7

    .line 505
    :goto_3
    invoke-interface {v10}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Exception!!!! :: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v20

    invoke-static {v7, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    :cond_e
    :goto_4
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v7, "view_visible_always"

    invoke-direct {v2, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v12, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v19

    move-object/from16 v8, v21

    move-object/from16 v7, v22

    :goto_5
    move-object/from16 v2, v26

    goto/16 :goto_0

    :cond_f
    move-object/from16 v26, v2

    move-object/from16 v22, v7

    .line 516
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsEditButton:Landroid/view/View;

    const/4 v7, 0x2

    new-array v8, v7, [F

    iget v9, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileYDiff:I

    neg-int v9, v9

    int-to-float v9, v9

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x0

    aput v9, v8, v17

    .line 517
    invoke-virtual {v0, v2, v13, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsEditButton:Landroid/view/View;

    new-array v7, v7, [F

    fill-array-data v7, :array_7

    .line 518
    invoke-virtual {v0, v2, v14, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget v2, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileTempStartDelay:F

    .line 519
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsEditButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 522
    iget-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    iget-object v7, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsEditButton:Landroid/view/View;

    invoke-direct {v2, v12, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 525
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 526
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopSecondRowQuickQsTranslationBuilder:Lcom/android/systemui/qs/TouchAnimator;

    .line 527
    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopSecondRowQuickQsAlphaBuilder:Lcom/android/systemui/qs/TouchAnimator;

    .line 528
    invoke-virtual {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

    .line 529
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public destroyQSViews()V
    .locals 3

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1050
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    .line 1053
    instance-of v2, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v2, :cond_0

    .line 1054
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 1055
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    .line 1056
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    :cond_0
    const-string v0, "QsExpandAnimator"

    const-string v2, "QS Not using page layout"

    .line 1058
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDisappearingQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1068
    iput-object v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1069
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 1070
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1071
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 1072
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsEditButton:Landroid/view/View;

    .line 1073
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 1074
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderClockView:Landroid/view/View;

    .line 1075
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateView:Landroid/view/View;

    .line 1076
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelDateView:Landroid/view/View;

    .line 1077
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicator:Landroid/view/View;

    .line 1078
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    .line 1079
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSearchContainer:Landroid/view/View;

    .line 1080
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    .line 1081
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSettingContainer:Landroid/view/View;

    .line 1082
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMoreContainer:Landroid/view/View;

    return-void
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "QsExpandAnimator ============================================= "

    .line 1131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1133
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 1134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :  alpha = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " translationY = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " visibility = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "============================================================== "

    .line 1137
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected isThereNoView()Z
    .locals 2

    .line 1110
    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isThereNoView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QsExpandAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method public onAnimationAtEnd()V
    .locals 5

    .line 934
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isMediaPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getNumPages()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    .line 941
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 943
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_3

    .line 945
    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 947
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isSettingsPanelExpanding()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 948
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 949
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 952
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setHeaderBrightnessBarVisibility(I)V

    return-void
.end method

.method public onAnimationAtStart()V
    .locals 3

    .line 919
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isMediaPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getNumPages()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 926
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicator:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 929
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setHeaderBrightnessBarVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 5

    .line 957
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isMediaPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    if-eqz v0, :cond_1

    .line 961
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getNumPages()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 964
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 966
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_3

    .line 967
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 969
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 973
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setHeaderBrightnessBarVisibility(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1117
    iget v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1119
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOrientation:I

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1144
    iget p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCurrentPanelHeight:I

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getPanelHeight(Landroid/content/Context;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 1145
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPageChanged(Z)V
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 300
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnFirstPage:Z

    if-eqz p1, :cond_2

    goto :goto_1

    .line 304
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->clearAnimationState()V

    .line 305
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDisappearingQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDisappearingQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 308
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDisappearingQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 309
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDisappearingQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onPanelClosed()V
    .locals 1

    .line 1104
    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onPanelClosed()V

    const/4 v0, 0x0

    .line 1105
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setQsExpansionPosition(F)V

    return-void
.end method

.method public onPanelOpened()V
    .locals 1

    .line 1097
    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onPanelOpened()V

    .line 1098
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 978
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onStateChanged(I)V

    const/4 p1, 0x0

    .line 980
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setHeaderBrightnessBarVisibility(I)V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sysui_qqs_count"

    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p2}, Lcom/android/systemui/qs/QuickQSPanel;->parseNumTiles(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNumQuickTiles:I

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    goto :goto_0

    :cond_0
    const-string p2, "brightness_on_top"

    .line 285
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 286
    const-class p2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mIsBrightnessBarShowingOnTop:Z

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    goto :goto_0

    :cond_2
    const-string p2, "qspanel_media_quickcontrol_bar_available"

    .line 288
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    goto :goto_0

    :cond_3
    const-string p2, "qspanel_media_quickcontrol_bar_available_on_top"

    .line 290
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 266
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v0, "sysui_qqs_count"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    :cond_0
    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 275
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 276
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public setAnimaStateCallback(Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 1

    .line 1087
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setFullyExpanded(Z)V

    .line 1088
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1090
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->checkNumQuickTile()V

    .line 1091
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    .line 1016
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNotificationOverScrolling:Z

    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 1

    if-nez p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->destroyQSViews()V

    return-void

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 213
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    .line 214
    sget v0, Lcom/android/systemui/R$id;->header_clock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderClockView:Landroid/view/View;

    .line 215
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->header_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateView:Landroid/view/View;

    .line 216
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->mum_button_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    .line 217
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->search_button_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSearchContainer:Landroid/view/View;

    .line 218
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->power_button_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    .line 219
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSettingContainer:Landroid/view/View;

    .line 220
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->more_button_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMoreContainer:Landroid/view/View;

    .line 221
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const-string v0, "expand_anim"

    .line 222
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    .line 225
    iget-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    .line 226
    iget-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 227
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 228
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 229
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 230
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    .line 231
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget v0, Lcom/android/systemui/R$id;->qs_panel_date_clock_container:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelDateView:Landroid/view/View;

    .line 232
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget v0, Lcom/android/systemui/R$id;->security_footer_container:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecurityFooterView:Landroid/view/View;

    .line 233
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget v0, Lcom/android/systemui/R$id;->footer_page_indicator:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicator:Landroid/view/View;

    .line 234
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p1}, Lcom/android/systemui/qs/PagedTileLayout;->getQsEditButton()Lcom/android/systemui/qs/QSEditButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsEditButton:Landroid/view/View;

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateBarItems()V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 245
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setQsExpansionPosition(F)V
    .locals 6

    .line 817
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setQsExpansionPosition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QsExpandAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimatorForListener:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 821
    iput p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    .line 823
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 824
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_3

    .line 825
    iget-boolean v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpanded:Z

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    move p1, v5

    goto :goto_1

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_1

    .line 832
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 835
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNotificationOverScrolling:Z

    if-eqz v1, :cond_4

    move p1, v4

    .line 839
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isSettingsPanelExpanding()Z

    move-result v1

    if-eqz v1, :cond_5

    move p1, v5

    goto :goto_2

    .line 841
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    invoke-virtual {v1}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->isDetailVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 845
    :cond_6
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnFirstPage:Z

    if-eqz v1, :cond_7

    .line 846
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 847
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 848
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 849
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopSecondRowQuickQsTranslationBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 850
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopSecondRowQuickQsAlphaBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 851
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 852
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_3

    .line 854
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 857
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/TouchAnimator;

    .line 858
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_4

    .line 860
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsEditButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 861
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 863
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderBrightnessYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_a

    .line 864
    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpandImmediate:Z

    if-eqz v2, :cond_9

    move v2, v5

    goto :goto_5

    :cond_9
    move v2, p1

    :goto_5
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 867
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderBrightnessAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_c

    .line 868
    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpandImmediate:Z

    if-eqz v2, :cond_b

    move v2, p1

    goto :goto_6

    :cond_b
    move v2, v5

    :goto_6
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 871
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderMediaDeviceAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderMediaDeviceYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_f

    .line 872
    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpandImmediate:Z

    if-eqz v2, :cond_d

    move v2, v5

    goto :goto_7

    :cond_d
    move v2, p1

    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 873
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderMediaDeviceAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpandImmediate:Z

    if-eqz v2, :cond_e

    move v2, v5

    goto :goto_8

    :cond_e
    move v2, p1

    :goto_8
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 876
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaContainerTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v2, :cond_12

    .line 877
    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpandImmediate:Z

    if-eqz v2, :cond_10

    move v2, v5

    goto :goto_9

    :cond_10
    move v2, p1

    :goto_9
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 878
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaContainerTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQsExpandImmediate:Z

    if-eqz v2, :cond_11

    move v2, v5

    goto :goto_a

    :cond_11
    move v2, p1

    :goto_a
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 881
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelBrightnessAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelBrightnessYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v2, :cond_13

    .line 882
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 883
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelBrightnessYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 886
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaDeviceAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaDeviceTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v2, :cond_14

    .line 887
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 888
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMediaDeviceTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 891
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v2, :cond_15

    .line 892
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 893
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 896
    :cond_15
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicatorAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 897
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPagedIndicatorYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 898
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 899
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 900
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSearchButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 901
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 902
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMoreButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 903
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_16

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-nez v2, :cond_16

    move v2, v4

    goto :goto_b

    :cond_16
    move v2, p1

    :goto_b
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 904
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-nez v0, :cond_17

    goto :goto_c

    :cond_17
    move v4, p1

    :goto_c
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 906
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mIsBrightnessBarShowingOnTop:Z

    if-eqz v0, :cond_19

    cmpl-float p1, p1, v5

    const/4 v0, 0x4

    if-nez p1, :cond_18

    .line 908
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 909
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCollapsedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 911
    :cond_18
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 912
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mCollapsedBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_d
    return-void
.end method

.method public updateAnimators()V
    .locals 2

    const-string v0, "QsExpandAnimator"

    const-string/jumbo v1, "updateAnimators"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->clearAnimationState()V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDisappearingQuickQsTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 330
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 331
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimatorForListener:Lcom/android/systemui/qs/TouchAnimator;

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimaResources()V

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateTileAnimator()V

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateHeaderAnimator()V

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updatePanelAnimator()V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateBarAnimator()V

    .line 339
    iget v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setQsExpansionPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method
