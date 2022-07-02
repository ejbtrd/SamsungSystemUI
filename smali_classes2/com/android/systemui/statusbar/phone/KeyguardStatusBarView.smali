.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
.implements Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;
.implements Lcom/android/systemui/statusbar/phone/IndicatorGarden;
.implements Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;
.implements Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;


# instance fields
.field private final USER_SWITCHER_SETTINGS_VALUE:[Landroid/net/Uri;

.field private m5GEffectAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAccess5GText:Landroid/widget/TextView;

.field private mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field private mBatteryCharging:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryView:Lcom/android/systemui/BatteryMeterView;

.field protected mBlockVisibleByKnox:Z

.field private mBlockedIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

.field private mCarrierInformationContainer:Landroid/view/ViewGroup;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

.field private final mClipRect:Landroid/graphics/Rect;

.field private mCurrentLayoutDirection:I

.field private mCutoutSideNudge:I

.field private mCutoutSpace:Landroid/view/View;

.field private final mEmptyRect:Landroid/graphics/Rect;

.field private mEssentialLeftWidth:I

.field private mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field private mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

.field private final mIs5GArea:[Ljava/lang/Boolean;

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

.field private mKeyguardUserSwitcherEnabled:Z

.field private mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private mLayoutState:I

.field private mLeftContainerMaxWidth:I

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private mPadding:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mRoundedCornerPadding:I

.field private mSecIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSmallestScreenWidthDp:I

.field private mStatusBarIconContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

.field private mStatusIconArea:Landroid/view/ViewGroup;

.field private mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private mSystemIconsArea:Landroid/view/ViewGroup;

.field private mSystemIconsBaseMargin:I

.field private mSystemIconsContainer:Landroid/view/View;

.field private mSystemIconsSwitcherHiddenExpandedMargin:I

.field private mTopClipping:I

.field protected mTwoPhoneModeIcon:Landroid/widget/ImageView;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mWhiteSolutionHelper:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;


# direct methods
.method public static synthetic $r8$lambda$39L9F1uQQgcE1EAjKJyQsRxgxbE(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->lambda$updateVisibilities$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8BBMX4ohwvHe49rkMxTXlrmLT_c(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->lambda$onApplyWindowInsets$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Hoqs8Oomiiu7qbTBjvb7NK6jPM4()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->lambda$onAttachedToWindow$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$S9UmYEq3uXm-QQdOEaB4EMsRoRM(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->lambda$new$3(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 217
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 112
    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockedIcons:Ljava/util/List;

    .line 137
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 145
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    .line 148
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mRoundedCornerPadding:I

    .line 150
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/util/Pair;

    .line 156
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    .line 168
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockVisibleByKnox:Z

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const-string/jumbo v0, "user_switcher_enabled"

    .line 174
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, p1, p2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->USER_SWITCHER_SETTINGS_VALUE:[Landroid/net/Uri;

    .line 175
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLeftContainerMaxWidth:I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Boolean;

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIs5GArea:[Ljava/lang/Boolean;

    .line 202
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    const/4 p1, -0x1

    .line 290
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCurrentLayoutDirection:I

    .line 389
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSmallestScreenWidthDp:I

    .line 944
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitchSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 949
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;

    .line 950
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "KeyguardStatusBarView"

    invoke-direct {p2, p0, v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    .line 1030
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEssentialLeftWidth:I

    .line 1091
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarIconContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    .line 218
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserManager:Landroid/os/UserManager;

    .line 221
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    .line 223
    new-instance p1, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWhiteSolutionHelper:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)[Ljava/lang/Boolean;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIs5GArea:[Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->start5GEffectAnimation()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLeftContainerMaxWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/ViewGroup;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAccess5GText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/TextView;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .locals 0

    .line 862
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 863
    instance-of p1, p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    if-eqz p1, :cond_0

    .line 864
    check-cast p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {p0, p2, p3, p4}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/net/Uri;)V
    .locals 0

    .line 946
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    return-void
.end method

.method private synthetic lambda$onApplyWindowInsets$1()V
    .locals 1

    .line 507
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method private static synthetic lambda$onAttachedToWindow$2()V
    .locals 2

    .line 654
    const-class v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->onUpdateStatusBarIcons()V

    .line 655
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKnoxMediator;->onUpdateStatusBarHidden()V

    return-void
.end method

.method private synthetic lambda$updateVisibilities$0()Ljava/lang/Boolean;
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$bool;->qs_show_user_switcher_for_single_user:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 467
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private loadBlockList()V
    .locals 3

    .line 429
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockedIcons:Ljava/util/List;

    const v2, 0x1040d1e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockedIcons:Ljava/util/List;

    const v2, 0x1040ceb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockedIcons:Ljava/util/List;

    const v1, 0x1040cf1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private loadDimens()V
    .locals 3

    .line 408
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 409
    sget v1, Lcom/android/systemui/R$dimen;->system_icons_switcher_hidden_expanded_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 411
    sget v1, Lcom/android/systemui/R$dimen;->system_icons_super_container_avatarless_margin_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsBaseMargin:I

    .line 413
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->display_cutout_margin_consumption:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    .line 419
    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mRoundedCornerPadding:I

    const/4 v0, -0x1

    .line 422
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEssentialLeftWidth:I

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getEssentialLeftWidth()I

    return-void
.end method

.method private start5GEffectAnimation()V
    .locals 9

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->m5GEffectAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1207
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x12c

    .line 1208
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1210
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAccess5GText:Landroid/widget/TextView;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1211
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1212
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1214
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAccess5GText:Landroid/widget/TextView;

    new-array v7, v1, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1215
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1216
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0xfa0

    .line 1217
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1219
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    new-array v8, v1, [F

    fill-array-data v8, :array_3

    invoke-static {v7, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1220
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1221
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1223
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->m5GEffectAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v2, v5, v0

    aput-object v6, v5, v1

    const/4 v0, 0x3

    aput-object v3, v5, v0

    .line 1224
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->m5GEffectAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->m5GEffectAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->m5GEffectAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1244
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->m5GEffectAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateClipping()V
    .locals 5

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 0

    return-void
.end method

.method private updateVisibilities()V
    .locals 3

    .line 436
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_MUM_LOCKSCREEN_BUTTON:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 439
    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isUsersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 440
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 447
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    if-eq v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-nez v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 454
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 456
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 457
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v0, :cond_5

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 462
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-nez v0, :cond_7

    .line 467
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 470
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_MUM_LOCKSCREEN_BUTTON:Z

    if-eqz v0, :cond_6

    .line 472
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 474
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public animate5GEffectAnimation(Z)V
    .locals 1

    .line 1249
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardShowing:Z

    if-eqz p1, :cond_1

    .line 1251
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIs5GArea:[Ljava/lang/Boolean;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIs5GArea:[Ljava/lang/Boolean;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1252
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->start5GEffectAnimation()V

    goto :goto_0

    .line 1255
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->m5GEffectAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1256
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->m5GEffectAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "KeyguardStatusBarView:"

    .line 1076
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLayoutState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mKeyguardUserSwitcherEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1086
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE_FOLDABLE_SIDELING_CUTOUT:Z

    if-eqz p1, :cond_1

    .line 1087
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->dump(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public getCarrierInformationContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierInformationContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 883
    sget v0, Lcom/android/systemui/R$id;->keyguard_network_information_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierInformationContainer:Landroid/view/ViewGroup;

    .line 885
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierInformationContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getCarrierInformationContext()Landroid/content/Context;
    .locals 0

    .line 891
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEssentialLeftWidth()I
    .locals 2

    .line 1034
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEssentialLeftWidth:I

    if-gez v0, :cond_0

    .line 1035
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEssentialLeftWidth:I

    .line 1037
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEssentialLeftWidth:I

    return p0
.end method

.method public getEssentialRightWidth()I
    .locals 4

    .line 1043
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    .line 1045
    :goto_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1046
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsArea:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 1047
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1048
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1052
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1053
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1054
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    :cond_2
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public getGardenWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    .line 988
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public getHeightContainer()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    .line 998
    sget v0, Lcom/android/systemui/R$id;->keyguard_left_side_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 1000
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public getNeedToBeGoneContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 897
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getCarrierInformationContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    check-cast p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public getSidePaddingContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1019
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_bar_area:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

    .line 1021
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTwoPhoneIconContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTwoPhoneIconImageView()Landroid/widget/ImageView;
    .locals 0

    .line 1200
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardUserSwitcherShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    const/4 v0, 0x0

    .line 505
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    .line 507
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 511
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 619
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 620
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 621
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 622
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V

    .line 623
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_MUM_LOCKSCREEN_BUTTON:Z

    if-eqz v0, :cond_0

    .line 624
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitchSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->USER_SWITCHER_SETTINGS_VALUE:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 626
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 629
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarIconContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->registerIconManager(Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;)Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSecIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 630
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->initIndicatorGarden(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWhiteSolutionHelper:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->onAttachedToWindow()V

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    .line 643
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    .line 645
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onAttachedToWindow()V

    .line 648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardStatusBarView"

    const-string/jumbo v1, "updateTwoPhoneIcons"

    .line 649
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-class v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateTwoPhoneIcons()V

    .line 653
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStatusBarCallback(Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_5G_ACCESS_TEXT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, -0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 663
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 705
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    if-eq p1, p3, :cond_0

    .line 706
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    .line 707
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 317
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 319
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 320
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->multi_user_avatar_keyguard_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 322
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 326
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$dimen;->system_icons_super_container_margin_start:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 332
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 334
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 335
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->system_icons_keyguard_padding_end:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 336
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 333
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 346
    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenConfigurationChanged(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Landroid/content/res/Configuration;)V

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 368
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 369
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSmallestScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, p1, :cond_3

    .line 370
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSmallestScreenWidthDp:I

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateScale()V

    .line 374
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_5G_ACCESS_TEXT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, -0x1

    new-array v2, v3, [Ljava/lang/Object;

    .line 375
    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateAccess5GTextSize()V

    :cond_4
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 802
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 670
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 671
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 673
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarIconContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;

    .line 674
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory$StatusBarIconContainer;->getTicket()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->removeIndicatorIconManager(I)V

    .line 678
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->removeCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V

    .line 680
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_MUM_LOCKSCREEN_BUTTON:Z

    if-eqz v0, :cond_0

    .line 681
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitchSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWhiteSolutionHelper:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->onDetachedFromWindow()V

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onDetachedFromWindow()V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_5G_ACCESS_TEXT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, -0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 693
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 228
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 229
    sget v0, Lcom/android/systemui/R$id;->system_icons_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 230
    sget v0, Lcom/android/systemui/R$id;->multi_user_avatar:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 231
    sget v0, Lcom/android/systemui/R$id;->keyguard_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setParentViewTag(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_1

    const-string v2, "KeyguardStatusBarView"

    .line 237
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 239
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->cutout_space_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 240
    sget v0, Lcom/android/systemui/R$id;->status_icon_area:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 241
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 242
    sget-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v2, :cond_2

    .line 243
    sget v3, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->LOCK_INDICATOR:I

    invoke-virtual {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setIndicatorType(Landroid/view/ViewGroup;I)V

    .line 245
    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 246
    sget v0, Lcom/android/systemui/R$id;->system_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsArea:Landroid/view/ViewGroup;

    .line 247
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$layout;->samsung_status_bar_network_speed_view:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v2, :cond_3

    .line 249
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setInStatusBar(Z)V

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsArea:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 254
    :cond_4
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_bar_area:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadBlockList()V

    .line 259
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 260
    const-class v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 261
    const-class v0, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/FeatureFlags;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 263
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 266
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 269
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_MUM_LOCKSCREEN_BUTTON:Z

    if-eqz v0, :cond_5

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 274
    const-class v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->inflateIcon(Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    .line 277
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_5G_ACCESS_TEXT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v4, -0x1

    new-array v5, v3, [Ljava/lang/Object;

    .line 278
    invoke-interface {v0, v2, v4, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 279
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 280
    sget v0, Lcom/android/systemui/R$id;->viewstub_access_to_5g_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_7

    .line 282
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 283
    sget v0, Lcom/android/systemui/R$id;->access_to_5g_text_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAccess5GText:Landroid/widget/TextView;

    .line 285
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIs5GArea:[Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, p0, v3

    .line 286
    aput-object v0, p0, v1

    :cond_8
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1145
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateClipping()V

    .line 1147
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1148
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    :cond_0
    return-void
.end method

.method public onLocaleListChanged()V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_5G_ACCESS_TEXT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, -0x1

    .line 308
    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAccess5GText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 310
    sget v0, Lcom/android/systemui/R$string;->carrier_text_access_to_5g:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 808
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 296
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 297
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCurrentLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 298
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCurrentLayoutDirection:I

    .line 299
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSecIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->forceUpdateState()V

    :cond_0
    return-void
.end method

.method public onSystemChromeAnimationEnd()V
    .locals 2

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getAnimationState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1134
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onSystemChromeAnimationStart()V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getAnimationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onSystemChromeAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1140
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setColorsFromContext(Landroid/content/Context;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors()V

    .line 796
    const-class p0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 797
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onVisibilityUpdated(II)V
    .locals 2

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVisibilityUpdated() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardStatusBarView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    if-eq p2, v0, :cond_1

    .line 1184
    sget p1, Lcom/android/systemui/R$id;->keyguard_left_side_container:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1185
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 1186
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 1063
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1064
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1065
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 1066
    invoke-virtual {p0}, Landroid/widget/ImageView;->bringToFront()V

    :cond_0
    return-void
.end method

.method public setKeyguardUserSwitcherEnabled(Z)V
    .locals 0

    .line 717
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public setRestrictedVisibleByKnox(Z)V
    .locals 1

    .line 902
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockVisibleByKnox:Z

    if-eq v0, p1, :cond_0

    .line 903
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockVisibleByKnox:Z

    :cond_0
    return-void
.end method

.method public setTopClipping(I)V
    .locals 1

    .line 1156
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    if-eq p1, v0, :cond_0

    .line 1157
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    .line 1158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateClipping()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 768
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockVisibleByKnox:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 772
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 777
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 778
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 779
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 780
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 782
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 783
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    :goto_1
    return-void
.end method

.method protected updateAccess5GTextSize()V
    .locals 2

    .line 383
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    .line 384
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAccess5GText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 385
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getFontSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V
    .locals 0

    .line 982
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    return-void
.end method

.method public updateIconsAndTextColors()V
    .locals 6

    .line 819
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 821
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 822
    invoke-static {v0}, Landroid/graphics/Color;->luminance(I)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    sget v0, Lcom/android/systemui/R$color;->dark_mode_icon_color_single_tone:I

    goto :goto_0

    .line 823
    :cond_0
    sget v0, Lcom/android/systemui/R$color;->light_mode_icon_color_single_tone:I

    .line 821
    :goto_0
    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWhiteSolutionHelper:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->getFontColor()I

    move-result v0

    .line 827
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWhiteSolutionHelper:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->getFontIntensity()F

    move-result v1

    .line 828
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mWhiteSolutionHelper:Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/SamsungKeyguardStatusBarWhiteWallpaperSolutionHelper;->checkAndPrintModel()V

    .line 830
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v1, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 833
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 834
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v3, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->SUPPORT_5G_ACCESS_TEXT:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v4, -0x1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 835
    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mAccess5GText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 837
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 840
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSecIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    if-eqz v2, :cond_4

    .line 841
    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v3, :cond_3

    .line 842
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    goto :goto_1

    .line 843
    :cond_3
    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/DoubleIconManager;

    if-eqz v3, :cond_5

    .line 844
    check-cast v2, Lcom/android/systemui/statusbar/phone/DoubleIconManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/DoubleIconManager;->setTint(I)V

    goto :goto_1

    .line 846
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v2, :cond_5

    .line 847
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 850
    :cond_5
    :goto_1
    sget v2, Lcom/android/systemui/R$id;->battery:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 851
    sget v2, Lcom/android/systemui/R$id;->clock:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 852
    sget-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v2, :cond_6

    .line 853
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 856
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 857
    const-class p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateKeyguardIconColor(I)V

    :cond_7
    return-void
.end method

.method public updateScale()V
    .locals 0

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onDensityOrFontScaleChanged()V

    return-void
.end method
